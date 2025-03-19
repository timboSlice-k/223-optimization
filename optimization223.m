motors = 1;
angvel = 559.0987726;

gearratio = 10:1:200;
rwheel = 0.011;

hillAng = atan(0.2/0.5);

G = 550;


maxcargo = motors * gearratio * sin(hillAng)/rwheel;
M_w = 1-0.5*cos(0.5*pi*maxcargo/max(maxcargo));

speed = angvel * rwheel * gearratio.^-1 ;
B_1 = 250-250*cos(pi*speed/max(speed));

mass = 0.15; %in kg
rwheel = 0.011; %in m
mtorque = motors * 0.008647; %Nm

fric = 0.64; %static mu between wheels and track

score = (B_1 + 2 * G) * M_w^2;





