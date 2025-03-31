motors = 1;
angvel = 559.0987726;

%want to find optimal gearratio + motors + wheelsize to maximize score.


%{
List of variables
gear ratio
%}

gearratio = 10:1:200;
rwheel = 0.005:0.001:0.06;

hillAng = atan(0.2/0.5);

G = 550;

[GR, RW] = meshgrid(gearratio, rwheel);


maxcargo = motors * GR * sin(hillAng)./RW;
mc =max(maxcargo, [], 'all');
M_w = 1-0.5*cos(0.5*pi*maxcargo/mc);

speed = (angvel * RW ./ GR) ;
B_1 = 250-250*cos(pi*speed/max(speed, [], 'all'));

mass = 0.15; %in kg
rwheel = 0.011; %in m
mtorque = motors * 0.008647; %Nm

fric = 0.64; %static mu between wheels and track

score = (B_1 + 2 * G).* M_w.^2;
surf(GR, RW, score);
%find(score==max(score, [], 'all'))




