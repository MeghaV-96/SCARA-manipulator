%q_dot_dot calculation
syms theta_1;
syms theta_2;
syms d3;
syms theta_4;

t14 = cos(theta_1)/2 + (cos(theta_1)*cos(theta_2))/2 - (sin(theta_1)*sin(theta_2))/2;
t24 = sin(theta_1)/2 + (cos(theta_1)*sin(theta_2))/2 + (cos(theta_2)*sin(theta_1))/2;
t34 = 1-d3;
pe = [t14;t24;t34];
o = [0.4,-0.7,0.5];
w11 = (t14-0.4)^2; 
w12 = (t24+0.7)^2;
w13 = (t34-0.5)^2;
w = [w11+w12+w13];
wt1_dot = jacobian(w,theta_1);
wt1_dot_dot = jacobian(wt1_dot,theta_1);
wt2_dot = jacobian(w,theta_2);
wt2_dot_dot = jacobian(wt2_dot,theta_2);
wd3_dot = jacobian(w,d3);
wd3_dot_dot = jacobian(wd3_dot,d3);
%wd3_dot_dot = -2;
wt4_dot = jacobian(w,theta_4);
wt4_dot_dot = jacobian(wt4_dot,theta_4);

%q0_dot_dot = 
