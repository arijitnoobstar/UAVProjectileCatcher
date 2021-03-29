var looptime = 0.1;
var throttle = "controls/engines/engine[0]/throttle";
var rpm = "engines/engine[0]/rpm-c";
var idle_rpm =700;
var maxRPM = 5400;
var eng_accel = 60;
var engon ="engines/engine[0]/running";
var leftwheelF= "controls/gear/gear[0]/throttle";
var rightwheelF= "controls/gear/gear[1]/throttle";
var leftwheelR= "controls/gear/gear[2]/throttle";
var rightwheelR= "controls/gear/gear[3]/throttle";
var difflockF= "controls/gear/axle[0]/difflock";
var difflockR= "controls/gear/axle[1]/difflock";
var fwd= "controls/gear/fourwd";
var aileron = "controls/flight/aileron";
var mousesteer = "controls/flight/mousesteer";
var brake = "controls/gear/brake-left";

var init = func {
		if (getprop("controls/engines/engine[0]/on-startup-running")) {
		magicstart();
		}
settimer(main_loop, looptime);
}

var main_loop = func {
  if (getprop (mousesteer) ) {
    elevator = getprop ("controls/flight/elevator");
    if (elevator > 0 ) {
      setprop ( throttle, elevator );
      setprop ( brake, 0 );
    } else {
      setprop ( throttle, 0 );
      setprop ( brake, abs (elevator) );
    }
  }
  if (engon) {
 #   print ("engine running");
  #  update_eng_state();
 #   update_transmission();
  }
  settimer(main_loop, looptime);
}

var update_eng_state = func {
  var c_throttle = getprop (throttle);
#  print (c_throttle);
  var currentRPM = getprop (rpm );
#  print (currentRPM);
  var target_rpm = c_throttle * maxRPM;
  if (target_rpm > currentRPM) {
    interpolate (rpm, currentRPM + eng_accel,  looptime);
  } else {
    if (currentRPM > idle_rpm ) {
      interpolate (rpm, currentRPM - eng_accel,  looptime);
    }
  }
}

var update_transmission = func {
  var ail = getprop (aileron);
  var diffR = getprop (difflockR);
  var diffF = getprop (difflockF);
# rear axle
  if (ail > 0.2 and diffR != 1) {
    setprop (rightwheelR, 0);
    setprop (leftwheelR, getprop(rpm)*0.00047);
  } else {
    if ( -0.2 > ail  and diffR != 1) {
      setprop (leftwheelR, 0);
      setprop (rightwheelR, getprop(rpm)*0.00047);
    } else {
      setprop (leftwheelR, getprop(rpm)*0.0002);
      setprop (rightwheelR, getprop(rpm)*0.0002);
    }			
  }
  if (getprop (fwd)) {
    if (ail > 0.2 and diffF != 1) {
      setprop (rightwheelF, 0);
      setprop (leftwheelF, getprop(rpm)*0.00047);
    } else {
      if ( -0.2 > ail  and diffF != 1) {
        setprop (leftwheelF, 0);
        setprop (rightwheelF, getprop(rpm)*0.00047);
      } else {
        setprop (leftwheelF, getprop(rpm)*0.0002);
        setprop (rightwheelF, getprop(rpm)*0.0002);
      }			
    }
  }
}

var magicstart = func {
		setprop (rpm, idle_rpm);
		setprop (engon, 1);
}

#Listener

setlistener("/sim/signals/fdm-initialized",init);
