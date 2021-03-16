function xe = direct_kin(q)

t1 = q(1);
t2 = q(2);
d3 = q(3);
t4 = q(4);

T11 = cos(t1+t4+t2);
T12 = sin(t1+t2+t4);
T13 = 0;
T14 = 0.5*cos(t1) + 0.5*cos(t1+t2);
T21 = sin(t1+t2+t4);
T22 = -cos(t4+t1+t2);
T23 = 0;
T24 = 0.5*sin(t1+t2) + 0.5*sin(t1);
T31 = 0;
T32 = 0;
T33 = -1;
T34 = 1-d3;
T41 = 0;
T42 = 0;
T43 = 0;
T44 = 1;

Kinematics = [T11 T12 T13 T14;
              T21 T22 T23 T24;
              T31 T32 T33 T34;
              T41 T42 T43 T44];
xe =[T14; T24; T34 ; (t1+t2+t4)];
end