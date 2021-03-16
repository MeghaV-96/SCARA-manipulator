syms d0;
syms theta_1;
syms theta_2;
syms d3;
syms theta_4;

%Transformation matrices obtained from the DH parameters:
T_0_1 = [cos(theta_1),-sin(theta_1),0,0.5*cos(theta_1);sin(theta_1),cos(theta_1),0,0.5*sin(theta_1);0,0,1,1;0,0,0,1];
T_1_2 = [cos(theta_2),-sin(theta_2),0,0.5*cos(theta_2);sin(theta_2),cos(theta_2),0,0.5*sin(theta_2);0,0,1,0;0,0,0,1];
T_2_3 = [1,0,0,0;0,1,0,0;0,0,1,-d3;0,0,0,1];
T_3_4 = [cos(theta_4),-sin(theta_4),0,0;sin(theta_4),cos(theta_4),0,0;0,0,1,0;0,0,0,1];

T_0_2 = T_0_1*T_1_2;
T_0_3 = T_0_2*T_2_3;
T_0_4 = T_0_3*T_3_4;

% cross products:
z0 = [0;0;1];
z1 = T_0_1(1:3,3);
z2 = T_0_2(1:3,3);
z3 = T_0_3(1:3,3);

pb = [0;0;1];
p1 = T_0_1(1:3,4);
p2 = T_0_2(1:3,4);
p3 = T_0_3(1:3,4);
p4 = T_0_4(1:3,4);

%Cross product
c0 = cross(z0,(p4-pb));
c1 = cross(z1,(p4-p1));
c3 = cross(z3,(p4-p3));

%Jacobian Computation
j1 = [c0;z0];
j2 = [c1;z1];
j3 = [z2;0;0;0];
j4 = [c3;z3];

J = [j1,j2,j3,j4];

J = J(1:4,1:4)%Jacobian

J = inv(J_inv)%Jacobian Inverse
J_T = J.'%Jacobian Transpose
J_relax_phi = J(1:3,1:4)% Jacobian for phi relax
 

