#!BPY
'''blender add-on

Loads and visualizes YASim FMD geometry.
'''
#--------------------------------------------------------------------------------
# Port for Blender 2.5/6/7:
#
# Copyright 2012-2015 Cem Aydin
#
# E-Mail: cem.aydin@gmx.ch
#--------------------------------------------------------------------------------
#
# Original script for Blender 2.45
# Original name: utils_Modeller_YASim_import.py
#--------------------------------------------------------------------------------
# Copyright (C) 2009  Melchior FRANZ  < mfranz # aon : at >
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#--------------------------------------------------------------------------------

# Blender info
# (needed for addon functionality)
bl_info = {
    'name': 'Simple YASim XML Import',
    'author': 'Cem Aydin',
    'version': (0, 6, 1),
    'blender': (2, 76, 0),
    'api': 'unknown',
    "location": "View3D > UI panel > YASim XML Importer",
    'description': 'Loads and visualizes YASim FDM geometry',
    'warning': 'Experimental. May cause blender crashes or other unexpected behaviour.',
    'wiki_url': 'http://wiki.flightgear.org/Blender_YASim_import',
    'tracker_url': 'http://www.flightgear.org/forums/viewtopic.php?f=4&t=17267',
    'category': 'Import-Export'}


# Imports
import bpy, math, os, bmesh

from bpy_extras.io_utils import ImportHelper
from bpy.props import EnumProperty, BoolProperty

from mathutils import Vector, Matrix, Euler

from xml.sax import handler, make_parser


# Gobals
ORIGIN = Vector((0,0,0))
X = Vector((1,0,0))
Y = Vector((0,1,0))
Z = Vector((0,0,1))

DEG2RAD = math.pi / 180
RAD2DEG = 180 / math.pi

# csys change matrix definition !
MATRIX_FGCSYS = Matrix(([-1, 0, 0, 0], [0, -1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]))


# Functions

def change_csys():
    '''Change csys from YASim to FG and back.'''
    # get all items
    all_items = bpy.data.objects.keys()
    
    for name in all_items:
        
        # check for YASim elements
        is_yasim = name.startswith("YASim_")
        
        if is_yasim:
            
            # get the current matrix
            matrix_current = bpy.data.objects[name].matrix_world
            
            # set the new matrix which is the current times the csys matrix !
            bpy.data.objects[name].matrix_world = MATRIX_FGCSYS * matrix_current
            

### Show / Clear item names            

def show_item_names():
    '''Show item names.'''
    # get all items
    all_items = bpy.data.objects.keys()
    
    for name in all_items:
        
        is_yasim = name.startswith("YASim_")
        
        if is_yasim:
            
            bpy.data.objects[name].show_name = True
            

def clear_item_names():
    '''Clear item names.'''
    # get all items
    all_items = bpy.data.objects.keys()
    
    for name in all_items:
        
        is_yasim = name.startswith("YASim_")
        
        if is_yasim:
            
            bpy.data.objects[name].show_name = False
            

### Lock Transformations
def lock_transformations(lock=True):
    '''Lock Transformations.
True or False.'''
    for obj_name in bpy.data.objects.keys():
        if obj_name.startswith("YASim_"):
            obj = bpy.data.objects[obj_name]
            if lock:
                set_list = [True, True, True]
            elif not lock:
                set_list = [False, False, False]
            else:
                print("Something went wrong.")
                return
            obj.lock_location = set_list
            obj.lock_rotation = set_list
            obj.lock_scale = set_list

### Mirror / Unmirror function for symetrical elements

def mirror_sym(obj_list):
    '''Mirror symetrical elements.'''
    
    for object in obj_list:
        
        center = object.location
        
        # adaption for the FG CSYS
        if bpy.context.scene.csys == '0':
            
            center.x = -center.x
            center.y = -center.y
        
        # object.data ==> get's the object's mesh !!!!!!!!
        mesh = object.data
        
        # transform the vertices by a matrix
        mesh.transform(Matrix.Translation(center))
        
        mesh.update()
        
        object.location = (0,0,0)
        
        # set object active
        bpy.context.scene.objects.active = object
        
        # add mirror modifier
        bpy.ops.object.modifier_add(type='MIRROR')
        
        # set the correct axis
        object.modifiers['Mirror'].use_x = False
        object.modifiers['Mirror'].use_y = True
        object.modifiers['Mirror'].use_z = False
        

def unmirror_sym(obj_list):
    '''Unmirror symetrical elements.'''
    
    for object in obj_list:
        
        mesh = object.data
        
        # remove the mirror modifier
        # set object active
        bpy.context.scene.objects.active = object
        
        bpy.ops.object.modifier_remove(modifier='Mirror')
        
        # the first vertice gives us the coordinates for the backtransformation
        v = Vector((mesh.vertices[0].co[0], mesh.vertices[0].co[1], mesh.vertices[0].co[2]))
        
        # backtransformation
        mesh.transform(Matrix.Translation(-v))
        
        #recalculate !!!!!!! odd behaviour if not done !!!!!!!
        mesh.update()
        
        # set location point back
        
        # adaption for FG CSYS
        if bpy.context.scene.csys == '1':
            object.location = (v)
            
        elif bpy.context.scene.csys == '0':
            u = v.copy()
            u.x = -u.x
            u.y = -u.y
            object.location = u
        
        

### Function for clearing up all drawn items (all items named YASim_*)
    
def delete_all_yasim():
    '''Clear up (delete) all YASim_* items.'''
    # using built-in select pattern functions:
    # 1) deselect all
    bpy.ops.object.select_all(action='DESELECT')
    # 2) select all YASim items
    bpy.ops.object.select_pattern(pattern="YASim_*")
    # 3) delete the selected
    bpy.ops.object.delete()
    
    # clear the sym. obj. list !!!!!!!!!!!!!!!! can cause blender to crash if not done :-o 
    Symetric.obj_list = []
    

