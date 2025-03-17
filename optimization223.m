motors = 1;
batteries = motors * 4;
mass = 0.15; %in kg
fric = 0.64; %static mu between wheels and track

%want to maximize 5 * speed * cargo - 10 * mass - motors

f = @(s, c, m, M) 5*s*c - 10*m - M;

hillAng = atan(0.2/0.5);
