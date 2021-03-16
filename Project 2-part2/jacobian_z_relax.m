function y = jacobian_z_relax(q)
theta_1 = q(1);
theta_2 =q(2);
j1 = [-0.5*(sin(theta_1 + theta_2)+sin(theta_1)),-0.5*sin(theta_1 + theta_2),0,0];
j2 = [0.5*(cos(theta_1 + theta_2)+cos(theta_1)),0.5*cos(theta_1 + theta_2),0,0];
j3 = [0,0,-1,0];
j4 = [1,1,0,1];
J = [j1;j2;j3;j4];
J_relax = [j1;j2;j4];
y = J_relax;
end