### Helper drawing functions

def mesh_create(name, obj_loc, verts, edges, faces):
    '''Create a mesh out of given vertices.

mesh_creation('NAME', (x,y,z), [(x1,y1,z1),(x2,y2,z2)], [(n1,n2),(n3,n4)], [])
either edges or faces has to be []

Returns the mesh object.'''
    
    # create a new mesh
    mesh = bpy.data.meshes.new(name+'_mesh')
    
    # create a new object
    object = bpy.data.objects.new(name, mesh)
    
    # set the object location
    #object.location = obj_loc
    
    # link the object to the actual scene
    bpy.context.scene.objects.link(object)
    
    # create the mesh with the above definitions
    mesh.from_pydata(verts, edges, faces)
    
    # too see the edges the mesh has to be updated
    mesh.update(calc_edges=True)
    
    # moving it by a matrix instead with obj.location
    object.matrix_world = Matrix.Translation(obj_loc)
    
    # return the object to the caller
    return object
    

def mesh_create_empty(name, obj_loc):
    '''Create an empty mesh object.

Returns it.'''
    
    # create a new mesh
    mesh = bpy.data.meshes.new(name+'_mesh')
    
    # create a new object
    object = bpy.data.objects.new(name, mesh)
    
    # set the object location
    #object.location = obj_loc
    
    # link the object to the actual scene
    bpy.context.scene.objects.link(object)
    
    # moving it by a matrix instead with obj.location
    object.matrix_world = Matrix.Translation(obj_loc)
    
    # return the object to the caller
    return object
    

def draw_arrow(mesh, start, end):
    '''Draw an arrow.'''
    # Create a bmesh representation
    bm = bmesh.new()        # create an empty bmesh
    
    # create arrow, really, I don't understand what's done here...
    # basically it's creating a transformation matrix I would say
    # (a nicer way to make this a one liner like in the original script would be nice,
    #  but I didn't found a working way yet...)
    v = end
    q = v.to_track_quat('X', 'Z')
    m1 = q.to_matrix()
    m2 = m1.to_4x4()
    m = m2       # .resize4x4() in the original script, did not work when testing ==> .to_4x4
    v = v.length * X
    n = len(bm.verts)
    
    # "head"
    bm.verts.new((ORIGIN))
    bm.verts.new((v))
    bm.verts.new(((v - 0.1 * X + 0.1 * Y)))
    bm.verts.new(((v - 0.1 * X - 0.1 * Y)))
    # "base"
    bm.verts.new(((ORIGIN + 0.1 * Y)))
    bm.verts.new(((ORIGIN - 0.1 * Y)))

    # use before accessing bm.verts[] with blender 2.73
    if hasattr(bm.verts, "ensure_lookup_table"):
        bm.verts.ensure_lookup_table()
    
    # edges
    bm.edges.new([bm.verts[n], bm.verts[n + 1]])
    bm.edges.new([bm.verts[n + 1], bm.verts[n + 2]])
    bm.edges.new([bm.verts[n + 1], bm.verts[n + 3]])
    bm.edges.new([bm.verts[n + 4], bm.verts[n + 5]])
    
    bm.transform(Matrix.Translation(start) * m)
    
    # add the existing mesh
    bm.from_mesh(mesh)
    # write the bmesh back to the mesh
    bm.to_mesh(mesh)
    mesh.update()
    

def draw_circle(mesh, numpoints, radius, matrix):
    '''Draw a circle.'''
    # bmesh repr.
    bm = bmesh.new()
    bm.from_mesh(mesh)
    
    # get the number of verts already in the mesh
    n = len(bm.verts)
    
    # make the verts
    for i in range(numpoints):
        angle = 2.0 * math.pi * i / numpoints
        v = Vector((radius * math.cos(angle), radius * math.sin(angle), 0))
        bm.verts.new((v * matrix))

    # use before accessing bm.verts[] with blender 2.73
    if hasattr(bm.verts, "ensure_lookup_table"):
        bm.verts.ensure_lookup_table()
    
    # make the edges
    for i in range(numpoints):
        i1 = (i + 1) % numpoints
        bm.edges.new([bm.verts[n + i], bm.verts[n + i1]])
    
    # write the bmesh back to the mesh
    bm.to_mesh(mesh)
    mesh.update()
    

def draw_dashed_line(mesh, start, end):
    '''Draw a dashed line.'''
    # Create a bmesh representation
    bm = bmesh.new()        # create an empty bmesh
    bm.from_mesh(mesh)      # fill it with the above mesh
    
    # modify the mesh here
    
    w = 0.04
    step = w * (end - start).normalized()
    n = len(bm.verts)
    
    for i in range(int(1 + 0.5 * (end - start).length / w)):
        a = start + 2 * i * step
        b = a + step
        if (b - end).length < step.length:
            b = end
        bm.verts.new(a)
        bm.verts.new(b)
        # use before accessing bm.verts[] with blender 2.73
        if hasattr(bm.verts, "ensure_lookup_table"):
            bm.verts.ensure_lookup_table()
        bm.edges.new([bm.verts[n + 2 * i], bm.verts[n + 2 * i + 1]])
        
    # write the bmesh back to the mesh
    bm.to_mesh(mesh)
    mesh.update()
    

### The drawing classes, instantiated ("called") by the parser

