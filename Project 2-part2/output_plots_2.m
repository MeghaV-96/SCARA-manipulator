%Output Plots
q = ans.q_out;
ep = ans.e;
ev = ans.e_dot;
ea = ans.e_dot_dot;
figure(1)
e_p = ep;
subplot(4,1,1); plot(t,e_p(:,1));
subplot(4,1,2); plot(t, e_p(:,2));
subplot(4,1,3); plot(t, e_p(:,3));

%Velocity error e_dot
figure(2)
e_v = squeeze(ev);
subplot(4,1,1); plot(t,e_v(1,:));
subplot(4,1,2); plot(t, e_v(2,:));
subplot(4,1,3); plot(t, e_v(3,:));

%Accelaration error e_dot_dot
figure(3)
e_a = squeeze(ea);
subplot(4,1,1); plot(t,e_a(1,:));
subplot(4,1,2); plot(t, e_a(2,:));
subplot(4,1,3); plot(t, e_a(3,:));

%Joint plots q
figure(4)
subplot(4,1,1); plot(t,q(:,1));
subplot(4,1,2); plot(t, q(:,2));
subplot(4,1,3); plot(t, q(:,3));
subplot(4,1,4); plot(t, q(:,4));