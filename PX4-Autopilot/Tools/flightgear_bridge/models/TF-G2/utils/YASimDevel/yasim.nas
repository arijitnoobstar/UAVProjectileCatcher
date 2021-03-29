# yasim.nas --- FDM development helpers
# Copyright (C) 2018  Henning Stahlke
#
# This file is part of FlightGear.
#
# FlightGear is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# FlightGear is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with FlightGear.  If not, see <http://www.gnu.org/licenses/>.
#
# Author:   Henning Stahlke
# Created:  08.01.2017
#
#--------------------------------------------------------------------------
# Note: this initial version is not meant for, nor tested with helicopters.
#--------------------------------------------------------------------------
var VIEW_TOP = 0;
var VIEW_RIGHT = 1;
var VIEW_FRONT = 2;

var getValueOrZero = func(node) {
    if (node != nil)
        return node.getValue() or 0;
}

var yasim = {};

#-- class template --
var YasimCanvas = {
    #FIXME: canvas window transparency should be handled via (not yet existing) API
    styleColorsN : props.globals.getNode("/sim/gui/canvas/style/colors/", 1),
    colorsSetAlpha : ["title", "title-unfocused"],
    yasimN: props.globals.getNode("/fdm/yasim/", 1),

    #list of all instances created by new()
    instances: [],  
    #destructor to remove all instances, to be called before FG reset or addon reload
    del: func() {
        foreach (var i; YasimCanvas.instances) {
            i.cleanup();
        }
        YasimCanvas.instances = [];
    },
       
    new: func() {
        #-- add all per-incstance variables into obj --
        var obj = { parents: [YasimCanvas],
            listeners: [],
            cleanup: func() {
                if (me.timer != nil and me.timer.stop != nil)
                    me.timer.stop();
                foreach(var id; obj.listeners) {
                    print("YasimCanvas remove listener "~id);
                    removelistener(id);
                }
                me.listeners = [];
                if (me.myCanvas != nil and me.myCanvas.del != nil)
                    me.myCanvas.del();
                # if (me.myWindow != nil and me.myWindow.del != nil)
                    # me.myWindow.del();
            },

            dataN: nil,
            canvasConfig : {
                "name": "YASim development",
                "size": [1024, 1024],   # Size of the underlying texture (should be a power of 2, required) [Resolution]
                "view": [1024, 1024],   # Virtual resolution (Defines the coordinate system of the canvas [Dimensions]
                                        # which will be stretched the size of the texture, required)
                "mipmapping": 1         # Enable mipmapping (optional)                
            },
            STROKE_WIDTH: 1,
            dataPlane: {
                sizeX: 0,
                sizeY: 0,
                scale: 1,
            },
            timer: nil,
            myWindow: nil,
            myCanvas: nil,
            myLayout: nil,
            myRoot: nil,
            scaleX: func(x) { return x; },
            scaleY: func(y) { return y; },
            cx: func(x) { return x;},
            cy: func(y) { return y; },
            #update: func(),
            middleClick: func(),
            CGmarker: nil,
            view: VIEW_TOP,
            options: {
                showChords: nil,
                showLabels: nil,
                labelSrc: nil,
            }
        };
        obj.options.showChords = me.yasimN.getNode("nasal/show-chords",1);    
        obj.options.showLabels = me.yasimN.getNode("nasal/show-labels",1);
        obj.options.labelSrc = me.yasimN.getNode("nasal/txt-node-name",1);
        obj.options.showChords.setBoolValue(1);
        obj.options.showLabels.setBoolValue(1);
        obj.options.labelSrc.setValue("f-abs");
        append(YasimCanvas.instances, obj);
        return obj;
    },    
   
    setDataSource: func(relativPath, childrenName) {
        me.dataN = me.yasimN.getNode(relativPath).getChildren(childrenName);
    },    
    
    configureXYSize: func(nodeNameX, nodeNameY)
    {
        var (x_min, x_max, y_min, y_max) = (0,0,0,0);
        foreach (var n; me.dataN)
        {
            var x = getValueOrZero(n.getNode(nodeNameX,1));
            var y = getValueOrZero(n.getNode(nodeNameY,1));
            if (x < x_min) x_min = x;
            if (x > x_max) x_max = x;
            if (y < y_min) y_min = y;
            if (y > y_max) y_max = y;
        }
        me.dataPlane.sizeX = x_max - x_min;
        me.dataPlane.sizeY = y_max - y_min;
        # calculate scaling factor from the larger axis, s = canvas_size / d
        var sx = me.canvasConfig.size[0] / me.dataPlane.sizeX;
        var sy = me.canvasConfig.size[1] / me.dataPlane.sizeY;
        me.canvasConfig.size[1] *= me.dataPlane.sizeY / me.dataPlane.sizeX / 0.95;
        me.canvasConfig.view[1] *= me.dataPlane.sizeY / me.dataPlane.sizeX / 0.95;
        me.dataPlane.scale = 0.97 * (sx < sy) ? sx : sy;
        me.scaleX = func(x) { return x * me.dataPlane.scale; }
        me.scaleY = func(y) { return y * me.dataPlane.scale; }
        # canvas coordinates: +x = right, +y = down, 0 = top-left
        # normal plot +x right, +y up
        me.cx = func(c) { return (c - x_min) * me.dataPlane.scale; }
        me.cy = func(c) { return (y_max - c) * me.dataPlane.scale; }
    },

    setupWindow: func(title)
    {
        if (me.view == VIEW_TOP) {
            me.configureXYSize("pos-x", "pos-y");
            viewName = "TOP";
        }
        if (me.view == VIEW_RIGHT) {
            me.configureXYSize("pos-x", "pos-z");
            viewName = "RIGHT";
        }
        if (me.view == VIEW_FRONT) {
            me.configureXYSize("pos-y", "pos-z");
            viewName = "FRONT";
        }
        var axis_color = [0.3, 0.3, 0.3, 0.5];
        var zoomFactor = 1.25;
        
        #-- myCanvas for drawing YASim stuff
        me.myCanvas = canvas.new(me.canvasConfig).setColorBackground(0, 0, 0, 0.5);
        me.myRoot = me.myCanvas.createGroup();        
        me.myRoot.setCenter(me.canvasConfig.size[0]/2, me.canvasConfig.size[1]/2);

        #-- window canvas to hold GUI + my canvas
        me.myWindow = canvas.Window.new(me.canvasConfig.size, "dialog")
            .setTitle(title~" - view from "~viewName~ " - click L/R for zoom, middle for perspective")
            .set("resize", 1)
            .setPosition(10,25);
        me.myWindow.setCanvas(me.myCanvas);
        #-- experimental, unused
        var myGui = func() {
            var wcanvas = me.myWindow.createCanvas().setColorBackground(0, 0, 0, 0.6);
            var root = wcanvas.createGroup();
            var layout = canvas.VBoxLayout.new();
            wcanvas.setLayout(layout);
            var checkboxBar = canvas.HBoxLayout.new();
            layout.addItem(checkboxBar);
            var label = canvas.gui.widgets.Label.new(root, canvas.style, {wordWrap: 0});
            #label.setText("Yasim")
            label.setSize(me.canvasConfig.size[0], me.canvasConfig.size[1]-30);
            label.setImage(me.myCanvas.getPath());
            layout.addItem(label);
            
            var checkBoxes = [
                {name: "Labels", prop: me.options.showLabels.getPath() },
                {name: "Chords", prop: me.options.showChords.getPath() },
                {name: "Foo", prop: "/devel/foo" },
            ];

            foreach(var c; checkBoxes) {
                var makeL = func(p) { return func(e){
                            print(p~" "~e.detail.checked);
                            setprop(p, e.detail.checked);
                        };
                    }
                checkboxBar.addItem(
                    canvas.gui.widgets.CheckBox.new(root, canvas.style, {})
                    .setText(c.name)
                    .setFixedSize(120, 25)
                    .setChecked(getprop(c.prop))
                    .listen("toggled", makeL(c.prop))
                );
            } # foreach 
        }
        
        #-- axis cross
        me.myRoot.createChild("path").setColor(axis_color)
            .setStrokeLineWidth(me.STROKE_WIDTH)
            .moveTo(0, me.canvasConfig.size[1]/2)
            .lineTo(me.canvasConfig.size[0], me.canvasConfig.size[1]/2);
        me.myRoot.createChild("path").setColor(axis_color)
            .setStrokeLineWidth(me.STROKE_WIDTH)
            .moveTo(me.cx(0), 0)
            .lineTo(me.cx(0), me.canvasConfig.size[1]);

        var zoom = func(factor){
            var view = [me.myCanvas.get("view"), me.myCanvas.get("view[1]")];
            view[0] = view[0] * factor;
            view[1] = view[1] * factor;
            if (view[0] < 64) view[0] = 64;
            if (view[1] < 64) view[1] = 64;
            me.myCanvas.set("view", view[0]);
            me.myCanvas.set("view[1]", view[1]);
        };        
        var dragHandler = func(e){
            var t = me.myRoot.getTranslation();
            me.myRoot.setTranslation(t[0] + e.deltaX, t[1] + e.deltaY);
        };
        var clickHandler = func(e){
            var view = [me.myCanvas.get("view"), me.myCanvas.get("view[1]")];
            if (e.button == 0) { zoom(1/zoomFactor); }
            if (e.button == 1) { me.middleClick(); }
            if (e.button == 2) { zoom(zoomFactor); }
        };
        var kbdHandler = func(e){
            if (e.key == "Escape") me.myWindow.del();
            if (e.key == "+") zoom(1/zoomFactor);
            if (e.key == "-") zoom(zoomFactor);
        };
        me.myCanvas.addEventListener("drag", dragHandler);
        me.myCanvas.addEventListener("click", clickHandler);
        me.myCanvas.addEventListener("keyup", kbdHandler);
    },  

    drawWing: func(wingN)
    {
        var colorWingCtrLine = [0.1, 0.1, 1, 0.8];
        var colorWingOutLine = [0.9, 0.9, 0.9, 0.9];
        var colorSectMAC = [1, 1, 0, 0.8];
        var colorWingMAC = [1, 0, 1, 0.8];
        var STROKE_WIDTH = me.STROKE_WIDTH;
        var name = wingN.getName()~wingN.getIndex();
        var base_x = wingN.getNode("base-x",1).getValue();
        var base_y = wingN.getNode("base-y",1).getValue();
        var base_z = wingN.getNode("base-z",1).getValue();
        var tip_x = wingN.getNode("tip-x",1).getValue();
        var tip_y = wingN.getNode("tip-y",1).getValue();
        var tip_z = wingN.getNode("tip-z",1).getValue();
        var chord = getValueOrZero(wingN.getNode("root-chord",1));
        var taper = getValueOrZero(wingN.getNode("taper",1));

        if (me.view == VIEW_TOP and (tip_y - base_y) < 0.1) return;
        if (me.view == VIEW_RIGHT and (tip_z - base_z) < 0.1) return;
        if (me.view == VIEW_FRONT and (tip_y - base_y) < 0.1) return;
        
        var drawSection = func(base_x, base_y, base_z, chord, tip_x, tip_y, tip_z, tip)
        {
            var label_x = 0;
            var label_y = 0;
            if (me.view == VIEW_TOP) {
                label_x = (base_x + tip_x)/2;
                label_y = (base_y + tip_y)/2;
                me.myRoot.createChild("path").setColor(colorWingCtrLine)
                    .setStrokeLineWidth(STROKE_WIDTH)
                    .moveTo(me.cx(base_x), me.cy(base_y))
                    .lineTo(me.cx(tip_x), me.cy(tip_y));
                me.myRoot.createChild("path").setColor(colorWingCtrLine)
                    .setStrokeLineWidth(STROKE_WIDTH)
                    .moveTo(me.cx(base_x), me.cy(-base_y))
                    .lineTo(me.cx(tip_x), me.cy(-tip_y));
                me.myRoot.createChild("path").setColor(colorWingOutLine)
                    .setStrokeLineWidth(STROKE_WIDTH)
                    .moveTo(me.cx(base_x - chord/2), me.cy(base_y))
                    .lineTo(me.cx(base_x + chord/2), me.cy(base_y))
                    .lineTo(me.cx(tip_x + tip/2), me.cy(tip_y))
                    .lineTo(me.cx(tip_x - tip/2), me.cy(tip_y))
                    .lineTo(me.cx(base_x - chord/2), me.cy(base_y));
                me.myRoot.createChild("path").setColor(colorWingOutLine)
                    .setStrokeLineWidth(STROKE_WIDTH)
                    .moveTo(me.cx(base_x - chord/2), me.cy(-base_y))
                    .lineTo(me.cx(base_x + chord/2), me.cy(-base_y))
                    .lineTo(me.cx(tip_x + tip/2), me.cy(-tip_y))
                    .lineTo(me.cx(tip_x - tip/2), me.cy(-tip_y))
                    .lineTo(me.cx(base_x - chord/2), me.cy(-base_y));
            }
            if (me.view == VIEW_RIGHT) {
                label_x = (base_x + tip_x)/2;
                label_y = (base_z + tip_z)/2;
                me.myRoot.createChild("path").setColor(colorWingOutLine)
                    .setStrokeLineWidth(STROKE_WIDTH)
                    .moveTo(me.cx(base_x - chord/2), me.cy(base_z))
                    .lineTo(me.cx(base_x + chord/2), me.cy(base_z))
                    .lineTo(me.cx(tip_x + tip/2), me.cy(tip_z))
                    .lineTo(me.cx(tip_x - tip/2), me.cy(tip_z))
                    .lineTo(me.cx(base_x - chord/2), me.cy(base_z));
            }
            if (me.view == VIEW_FRONT) {
                label_x = (base_y + tip_y)/2;
                label_y = (base_z + tip_z)/2;
                me.myRoot.createChild("path").setColor(colorWingCtrLine)
                    .setStrokeLineWidth(STROKE_WIDTH)
            .moveTo(me.cx(base_y), me.cy(base_z))
                    .lineTo(me.cx(tip_y), me.cy(tip_z));
                me.myRoot.createChild("path").setColor(colorWingCtrLine)
                    .setStrokeLineWidth(STROKE_WIDTH)
                    .moveTo(me.cx(-base_y), me.cy(base_z))
                    .lineTo(me.cx(-tip_y), me.cy(tip_z));
            }
            me.myRoot.createChild("text").setColor(0,1,0,1)
                .setFontSize(12)
                .setText(name)
                .setTranslation(me.cx(label_x), me.cy(label_y));
        } #drawSection
        
        var drawMAC = func(node, color) {
            var mx = node.getNode("mac-x",1).getValue();
            var my = node.getNode("mac-y",1).getValue();
            var mz = node.getNode("mac-z",1).getValue();
            var ml = node.getNode("mac",1).getValue();
            if (me.view == VIEW_RIGHT) { my = mz; }
            if (me.view == VIEW_FRONT) { mx = my; my = mz;  }
            if (my and ml)
            {
                mx = me.cx(mx);
                my = me.cy(my);
                ml = (me.view != VIEW_FRONT) ? ml * me.dataPlane.scale : 2;
                me.myRoot.createChild("path").setColor(color)
                  .setStrokeLineWidth(STROKE_WIDTH*2)
                  .moveTo(mx, my)
                  .lineTo(mx-ml, my);
            }            
        } # drawMAC
        
        var sections = wingN.getChildren("section");
                var tip = taper*chord;
        for (var i = size(sections)-1; i >= 0; i = i-1)
        {
            base_x = sections[i].getNode("base-x").getValue();
            base_y = sections[i].getNode("base-y").getValue();
            base_z = sections[i].getNode("base-z").getValue();
            chord = sections[i].getNode("chord").getValue();
            drawSection(base_x, base_y, base_z, chord, tip_x, tip_y, tip_z, tip);
            tip_x = base_x;
            tip_y = base_y;
            tip_z = base_z;
            tip = chord;
            drawMAC(sections[i], colorSectMAC);
        }
        drawMAC(wingN, colorWingMAC);
    }, # drawWing

    drawAirplane: func()
    {
        var colorCGHardlimit = [1.0, 0.2, 0.2, 1];
        var colorCGDesired   = [1.0, 1.0, 0.2, 1];
        var wings = me.yasimN.getNode("model/wings").getChildren();
        var CGmakerSize = 0.5;
        me.CGmarker = me.myRoot.createChild("path").setColor([1,1,1,1])
            .setStrokeLineWidth(me.STROKE_WIDTH)
            .moveTo(me.cx(0), me.cy(0))
            .lineTo(me.cx(CGmakerSize),me.cy(0))
            .lineTo(me.cx(0),me.cy(CGmakerSize))
            .lineTo(me.cx(-CGmakerSize),me.cy(0))
            .lineTo(me.cx(0),me.cy(-CGmakerSize))
            .lineTo(me.cx(CGmakerSize),me.cy(0));
        foreach (var w; wings)
        {
            me.drawWing(w);
        }
        #-- cg desired limits
        if (me.view == VIEW_TOP or me.view == VIEW_RIGHT) {
            var n = me.yasimN.getNode("model/cg-x-range-aft",1);
            var xaft = n.getValue() or n.setValue(0);
            n = me.yasimN.getNode("model/cg-x-range-front",1);
            var xfront = n.getValue() or n.setValue(0);
            n = me.yasimN.getNode("model/cg-x-max",1);
            var xmax = n.getValue() or n.setValue(0);
            n = me.yasimN.getNode("model/cg-x-min",1);
            var xmin = n.getValue() or n.setValue(0);
            me.myRoot.createChild("path").setColor(colorCGHardlimit)
                .setStrokeLineWidth(me.STROKE_WIDTH)
                .moveTo(me.cx(xmax), me.cy(CGmakerSize))
                .lineTo(me.cx(xmax), me.cy(-CGmakerSize))
                .moveTo(me.cx(xmin), me.cy(CGmakerSize))
                .lineTo(me.cx(xmin), me.cy(-CGmakerSize));
            me.myRoot.createChild("path").setColor(colorCGDesired)
                .setStrokeLineWidth(me.STROKE_WIDTH)
                .moveTo(me.cx(xaft), me.cy(CGmakerSize))
                .lineTo(me.cx(xaft), me.cy(-CGmakerSize))
                .moveTo(me.cx(xfront), me.cy(CGmakerSize))
                .lineTo(me.cx(xfront), me.cy(-CGmakerSize));
        }
    },
    
    updateCGMarker: func() {
        var cg_x = me.yasimN.getNode("cg-x-m",1).getValue();
        var cg_y = me.yasimN.getNode("cg-y-m",1).getValue();
        var cg_z = me.yasimN.getNode("cg-z-m",1).getValue();
        var xaft = me.yasimN.getNode("model/cg-x-range-aft",1).getValue();
        var xfront = me.yasimN.getNode("model/cg-x-range-front",1).getValue();
        if (me.view == VIEW_TOP) me.CGmarker.setTranslation(
                me.scaleX(cg_x), me.scaleY(-cg_y));
        if (me.view == VIEW_RIGHT) me.CGmarker.setTranslation(me.scaleX(cg_x), me.scaleY(-cg_z));
        if (me.view == VIEW_FRONT) me.CGmarker.setTranslation(me.scaleX(cg_y), me.scaleY(-cg_z));
        if ((xaft < cg_x) and (cg_x < xfront)) me.CGmarker.setColor([0.3,1,0.3,1]);
        else me.CGmarker.setColor([1,0.3,1,1]);
    },
    
    startUpdate: func() {
        print("StartUpdate");
        me.timer = maketimer(0.5, func {
            me.update();
            #ugly hack to detect window closed
            if (me.myWindow._canvas == nil) {
                me.timer.stop()
            }
        });
        me.timer.start();
    },
    
}; #YasimCanvas