# Class for all items
class Item():
    
    # Materials attrs: Name, colorsRGB, alpha value
    def set_material(name, color, alpha):
        # Check if material exists already (otherwise we get dozends of materials
        #  when reloading, which is just not very nice)
        if bpy.data.materials.find(name) != -1:
            # if yes then use it
            bpy.context.object.data.materials.append(bpy.data.materials[name])
        
        # if not create a new material
        else:
            mat = bpy.data.materials.new(name)
            mat.diffuse_color = color
            mat.alpha = alpha
            mat.use_transparency = True
            
            bpy.context.object.data.materials.append(mat)
        
        # set the trancparency (checkbox) true (in object props !!
        #  this is a fake transparency for the viewport, though
        #  it uses the alpha value from the material !!)
        bpy.context.object.show_transparent = True
        
        # show a label in the viewport
        # if checkbox is checked
        if bpy.context.scene.show_names == True:
            bpy.context.object.show_name = True
        
        # lock the transformations
        if bpy.context.scene.lock_transformations == True:
            set_list = [True, True, True]
            bpy.context.object.lock_location = set_list
            bpy.context.object.lock_rotation = set_list
            bpy.context.object.lock_scale = set_list


# One class per item
class Cockpit(Item):
    def __init__(self, center):
        # define the rotation and scale
        rotation = (0, 0, math.radians(90))
        scale = (0.12, 0.12, 0.12)
        # define the mesh
        mesh = bpy.ops.mesh.primitive_monkey_add
        # insert the mesh at location, rotation
        mesh(location=center, rotation=rotation)
        # rescale it to a nice size
        bpy.ops.transform.resize(value=(scale))
        # name it appropriately
        # (give name here, there is only ONE cockpit element !)
        bpy.context.object.name = 'YASim_Cockpit'
        # set material, attr: Name, colorsRGB, alpha value
        Item.set_material('red', (1,0,0), 1)
        

class Tank(Item):
    def __init__(self, name, center, capacity):
        # mesh (primitive)
        rot = (0, 0, 0)
        scale = (0.1, 0.1, 0.1)
        mesh = bpy.ops.mesh.primitive_cube_add
        mesh(location=center, rotation=rot)
        bpy.ops.transform.resize(value=scale)
        
        # naming
        # would be nice to have some more info... leaving for later implementation.
        #  (for example: + ' (' + capacity + 'lb)'))
        bpy.context.object.name = name
        
        # set material
        Item.set_material('blue', (0,0,1), 1)
        

class Ballast(Item):
    def __init__(self, name, center, mass):
        # mesh (primitive)
        rot = (0, 0, 0)
        scale = (0.15, 0.15, 0.15)
        verts = 8
        mesh = bpy.ops.mesh.primitive_cylinder_add
        mesh(location=center, rotation=rot, vertices=verts)
        bpy.ops.transform.resize(value=scale)
        
        # set the name of the object
        # would be nice to have some more info... leaving for later implementation.
        #  (for example: + ' (' + capacity + 'lb)'))
        bpy.context.object.name = name
        
        # set material
        Item.set_material('grey', (0.8,0.8,0.8), 1)
        

class Weight(Item):
    def __init__(self, name, center):
        # mesh (primitive)
        rot = (math.radians(180), 0, 0)
        scale = (0.15, 0.15, 0.15)
        verts = 8
        mesh = bpy.ops.mesh.primitive_cone_add
        mesh(location=center, rotation=rot, vertices=verts)
        bpy.ops.transform.resize(value=scale)
        
        # naming
        bpy.context.object.name = name
        
        # set material
        Item.set_material('pink', (0.8, 0.0, 0.8), 1)
        

class Gear(Item):
    def __init__(self, name, center, upcomp):
        ## create the data for the mesh
        # two vertices, one at origin one at end of compr.
        verts = [(0,0,0),upcomp]
        # one edge, between the two vertices
        edge = [(0,1)]
        # now call the mesh creation func
        gear_obj = mesh_create(name, center, verts, edge, [])
        
        # set the created object active !!!!!!!
        bpy.context.scene.objects.active = gear_obj
        # set material
        Item.set_material('grey2', (0.3,0.3,0.3), 1)
        

class Hook(Item):
    def __init__(self, center, length, up_angle, dn_angle):
        # define the name
        # (there is only one hook element)
        name = 'YASim_Hook'
        
        # Calculate the points for the mesh
        up = ORIGIN - length * math.cos(up_angle * DEG2RAD) * X - length * math.sin(up_angle * DEG2RAD) * Z
        dn = ORIGIN - length * math.cos(dn_angle * DEG2RAD) * X - length * math.sin(dn_angle * DEG2RAD) * Z
        
        # create the hook (extended/down position)
        hook_obj = mesh_create(name, center, [ORIGIN, dn, dn + 0.05*Y, dn - 0.05*Y], [(0,1), (2,3)], [])
        
        # set the created object active !!!!!!!
        bpy.context.scene.objects.active = hook_obj
        
        # now draw the dashed line for retr./up position
        # get the active mesh
        mesh = bpy.context.object.data
        draw_dashed_line(mesh, ORIGIN, up)
        
        # set material
        Item.set_material('grey2', (0.3,0.3,0.3), 1)
        

class Launchbar(Item):
    def __init__(self, lb, lb_length, up_angle, dn_angle, hb, hb_length):
        # define the name
        # (there is only one launchbar element) --> isn't it ?
        name = 'YASim_Launchbar'
        
        # Calculate points for the mesh
        
        # here in the original script hb = hb - lb
        # --> seems to be tuple - vector, that is not working
        # assuming: (this step is necessary to get from global to local coordinates !!)
        hb = hb - Vector(lb)
        
        lb_tip = ORIGIN + lb_length * math.cos(dn_angle * DEG2RAD) * X - lb_length * math.sin(dn_angle * DEG2RAD) * Z
        hb_tip = hb - hb_length * math.cos(dn_angle * DEG2RAD) * X - hb_length * math.sin(dn_angle * DEG2RAD) * Z
        
        # create the mesh: launchbar and holdback extended position
        lb_obj = mesh_create(name, lb, [ORIGIN, lb_tip, hb, hb_tip, lb_tip+0.05*Y, lb_tip-0.05*Y, hb_tip+0.05*Y, hb_tip-0.05*Y],
                                    [(0,1),(0,2),(2,3),(4,5),(6,7)], [])
        
        # set the created object active !!!!!!!
        bpy.context.scene.objects.active = lb_obj
        
        # draw dashed lines for the retracted position
        # get the active mesh
        mesh = bpy.context.object.data
        
        lb_up = lb_length * math.cos(up_angle * DEG2RAD) * X - lb_length * math.sin(up_angle * DEG2RAD) * Z
        hb_up = hb - hb_length * math.cos(up_angle * DEG2RAD) * X - hb_length * math.sin(up_angle * DEG2RAD) * Z
        
        draw_dashed_line(mesh, ORIGIN, lb_up)
        draw_dashed_line(mesh, hb, hb_up)
        
        # set material
        Item.set_material('grey2', (0.3,0.3,0.3), 1)
        

