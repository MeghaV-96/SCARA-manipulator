%error plots

q = ans.q;
q_dot = ans.q_dot;
e = ans.e;
e_dot = ans.e_dot;

% Position error plots (e)
figure(1)

subplot(4,1,1); plot(t,e(:,1));
title('POSITION ERROR PLOTS');
xlabel('t');
subplot(4,1,2); plot(t, e(:,2));
xlabel('t');
subplot(4,1,3); plot(t, e(:,3));
xlabel('t');
subplot(4,1,4); plot(t, e(:,4)); 
xlabel('t');

%Velocity error plots (e_dot)
figure(2)

subplot(4,1,1); plot(t,e_dot(:,1));

title('VELOCITY ERROR PLOTS ');
xlabel('t');
subplot(4,1,2); plot(t, e_dot(:,2));
xlabel('t');
subplot(4,1,3); plot(t, e_dot(:,3));
xlabel('t');
subplot(4,1,4); plot(t, e_dot(:,4));
xlabel('t');


%Joint space trajectories (q)
figure(3)
subplot(4,1,1); plot(t,q(:,1));
title('TRAJECTORIES OF JOINT SPACE VARIABLES','theta_1');
xlabel('t');
subplot(4,1,2); plot(t, q(:,2));
title('theta_2');
xlabel('t');
subplot(4,1,3); plot(t, q(:,3));
title('d3');
xlabel('t');
subplot(4,1,4); plot(t, q(:,4));
title('theta_4');
xlabel('t');