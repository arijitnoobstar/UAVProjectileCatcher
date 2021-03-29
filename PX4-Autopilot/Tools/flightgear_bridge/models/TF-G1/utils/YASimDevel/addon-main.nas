# addon-main.nas --- Nasal interface file for FlightGear add-on YASimDevel
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
var namespace = "FDM";
   
var unload = func {
    print("YaSimDevel unload()");
    if (globals[namespace] != nil and globals[namespace]["YasimCanvas"] != nil) {
        var err=[];
        call(globals[namespace].YasimCanvas.del, [], err);
        # if (size(err)) debug.printerror(err);
    }
};

var main = func(addon) {
    io.load_nasal(addon.basePath ~ "/yasim.nas", namespace);
}