class Hitch(Item):
    def __init__(self, name, center):
        # mesh (primitive)
        rot = (math.radians(90), 0, 0)
        radius = 0.1
        verts = 16
        mesh = bpy.ops.mesh.primitive_circle_add
        mesh(location=center, rotation=rot, vertices=verts, radius=radius)
        
        # name it appropriately
        bpy.context.object.name = name
        # set material, attr: Name, colorsRGB, alpha value
        Item.set_material('grey2', (0.3,0.3,0.3), 1)
        

class Thruster(Item):
    def __init__(self, name, center, thrustvector):
        # create an empty mesh object
        empty_obj = mesh_create_empty(name, center)
        
        # set the created object active !!!!!!!
        bpy.context.scene.objects.active = empty_obj
        # get the active mesh
        mesh = bpy.context.object.data
        
        # in the original script here's the following line
        #draw_dashed_line(mesh, ORIGIN, a)
        # but the thruster element has no actionpt subelement
        # therefor leaving this out !!
        # also all the crazy actionpt operations above are obsolete !!!
        # ==> This should really be adapted !!!!!! This is a simple element
        # and should be simple here too, really --> doing so.
        
        draw_arrow(mesh, ORIGIN, thrustvector.normalized())
        
        # set material, attr: Name, colorsRGB, alpha value
        Item.set_material('grey3', (0.3,0.3,0.3), 1)
        
        # moving it to it's location by matrix instead locate above empty_obj

# Here we must make some annoing actions cause we need the actionpt
# (which is a subtag in thruster/jet..) before we can initiate/create
# the thruster/jet
#
# Alternative idea just had: make the jet/thruster.. with a default
# actionpt = center, really create it and if a custom actionpt is set
# move it in the mesh !? therefor we could avoid these issues below:
# creation with the __del__ function etc., that's odd
# anyways doing it like this for now ==> Trying to do so.
#class Thrust:
#    def set_actionpt(self, p):
#        self.actionpt = p
#    
#    def set_dir(self, d):
#        self.thrustvector = d

# a superclass to store the obj. name, ridiculous ;-), but still a lot simpler
# than the original way
class Thrust:
    def set_obj(obj_name):
        Thrust.obj_name = obj_name
    
    def set_center(center):
        Thrust.center = center

class Jet(Item, Thrust):
    def __init__(self, name, center, rotate):
        # create the thrustvector
        # couldn't find a degtorad transformation in the orig. script for rotate
        # I think it should be done
        thrustvector = -X * Matrix.Rotation(math.radians(rotate), 4, 'Y')
        
        # create an empty mesh object at center
        empty_obj = mesh_create_empty(name, center)
        
        # set the created object active !!!!!!!
        bpy.context.scene.objects.active = empty_obj
        # get the active mesh
        mesh = bpy.context.object.data
        
        # draw the thrust arrow
        draw_arrow(mesh, ORIGIN, thrustvector.normalized())
        
        # store the name in the superclass
        Thrust.set_obj(empty_obj)
        # and the center
        Thrust.set_center(center)
        
        # show name and set material
        Item.set_material('grey3', (0.3,0.3,0.3), 1)
        

class Propeller(Item, Thrust):
    def __init__(self, name, center, radius):
        # propeller will always be vertical (for now) (?)
        
        # draw a line from center up
        prop_obj = mesh_create(name, center, [ORIGIN, (ORIGIN + radius * Z)], [(0,1)], [])
        
        # set the created object active !!!!!!!
        bpy.context.scene.objects.active = prop_obj
        # get the active mesh
        mesh = bpy.context.object.data
        
        # draw the thrustvector arrow (always straight backwards, for now)
        # maybe this could also be done in the actionpt function ?
        thrustvector = -X
        draw_arrow(mesh, ORIGIN, thrustvector.normalized())
        
        # draw the propeller circle
        # create a matrix
        q = thrustvector.to_track_quat('Z', 'X')
        m1 = q.to_matrix()
        matrix = m1.to_4x4()
        
        draw_circle(mesh, 128, radius, matrix)
        
        # store the name in the superclass
        Thrust.set_obj(prop_obj)
        # and the center
        Thrust.set_center(center)
        
        # show name and set material
        Item.set_material('grey3', (0.3,0.3,0.3), 1)
        

# this one simply needs to be called after the jet/propeller
# (is done so by the parser)
class ActionPt(Thrust):
    def __init__(self, actionpt):
        # get the object name from superclass
        obj = Thrust.obj_name
        
        # set the created object active !!!!!!! ==> maybe there's a better way to do this ?
        bpy.context.scene.objects.active = obj
        # get the active mesh
        mesh = bpy.context.object.data
        
        # adjust the actionpt ! (for local coordinates, again)
        actionpt = actionpt - Thrust.center
        
        # now move the thrustvector arrow from center to actionpt
        mesh.transform(Matrix.Translation(actionpt))
        
        mesh.update()
        
        # and draw a dashed line from center to actionpt !
        # that's it !
        draw_dashed_line(mesh, ORIGIN, actionpt)
        

