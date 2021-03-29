var g_dt = 0;
var gyro_crashed = 0;

var init = func {
	
	
	print("Init Nasal Gyro ...done");
	
	main_loop();
}

# Setup listener call to start update loop once the fdm is initialized
setlistener("sim/signals/fdm-initialized", init);

var reinit = func {
	
	g_dt = 0;
	gyro_crashed = 0;
	setprop("/controls/rotor/brake", 0);
	print("ReInit Nasal Gyro ...done");
	
}
setlistener("/sim/signals/reinit", reinit);



#main loop
var main_loop = func {

	engine_values();
		
	check_g_load();
	check_vne_structure();
	
	check_rotor_rpm();
	
	settimer(main_loop, 0);
}

var check_g_load = func {
	
	
	var g_load = getprop("/accelerations/pilot-g");
	
	if(g_load!=nil and g_load>4.1 )
	{
		screen.log.write("Too much G load !!!", 1, 0, 0);
	}
	
	if(g_load!=nil and g_load<0)
	{
		screen.log.write("Negative G load !!!", 1, 0, 0);
	}
	
}

var	check_vne_structure = func {
	var kias = getprop("velocities/airspeed-kt");
	if(kias!=nil and kias>110){
		screen.log.write("VNE exceeded !!!", 1, 0, 0);
	}
}

var	check_rotor_rpm = func {
	if (gyro_crashed>0){
		#setprop("/controls/flight/aileron",-1);
		#setprop("/controls/flight/elevator",-1);
		#setprop("/controls/flight/maxreltorque",-1);
		#setprop("/controls/rotor/brake", 1.0)
	}
	else {
		var rpm = getprop("/rotors/main/rpm");
		if(rpm!=nil and rpm>1200){
			#setprop("/sim/sound/crash",1);
			#setprop("/sim/messages/copilot","Rotor overspeed !!!");
			screen.log.write("Rotor overspeed !!!", 1, 0, 0);
			
			#uncomment when you want to crash
			#gyro_crashed = 1;
		}
		
	}
	
}


var	apply_rotor_brake = func {

	if (gyro_crashed<1){
		interpolate("/controls/rotor/brake", 1.0, 2);
		#print("apply_rotor_brake");
	}
}

var	release_rotor_brake = func {

	if (gyro_crashed<1){
		interpolate("/controls/rotor/brake", 0.0, 2);
		#print("release_rotor_brake");
	}
	
}

var engine_values = func {
#
# Since we use egt, estimated cht and rpm values more than once, might as well 
# retreive and calc once instead of repeating getprop which may be slower.
#
	var rev0 = 0;
	var echt0 = 0;
	var eoilt0 = 0;
	
	rev0 = getprop("/engines/engine[0]/rpm");
	echt0 = getprop("/engines/engine[0]/oil-temperature-degf");

	if (echt0!=nil)
		eoilt0 = (echt0*0.405);
	
	var eoilp0=((1*rev0)/(0.01+(eoilt0*0.082))*0.215);

	if (eoilp0 > 130) {
	setprop("/engines/engine[0]/oil-pressure-psi", 130);
	}
	else {
	setprop("/engines/engine[0]/oil-pressure-psi", eoilp0);
	}

}



