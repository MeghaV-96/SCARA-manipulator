%Differentiation of Jacobian
function y = jacobian_dot(input)
theta_1 = input(1);
theta_2 = input(2);
theta_1_dot =input(5);
theta_2_dot = input(6);

j11 = (sin(theta_1)*sin(theta_2)*theta_1_dot)/2 - (cos(theta_1)*cos(theta_2)*theta_1_dot)/2 - (cos(theta_1)*cos(theta_2)*theta_2_dot)/2 - (cos(theta_1)*theta_2_dot)/2 + (sin(theta_1)*sin(theta_2)*theta_2_dot)/2;
j12 = (sin(theta_1)*sin(theta_2)*theta_1_dot)/2 - (cos(theta_1)*cos(theta_2)*theta_2_dot)/2 - (cos(theta_1)*cos(theta_2)*theta_1_dot)/2 + (sin(theta_1)*sin(theta_2)*theta_2_dot)/2;
j13 = 0;
j14 = 0;

j21 = - (sin(theta_1 )*theta_1_dot)/2 - (cos(theta_1 )*sin(theta_2 )*theta_1_dot)/2 - (cos(theta_2 )*sin(theta_1 )*theta_1_dot)/2 - (cos(theta_1 )*sin(theta_2 )*theta_1_dot)/2 - (cos(theta_2 )*sin(theta_1 )*theta_2_dot)/2;
j22 = - (cos(theta_1 )*sin(theta_2 )*theta_1_dot)/2 - (cos(theta_2 )*sin(theta_1 )*theta_1_dot)/2 - (cos(theta_1 )*sin(theta_2 )*theta_2_dot)/2 - (cos(theta_2 )*sin(theta_1 )*theta_2_dot)/2;
j23 = 0;
j24 = 0;

j1 = [j11,j12,j13,j14];
j2 = [j21,j22,j23,j24];
j3 = [0,0,0,0];
j4 = [0,0,0,0];

J_dot =[j1;j2;j3;j4];
y = (J_dot * input(5:8));
end