class Fuselage(Item):
    def __init__(self, name, a, b, width, taper, midpoint):
        numvert = 12
        angle = []
        for i in range(numvert):
            alpha = i * 2 * math.pi / float(numvert)
            angle.append([math.cos(alpha), math.sin(alpha)])
        
        axis = b - a
        length = axis.length
        
        # create a new mesh
        mesh = bpy.data.meshes.new(name+'_mesh')
        
        # create a bmesh repr.
        bm = bmesh.new()
        
        for i in range(numvert):
            bm.verts.new((0, 0.5 * width * taper * angle[i][0], 0.5 * width * taper * angle[i][1]))
        for i in range(numvert):
            bm.verts.new((midpoint * length, 0.5 * width * angle[i][0], 0.5 * width * angle[i][1]))
        for i in range(numvert):
            bm.verts.new((length, 0.5 * width * taper * angle[i][0], 0.5 * width * taper * angle[i][1]))
            
        # use before accessing bm.verts[] with blender 2.73
        if hasattr(bm.verts, "ensure_lookup_table"):
            bm.verts.ensure_lookup_table()
        
        for i in range(numvert):
            i1 = (i + 1) % numvert
            bm.faces.new([bm.verts[i], bm.verts[i1], bm.verts[i1 + numvert], bm.verts[i + numvert]])
            bm.faces.new([bm.verts[i + numvert], bm.verts[i1 + numvert], bm.verts[i1 + 2 * numvert], bm.verts[i + 2 * numvert]])
        
        bm.verts.new((ORIGIN))
        bm.verts.new((length * X))
        
        # write bmesh back to mesh
        bm.to_mesh(mesh)
        mesh.update()
        
        # matrix transformation of the mesh
        v = axis
        q = v.to_track_quat('X', 'Y')
        m1 = q.to_matrix()
        m = m1.to_4x4()
        
        mesh.transform(m)
        
        mesh.update()
        
        # create obj. etc.
        # create a new object
        fus_obj = bpy.data.objects.new(name, mesh)
        
        # set the object location, where to place this ? It's placed at point ax,ay,az !
        #  I'm assuming this is always the tip of the tube, otherways it might not be displayed correctly ?
        #  ==> maybe find a solution for this... ?
        fus_obj.location = a
        
        # link the object to the actual scene
        bpy.context.scene.objects.link(fus_obj)
        
        # set the created object active !!!!!!!
        bpy.context.scene.objects.active = fus_obj
        
        # give this one a nice material:
        Item.set_material('tblue-1', (0.0,0.0,0.5), 0.4)
        

class Rotor(Item):
    def __init__(self, name, center, up, fwd, numblades, radius, chord, twist, taper, rel_len_blade_start, phi0, ccw):
        
        # reworking the rotor element
        
        # mr_no's suggestion for the workflow
        #
        # 1) draw circles ((x,y,z), diameter, rel-len-blade-start)
        # 2) draw vector forward ((x,y,z,),(fx,fy,fz))
        # 3) draw blade (diameter, chord)
        # 4) draw vector rotation direction (ccw)
        # 5) draw vector normal with nx=0, ny=0, nz=1
        # 6) rotate the hole mesh with real n
        #
        ## draw blade same direction vector forward is
        ## use taper for drawing more accurate blade
        ## don't use twist, don't use phi0, ignore all other smaller values
        
        # currently we're drawing it the following way:
        # <rotor> One blade is shown, where the initial angle phi0 is ignored.
        # The incidence is shown at the blade root, where chord is simply used for
        # the length. The blade tip is always flat (at a zero degree incidence).
        # When ccw = 0 the incidence angle is currently inverted.
        # However, it is unclear wheter this is correct (?).
        # The entire rotor is rotated according to the normal vector (pointing "up").
        # Finally the forward vector is drawn, as it is defined.
        
        # drawing the blade first, this is easier, we can create the mesh with that
        
        twist *= DEG2RAD
        
        a = ORIGIN + rel_len_blade_start * radius * X
        b = ORIGIN + radius * X
        
        # adapted root line, twist is negative and taper should not be included here !
        tw = 0.5 * chord * math.cos(twist) * Y + 0.5 * chord * math.sin(-twist) * Z
        
        # drawing the blade for ccw = 1
        rot_obj = mesh_create(name, center, [ORIGIN, a, b, a + tw, a - tw, b + 0.5 * chord * Y * taper, 
                                b - 0.5 * chord * Y * taper],
                                [(0,1), (1,2), (1,3), (1,4), (3,5), (4,6), (5,6)], [])
        
        # get the mesh
        mesh = rot_obj.data
        
        # draw ccw = 1 arrow
        draw_arrow(mesh, ((a+b)/2), Y)
        
        # transform the blade + ccw arrow according to real ccw
        if ccw == 0:
            # invert the Y axis
            tm = ([1,0,0,0],[0,-1,0,0],[0,0,1,0],[0,0,0,1])
            mesh.transform(tm)
        
        # (and rotate it around phi0, could be added here ?)
        
        # draw the normal arrow up the Z
        draw_arrow(mesh, ORIGIN, Z)
        
        # draw the circles
        draw_circle(mesh, 64, rel_len_blade_start * radius, Matrix())
        draw_circle(mesh, 128, radius, Matrix())
        
        # rotate everything with real n (up)
        # (define the matrix here)
        q1 = up.to_track_quat('Z', 'X')
        m1 = q1.to_matrix()
        m = m1.to_4x4()
        
        mesh.transform(m)
        
        # draw the forward arrow (how it's defined)
        draw_arrow(mesh, ORIGIN, fwd)
        
        # set the created object active !!!!!!!
        bpy.context.scene.objects.active = rot_obj
        # set material
        Item.set_material('grey4', (0.3,0.3,0.3), 1)
        

# finally, the wings

