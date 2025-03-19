motors = 1;
angvel = 559.0987726;

gearratio = 10:1:200;
rwheel = 0.011;


maxcargo = motors * gearratio * sin(hillAng)/rwheel; 

speed = angvel * rwheel * gearratio.^-1 ;

mass = 0.15; %in kg
rwheel = 0.011; %in m
mtorque = motors * 0.008647; %Nm

fric = 0.64; %static mu between wheels and track

%want to maximize 5 * speed * cargo - 10 * mass - motors



hillAng = atan(0.2/0.5);




