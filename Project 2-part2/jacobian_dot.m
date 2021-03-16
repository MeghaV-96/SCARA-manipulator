function y = jacobian_dot(input)
theta_1 = input(5);
theta_2 = input(6);
theta1_dot = input(1);
theta2_dot = input(2);
q_dot = input(1:4);

j1 = [- (cos(theta_1)*theta1_dot)/2 - (cos(theta_1 + theta_2)*(theta1_dot + theta2_dot))/2, -(cos(theta_1 + theta_2)*(theta1_dot+theta2_dot))/2, 0, 0];
j2 =  [- (sin(theta_1)*theta1_dot)/2 - (sin(theta_1 + theta_2)*(theta1_dot+theta2_dot))/2, -(sin(theta_1 + theta_2))*(theta1_dot+theta2_dot)/2, 0, 0];
j3 = [0,0,0,0];
J_dot = [j1;j2;j3];
y = J_dot; %* q_dot;
end