# a superclass for symetric elements...
class Symetric:
    obj_list = []
    def list_append(obj):
        Symetric.obj_list.append(obj)

class Wing(Item, Symetric):
    def __init__(self, name, root, length, chord, incidence, twist, taper, sweep, dihedral):
        
        # transform angles to rad
        sweep *= DEG2RAD
        twist *= DEG2RAD
        
        dihedral *= DEG2RAD
        incidence *=DEG2RAD
        
        # find out if it's a symetric element
        self.is_symetric = not name.startswith("YASim_vstab")
        
        # create the wing mesh object
        # the wing is first created at ORIGIN w/o incidence/dihedral
        
        base = ORIGIN
        basefore = ORIGIN + 0.5 * chord * X
        baseaft = ORIGIN - 0.5 * chord * X
        
        tip = ORIGIN + (math.cos(sweep) * length * Y) - (math.sin(sweep) * length * X)
        
        tipfore = tip + (0.5 * taper * chord * math.cos(twist) * X) + (0.5 * taper * chord * math.sin(twist) * Z)
        tipaft = tip + tip - tipfore
        #  <1--0--2
        #   \  |  /
        #    4-3-5
        wing_obj = mesh_create(name, ORIGIN, [base, basefore, baseaft, tip, tipfore, tipaft], [], 
                                [(0, 1, 4, 3), (2, 0, 3, 5)])
        
        # now transform the mesh
        # set the created object active !!!!!!!
        bpy.context.scene.objects.active = wing_obj
        # get the active mesh
        mesh = bpy.context.object.data
        
        # create a rotation matrix, for dihedral and incidence rotation
        e = Euler((dihedral, -incidence, 0))
        m1 = e.to_matrix()
        m = m1.to_4x4()
        
        # rotate it
        mesh.transform(m)
        
        mesh.update()
        
        # position the object
        #wing_obj.location = root
        # use the matrix to position it
        wing_obj.matrix_world = Matrix.Translation(root)
        
        # assign materials
        if self.is_symetric:
            Item.set_material('tgreen-1', (0.0,0.5,0.0), 0.5)
            
            Symetric.list_append(wing_obj)
        
        else:
            Item.set_material('tred-1', (0.5,0.0,0.0), 0.5)
        
        # write out the vars for the flaps
        self.baseaft = baseaft
        self.tipaft = tipaft
        self.base = base
        self.wing_obj = wing_obj
        self.mesh_matrix = m
        
    def add_flap(self, name, start, end):
        # read in the vars from wing
        a = self.baseaft
        b = self.tipaft
        c = 0.2 * (self.base - a).normalized()
        
        i0 = a + start * (b - a)
        i1 = a + end * (b - a)
        
        flap_obj = mesh_create(name, ORIGIN, [i0, i1, (i0 + c), (i1 + c)], [], [(0, 1, 3, 2)])
        
        # get the wing obj matrix
        m = self.wing_obj.matrix_world
        
        # apply it to the flap_obj + the "wing mesh matrix" from above to get the rotations
        # separating mesh matrix out, getting incorrect mirrors
        mesh = flap_obj.data
        mesh.transform(self.mesh_matrix)
        
        flap_obj.matrix_world = m
        
        # set the created object active !!!!!!!
        bpy.context.scene.objects.active = flap_obj
        
        # set material
        Item.set_material('tyello-1', (0.8,0.8,0.0), 0.9)
        
        if self.is_symetric:
            Symetric.list_append(flap_obj)
        



### This is the parser handling function
### It tells the parser what to do with the XML

