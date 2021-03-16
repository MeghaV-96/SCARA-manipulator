%error plots
% Position Error e
figure(1)
e_p = squeeze(e);
subplot(4,1,1); plot(t,e_p(1,:));
subplot(4,1,2); plot(t, e_p(2,:));
subplot(4,1,3); plot(t, e_p(3,:));
subplot(4,1,4); plot(t, e_p(4,:));

%Velocity error e_dot
figure(2)
e_v = squeeze(e_dot);
subplot(4,1,1); plot(t,e_v(1,:));
subplot(4,1,2); plot(t, e_v(2,:));
subplot(4,1,3); plot(t, e_v(3,:));
subplot(4,1,4); plot(t, e_v(4,:));

%Accelaration error e_dot_dot
figure(3)
e_a = squeeze(e_dot_dot);
subplot(4,1,1); plot(t,e_a(1,:));
subplot(4,1,2); plot(t, e_a(2,:));
subplot(4,1,3); plot(t, e_a(3,:));
subplot(4,1,4); plot(t, e_a(4,:));

%Joint plots q
figure(4)
q = squeeze(q_out);
subplot(4,1,1); plot(t,q(1,:));
subplot(4,1,2); plot(t, q(2,:));
subplot(4,1,3); plot(t, q(3,:));
subplot(4,1,4); plot(t, q(4,:));