yasim.displayMasses = func(view=0)
{
    var colorStatic = [1,1,1,0.5];
    var colorVariable = [1,1,0,1];
    var display = YasimCanvas.new();
    display.view = view;
    display.setDataSource("model/masses", "mass");
    display.setupWindow("YASim mass distribution");
    display.drawAirplane();
    var paths = [];
    setsize(paths, size(display.dataN));
    var texts = [];
    setsize(texts, size(display.dataN));
    
    foreach (var n; display.dataN)
    {
        var x = n.getNode("pos-x",1).getValue();
        var y = n.getNode("pos-y",1).getValue();
        var z = n.getNode("pos-z",1).getValue();
        var static = n.getNode("isStatic",1).getValue();
        var value = int(getValueOrZero(n.getNode("mass",1))*10)/10;
        if (view == VIEW_RIGHT) { y = z; }
        if (view == VIEW_FRONT) { x = y; y = z; }

        texts[n.getIndex()] = display.myRoot.createChild("text")
                .setText(value)
                .setColor(colorStatic)
                .setFontSize(8);
        texts[n.getIndex()].setTranslation(display.cx(x), display.cy(y));
        if (!static)
            texts[n.getIndex()].setColor(1,1,0,1).setFontSize(12);
        
        var m = 2; #marker size in pixel
        paths[n.getIndex()] = display.myRoot.createChild("path")
                .moveTo(display.cx(x)-m, display.cy(y)-m)
                .line(2*m, 2*m).move(-2*m,0).line(2*m, -2*m)                
                .setColor(colorStatic)
                .setStrokeLineWidth(display.STROKE_WIDTH);
        if (!static) {
            texts[n.getIndex()].setColor(colorVariable).setFontSize(12);
            paths[n.getIndex()].setColor(colorVariable);
        }
    }
    
    display.middleClick = func() {
        var view = me.view + 1;
        if (view == 3) view = 0;
        #me.myWindow.del();
        yasim.displayMasses(view);
    }

    display.update = func() {
        display.updateCGMarker();
        foreach (var n; display.dataN)
        {
            var static = n.getNode("isStatic",1).getValue();
            var value = int(getValueOrZero(n.getNode("mass",1))*10)/10;
            if (!static)
                texts[n.getIndex()].setText(value);
        }
    }
    display.startUpdate();
}


