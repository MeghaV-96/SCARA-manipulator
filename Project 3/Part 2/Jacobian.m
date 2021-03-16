function y = Jacobian(q)

t1 = q(1,1);
t2 = q(2,1);
d3 = q(3,1);
t4 = q(4,1);

J11 = -0.5*sin(t1)-0.5*sin(t1+t2);
J12 = -0.5*sin(t1+t2);
J13 = 0;
J14 = 0;
J21 = 0.5*cos(t1)+0.5*cos(t1+t2);
J22 = 0.5*cos(t1+t2);
J23 = 0;
J24 = 0;
J31 = 0;
J32 = 0;
J33 = -1;
J34 = 0;
J41 = 1;
J42  = 1;
J43 = 0;
J44 = 1;

Jacobian = [J11 J12 J13 J14;
            J21 J22 J23 J24;
            J31 J32 J33 J34;
            J41 J42 J43 J44];
y = Jacobian;
end