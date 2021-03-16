function y = direct_kin(q) 
theta_1 = q(1);
theta_2 = q(2);
d3 = q(3);
theta_4 = q(4);
t14 = cos(theta_1)/2 + (cos(theta_1)*cos(theta_2))/2 - (sin(theta_1)*sin(theta_2))/2;
t24 = sin(theta_1)/2 + (cos(theta_1)*sin(theta_2))/2 + (cos(theta_2)*sin(theta_1))/2;
t34 = 1-d3;
pe = [t14;t24];
phi = (theta_1 + theta_2 + theta_4);
xe =[pe;phi];
y = xe;
end