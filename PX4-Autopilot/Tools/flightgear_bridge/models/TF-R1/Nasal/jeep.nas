aircraft.livery.init("Aircraft/jeep/Models/Liveries", "sim/model/livery/name");

var indicatorleft = props.globals.getNode("controls/indicator/left", 0);
aircraft.light.new("sim/model/jeep/lighting/indicator_left", [0.5, 0.5], indicatorleft);

var indicatorright = props.globals.getNode("controls/indicator/right", 0);
aircraft.light.new("sim/model/jeep/lighting/indicator_right", [0.5, 0.5], indicatorright);