yasim.displayForces = func(view=0)
{
    var display = YasimCanvas.new();
    display.view = view;
    display.setDataSource("debug/surfaces", "surface");
    display.setupWindow("YASim forces");
    display.drawAirplane();

    #-- the surface elements
    var paths = [];
    setsize(paths, 2*size(display.dataN));
    var texts = [];
    setsize(texts, size(display.dataN));

    foreach (var n; display.dataN)
    {
        n.getNode("f-abs",1).setValue(0);
        n.getNode("f-x",1).setValue(0);
        n.getNode("f-y",1).setValue(0);
        n.getNode("f-z",1).setValue(0);
        var x = n.getNode("pos-x",1).getValue();
        var y = n.getNode("pos-y",1).getValue();
        var z = n.getNode("pos-z",1).getValue();
        var ax = getValueOrZero(n.getNode("axis-x",1));
        var ay = getValueOrZero(n.getNode("axis-y",1));
        var az = getValueOrZero(n.getNode("axis-z",1));
        var len = getValueOrZero(n.getNode("chord",1));

        dx = ax*len;
        dy = ay*len;
        dz = az*len;

        if (view == VIEW_RIGHT) {
            y = z;
            dy = dz;
        }
        if (view == VIEW_FRONT) {
            x = y;
            dx = dy;
            y = z;
            dy = dz;
        }
        #var v = int(n.getChild("alpha",0,1).getValue(0)*3.1415/18)/10;
        var v = int(n.getIndex());
        texts[n.getIndex()] = display.myRoot.createChild("text")
        .setText(v)
        .setColor(1,1,1,1)
        .setFontSize(7);
        texts[n.getIndex()].setTranslation(display.cx(x)+3, display.cy(y));
        paths[2*n.getIndex()] = display.myRoot.createChild("path")
            .moveTo(display.cx(x-dx/2), display.cy(y-dy/2))
            .lineTo(display.cx(x), display.cy(y))
            .setColor(0,0,0,0.5)
            .setStrokeLineWidth(display.STROKE_WIDTH);
        paths[2*n.getIndex()+1] = display.myRoot.createChild("path")
            .moveTo(display.cx(x), display.cy(y))
            .lineTo(display.cx(x+dx/2), display.cy(y+dy/2))
            .setColor(0,0,0,0.5)
            .setStrokeLineWidth(display.STROKE_WIDTH);
    }

    display.middleClick = func() {
        var view = me.view + 1;
        if (view == 2) view = 0;
        #me.myWindow.del();
        yasim.displayForces(view);
    }
    
    display.update = func()
    {
        display.updateCGMarker();
        var fx = 0.5;
        var fy = 0.5;
        var fz = 0.5;
        var labelSrc = display.options.labelSrc.getValue();
        var pathVisible = display.options.showChords.getValue();
        var textVisible = display.options.showLabels.getValue();
        var txt = 0;
        var fabs = 0;
        foreach (var n; display.dataN)
        {
            if (labelSrc == "_idx") 
                txt = n.getIndex();
            else {
                txt = getValueOrZero(n.getNode(labelSrc,1));
                if (labelSrc == "alpha") 
                    txt = R2D*txt;
                #-- cut to 1 digit after "."
                txt = int(txt*10)/10;
            }
            fabs = n.getNode("f-abs",1).getValue();
            fx = -0.5 * n.getNode("f-x",1).getValue()*3/fabs + 0.5;
            fy = 0.5 * n.getNode("f-y",1).getValue()/fabs + 0.5;
            fz = 0.5 * n.getNode("f-z",1).getValue()/fabs + 0.5;

            paths[2*n.getIndex()].setColor(fx, 0.1, 0.1, 1);
            paths[2*n.getIndex()].setVisible(pathVisible);
            paths[2*n.getIndex()+1].setColor(0.5,fz,0.5,1);
            paths[2*n.getIndex()+1].setVisible(pathVisible);
            texts[n.getIndex()].setVisible(textVisible);
            texts[n.getIndex()].setText(txt);
        }
    }
    display.startUpdate();
}