class Read_XML(handler.ContentHandler):
    # ignored not used by now
    #ignored = ["cruise", "approach", "control-input", "control-output", "control-speed", \
    #        "control-setting", "stall", "airplane", "piston-engine", "turbine-engine", \
    #        "rotorgear", "tow", "winch", "solve-weight"]
    
    # using this from original script
    def startDocument(self):
        self.tags = []          # not used for now
        self.counter = {}       # used for counter !
        self.items = [None]     # used for the thrust/actionpt (xml subelement) ==> no longer,
                                #  but used for flap (xml subelement)
    
    # startElement, these names (startElement, endEl. etc.) are definded by
    #  the sax parser, they have to be like this, attrs.get is used to get XML attributes
    #  see the sax api
    def startElement(self, name, attrs):
        
        # Item instance
        item = None
        
        # setting the parent item
        parent = self.items[-1]
        
        # using this from original script (adapted)
        # trying to make a better counter for naming (better than mine was before)
        if name in self.counter:
            self.counter[name] += 1
        else:
            self.counter[name] = 0
        
        
        if name == "cockpit":
            # get the center of the item
            c = (float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z")))
            # create a new instance of the class !
            item = Cockpit(c)
        
        elif name == "tank":
            c = (float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z")))
            capacity = attrs.get("capacity")
            item = Tank("YASim_Tank_{:d}".format(self.counter[name]), c, capacity)
            
            # testing counter for naming ==> it's working, making this the default
            #print("YASim_Tank_%d" % self.counter[name])
        
        elif name == "ballast":
            c = (float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z")))
            mass = attrs.get("mass")
            item = Ballast("YASim_Ballast_{:d}".format(self.counter[name]), c, mass)
            
            # testing counter for naming
            #print("YASim_Ballast_%d" % self.counter[name])
        
        elif name == "weight":
            c = (float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z")))
            item = Weight("YASim_Weight_{:d}".format(self.counter[name]), c)
        
        elif name == "gear":
            c = (float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z")))
            # get the compression value, defaults is 1
            compression = float(attrs.get("compression", 1))
            # multiplying by Z to get a vector (a point)
            up = compression * Z
            # check if the direction of compression is set
            if attrs.__contains__("upx"):
                # if yes: get it (a vector), normalize it (make it length of 1), mutliply by the compression
                up = Vector((float(attrs.get("upx")), float(attrs.get("upy")), float(attrs.get("upz")))).normalized()*compression
                
            item = Gear("YASim_Gear_{:d}".format(self.counter[name]), c, up)
        
        elif name == "hook":
            c = (float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z")))
            # get the length and angles
            length = float(attrs.get("length", 1))
            up_angle = float(attrs.get("up-angle", 0))
            down_angle = float(attrs.get("down-angle", 70))
            
            item = Hook(c, length, up_angle, down_angle)
        
        elif name == "launchbar":
            c = (float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z")))
            # get the length and angles
            length = float(attrs.get("length", 1))
            up_angle = float(attrs.get("up-angle", -45))
            down_angle = float(attrs.get("down-angle", 45))
            holdback = Vector((float(attrs.get("holdback-x", c[0])), float(attrs.get("holdback-y", c[1])), float(attrs.get("holdback-z", c[2]))))
            holdback_length = float(attrs.get("holdback-length", 2))
            
            item = Launchbar(c, length, up_angle, down_angle, holdback, holdback_length)
        
        elif name == "hitch":
            c = (float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z")))
            
            item = Hitch("YASim_Hitch_{:d}".format(self.counter[name]), c)
            
        # leaving this out for now
        #elif name == "dir":
        #    c = Vector((float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z"))))
        #    parent.set_dir(c)
        
        elif name == "thruster":
            c = Vector((float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z"))))
            v = Vector((float(attrs.get("vx")), float(attrs.get("vy")), float(attrs.get("vz"))))
            item = Thruster("YASim_Thruster_{:d}".format(self.counter[name]), c, v)
        
        elif name == "jet":
            c = Vector((float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z"))))
            rotate = float(attrs.get("rotate", 0))
            item = Jet("YASim_Jet_{:d}".format(self.counter[name]), c, rotate)
        
        elif name == "actionpt":
            c = Vector((float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z"))))
            #parent.set_actionpt(c)
            
            item = ActionPt(c)
        
        elif name == "propeller":
            c = Vector((float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z"))))
            radius = float(attrs.get("radius"))
            item = Propeller("YASim_Propeller_{:d}".format(self.counter[name]), c, radius)
        
        elif name == "fuselage":
            a = Vector((float(attrs.get("ax")), float(attrs.get("ay")), float(attrs.get("az"))))
            b = Vector((float(attrs.get("bx")), float(attrs.get("by")), float(attrs.get("bz"))))
            width = float(attrs.get("width"))
            taper = float(attrs.get("taper", 1))
            midpoint = float(attrs.get("midpoint", 0.5))
            
            item = Fuselage("YASim_Fuselage_{:d}".format(self.counter[name]), a, b, width, taper, midpoint)
        
        elif name == "rotor":
            c = Vector((float(attrs.get("x", 0)), float(attrs.get("y", 0)), float(attrs.get("z", 0))))
            norm = Vector((float(attrs.get("nx", 0)), float(attrs.get("ny", 0)), float(attrs.get("nz", 1))))    # --> what's this ?
            fwd = Vector((float(attrs.get("fx", 1)), float(attrs.get("fy", 0)), float(attrs.get("fz", 0))))      # --> what's this ?
            diameter = float(attrs.get("diameter", 10.2))
            numblades = int(attrs.get("numblades", 4))
            chord = float(attrs.get("chord", 0.3))
            twist = float(attrs.get("twist", 0))
            taper = float(attrs.get("taper", 1))
            rel_len_blade_start = float(attrs.get("rel-len-blade-start", 0))
            phi0 = float(attrs.get("phi0", 0))
            ccw = not not int(attrs.get("ccw", 0)) # --> not not ?
            
            item = Rotor("YASim_Rotor_{:d}".format(self.counter[name]), c, norm, fwd, numblades, 0.5 * diameter, chord, \
                    twist, taper, rel_len_blade_start, phi0, ccw)
            
        elif name == "wing" or name == "hstab" or name == "vstab" or name == "mstab":
            root = Vector((float(attrs.get("x")), float(attrs.get("y")), float(attrs.get("z"))))
            length = float(attrs.get("length"))
            chord = float(attrs.get("chord"))
            incidence = float(attrs.get("incidence", 0))
            twist = float(attrs.get("twist", 0))
            taper = float(attrs.get("taper", 1))
            sweep = float(attrs.get("sweep", 0))
            dihedral = float(attrs.get("dihedral", [0, 90][name == "vstab"]))
            
            item = Wing("YASim_{:s}_{:d}".format(name, self.counter[name]), root, length, chord, incidence, twist, taper, sweep, dihedral)
            
        elif name == "flap0" or name == "flap1" or name == "slat" or name == "spoiler":
            start = float(attrs.get("start"))
            end = float(attrs.get("end"))
            parent.add_flap("YASim_{:s}_{:d}".format(name, self.counter[name]), start, end)
        
        
        # appending item to list
        # ==> only appending item to list if it's not None
        # this is necessary to get the correct parent item ! (parent = self.items[-1])
        # don't know how/why this worked without this condition in the original script ????????
        if item != None:
            self.items.append(item)
        
        # debug info
        #print(item)
        



### Load the XML, i.e. start the sax parser

def load_XML(filepath):
        
    # call the clear function for load, to avoid overlaying imports, this confuses the
    #  importer (the model already there does change_csys) and is therefor not supported at the moment
    #  --> find a better solution for this ==> why, that's fine.
    delete_all_yasim()
    
    # define the parser, content handler and start it
    # the actions are defined in the above class Read_XML (which is the
    #  "content handler")
    parser=make_parser()
    parser.setContentHandler(Read_XML())
    parser.parse(open(filepath))
    
    # adaption for the FG CSYS
    if bpy.context.scene.csys == '0':
        change_csys()
    
    # and make the mirror persistent
    if bpy.context.scene.mirror == '0':
        mirror_sym(Symetric.obj_list)
    

### File Dialog (from example), creating a button etc.
###  for now the UI Panel, right panel in the viewport (called by "n")
###  is used, later, we may want it in the menu File --> Import
## UI PANEL

class UIPanel(bpy.types.Panel):
    bl_label = "YASim XML Importer"
    bl_space_type = "VIEW_3D"
    bl_region_type = "UI"
 
    def draw(self, context):
        layout = self.layout
        
        scene = context.scene
        
        layout.operator("yasim_xml.load")
        
        layout.prop(scene, "show_names")
        
        layout.prop(scene, "lock_transformations")
        
        #row = layout.row(align=True)                # using enum property instead
        #row.operator("yasim_xml.mirror")
        #row.operator("yasim_xml.unmirror")
        
        layout.prop(scene, "mirror", expand=True)
        
        layout.prop(scene, "csys", expand=False)
        
        layout.operator("yasim_xml.reload")
        
        layout.operator("yasim_xml.delete")
        

## BUTTON (Reload)

class OBJECT_OT_ReloadButton(bpy.types.Operator):
    '''Reload the last opened file. (Clears all present YASim_* elements first.)'''
    bl_idname = "yasim_xml.reload"
    bl_label = "Reload"
    
    def execute(self, context):
        # reload
        # call the clear func first
        delete_all_yasim()
        
        # call the load func with stored filepath
        stored_filepath = bpy.context.scene.filepath_last
        load_XML(stored_filepath)
        
        return {'FINISHED'}
    

## BUTTON (Load)

class OBJECT_OT_LoadXmlButton(bpy.types.Operator, ImportHelper):
    '''Import YASim FDM configuration from XML (.xml)'''
    bl_idname = "yasim_xml.load"
    bl_label = "Load (.xml)"
    
    filename_ext = ".xml"
    filter_glob = bpy.props.StringProperty(default="*.xml", options={'HIDDEN'})
    
    filepath = bpy.props.StringProperty(name="File Path", maxlen=1024, default="")
    
    def execute(self, context):
        
        ## Call the LOAD XML func here
        load_XML(self.properties.filepath)
        
        # write filepath to property
        bpy.types.Scene.filepath_last = bpy.props.StringProperty(name="Last Filepath",
                                                                    description="Last opened file (path)",
                                                                    default="")
        bpy.context.scene.filepath_last = self.properties.filepath
        
        return {'FINISHED'}
    
    def invoke(self, context, event):
        context.window_manager.fileselect_add(self)
        return {'RUNNING_MODAL'}
    

## BUTTON (Clear)

class OBJECT_OT_ClearYASimButton(bpy.types.Operator):
    '''Attention: This simply clears all objects named YASim_* !'''
    bl_idname = "yasim_xml.delete"
    bl_label = "Clear"
    
    def execute(self, context):
        
        ## Call the DELETE func here
        
        delete_all_yasim()
        
        return {'FINISHED'}


## BUTTONS Mirror

def mirror_update(self, context):
    # get's called when one of the props changes state
    
    mirror = self.mirror
    mirror_lock = self.mirror_lock
    
    if mirror == '0' and mirror_lock == False:
        # call the mirror func
        mirror_sym(Symetric.obj_list)
        # set the lock
        bpy.context.scene.mirror_lock = True
    
    elif mirror == '1' and mirror_lock == True:
        # call the unmirror func
        unmirror_sym(Symetric.obj_list)
        # unset the lock
        bpy.context.scene.mirror_lock = False
        

mirror_prop_items = [ ("0", "Mirror", "Mirror on. Object centers are moved to blender origin (0,0,0) !"), 
                        ("1", "One-sided", "Mirror off. Object centers are restored to the YASim xyz position.") ]

bpy.types.Scene.mirror = EnumProperty(name="Mirror", description="Mirror the symetrical elements.",
                                            default="1", items=mirror_prop_items, update=mirror_update)

# boolean controller property
bpy.types.Scene.mirror_lock = BoolProperty(name="Mirror lock", description="Mirror control variable",
                                            default=False)


## BUTTONS CSys

def update_csys(self, context):
    
    csys = self.csys
    csys_lock = self.csys_lock
    
    if csys == '0' and csys_lock == False:
        change_csys()
        bpy.context.scene.csys_lock = True
    
    elif csys == '1' and csys_lock == True:
        change_csys()
        bpy.context.scene.csys_lock = False
    

csys_prop_items = [ ("0", "FG", "Use the standard FlightGear coordinate system."), 
                        ("1", "YASim", "Use YASim's internal coordinate system.") ]

bpy.types.Scene.csys = EnumProperty(name="CSys", description="Coordinate System to use.",
                                            default="0", items=csys_prop_items, update=update_csys)

# boolean controller property
bpy.types.Scene.csys_lock = BoolProperty(name="CSys lock", description="CSys control variable",
                                            default=True)


# show_items checkbox control
def show_names_update(self, context):
    
    show_names = self.show_names
    if show_names == True:
        show_item_names()
    
    elif show_names == False:
        clear_item_names()
    

bpy.types.Scene.show_names = BoolProperty(name="Show Item Names", description="Show YASim_* item names in the viewport.",
                                            default=True, update=show_names_update)


# lock transformations checkbox control
def lock_transformations_update(self, context):

    setting = self.lock_transformations
    if setting == True:
        lock_transformations(True)
    elif setting == False:
        lock_transformations(False)

bpy.types.Scene.lock_transformations = BoolProperty(name="Lock Location/Rotation", description="Lock YASim_* item tranformations.",
                                                    default=True, update=lock_transformations_update)


### Registration (necessary to show up buttons etc.)
# (From blender cookbook)

def register():
    bpy.utils.register_module(__name__)
 
def unregister():
    bpy.utils.unregister_module(__name__)
 
if __name__ == "__main__":
    register()


#bpy.utils.register_module(__name__)
