function y = u(q,q_dot)
theta_1 = q(1);
theta_2 = q(2);
d3 = q(3);
theta_4 = q(4);

theta_1_dot  = q_dot(1);
theta_2_dot = q_dot(2);
d3_dot = q_dot(3);
theta_4_dot = q_dot(4);

b1 = [-(45*sin(theta_2)*theta_2_dot)/2, -(45*sin(theta_2)*theta_2_dot)/4, 0, 0];
b2 = [-(45*sin(theta_2)*theta_2_dot)/4,0, 0, 0];
b3 = [0,0,0,0];
b4 = [0,0,0,0];
B_q_dot = [b1;b2;b3;b4];
% x = [d((q_dot.' * B(q) *q_dot))/dq.]'
x  = -0.5*[0;- theta_1_dot*((45*theta_1_dot*sin(theta_2))/2 + (45*theta_2_dot*sin(theta_2))/4) - (45*theta_1_dot*theta_2_dot*sin(theta_2))/4;0;0];
g = [0;0;2943/20;0];

N = (B_q_dot*q_dot)+x+g;

y = N;
end
