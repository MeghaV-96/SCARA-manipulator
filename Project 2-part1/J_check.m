syms theta_1(t);
syms theta_2(t);
syms d3(t);
syms theta_4(t)
j11 = (2*(cos(theta_1)*cos(theta_2) - sin(theta_1)*sin(theta_2)))/(sin(theta_2)*cos(theta_1)^2 + sin(theta_2)*sin(theta_1)^2);
j12 = (2*(cos(theta_1)*sin(theta_2) + cos(theta_2)*sin(theta_1)))/(sin(theta_2)*cos(theta_1)^2 + sin(theta_2)*sin(theta_1)^2);
j13 = 0; 
j14 = 0;

j21 = -(2*(cos(theta_1) + cos(theta_1)*cos(theta_2) - sin(theta_1)*sin(theta_2)))/(sin(theta_2)*cos(theta_1)^2 + sin(theta_2)*sin(theta_1)^2);
j22 = -(2*(sin(theta_1) + cos(theta_1)*sin(theta_2) + cos(theta_2)*sin(theta_1)))/(sin(theta_2)*cos(theta_1)^2 + sin(theta_2)*sin(theta_1)^2);
j23 = 0;
j24 = 0;

j31 = 0;
j32 = 0;
j33 = -1;
j34 = 0;

j41 = (2*cos(theta_1))/(sin(theta_2)*cos(theta_1)^2 + sin(theta_2)*sin(theta_1)^2);
j42 = (2*sin(theta_1))/(sin(theta_2)*cos(theta_1)^2 + sin(theta_2)*sin(theta_1)^2);
j43 = 0;
j44 = 1;

J_inv = [j11,j12,j13,j14;j21,j22,j23,j24;j31,j32,j33,j34;j41,j42,j43,j44];
J = inv(J_inv);
J_dot = diff(J);