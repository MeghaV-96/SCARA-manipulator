clear all;
p0 = [0 ; -0.8; 0];
p1 = [0 ; -0.8; 0.5];
p2 = [0.5; -0.6; 0.5];
p3 = [0.8; 0; 0.5];
p4 = [0.8; 0; 0];
t0 = 0;
t1 = 0.6;
t2 = 2.0;
t3 = 3.4;
t4 = 4.0;
delta_t = 0.2;%anticipation time

%Norm Calculation
n1 = norm(p1-p0);   
n2 = norm(p2-p1);
n3 = norm(p3-p2);
n4 = norm(p4-p3);


t = 0:0.001:4;      %Simulation time

%parameter calculation
[s1,s1_dot,s1_dot_dot,~] = Traj(n1,0,t1,t0);
[s2,s2_dot,s2_dot_dot,~] = Traj(n2,0,t2,t1-delta_t);
[s3,s3_dot,s3_dot_dot,~] = Traj(n3,0,t3,t2-delta_t);
[s4,s4_dot,s4_dot_dot,~] = Traj(n4,0,t4,t3-delta_t);

%position
for i = 1:length(t)
     pd(:,i) = p0 + s1(i)*((p1-p0)/norm(p1-p0)) + s2(i)*((p2-p1)/norm(p2-p1)) + s3(i)*((p3-p2)/norm(p3-p2)) + s4(i)*((p4-p3)/norm(p4-p3));
end


%velocity
for i = 1:length(t)
    pd_dot(:,i) = s1_dot(i)*((p1-p0)/n1) + s2_dot(i)*((p2-p1)/n2) + s3_dot(i)*((p3-p2)/n3) + s4_dot(i)*((p4-p3)/n4);
end


%acceleration
for i = 1:length(t)
    pd_dot_dot(:,i) = s1_dot_dot(i)*((p1-p0)/n1) + s2_dot_dot(i)*((p2-p1)/n2) + s3_dot_dot(i)*((p3-p2)/n3) + s4_dot_dot(i)*((p4-p3)/n4);
end
%Plot Generation
%Trajectory plot
figure(1);
plot3(pd(1,:),pd(2,:),pd(3,:));
title('Robot Operational Space Trajectory')
grid on;
xlabel('x');
ylabel('y');
zlabel('z');

%Position plots
figure(2);
subplot(3,1,1);
plot(pd(1,:));
xlabel('t');
title('position along x');
subplot(3,1,2);
plot(pd_dot(2,:));
xlabel('t');
title('position along y');
subplot(3,1,3);
plot(pd_dot(3,:));
xlabel('t');
title('position along z');

%Velocity plot
figure(3);
subplot(3,1,1);
plot(pd_dot(1,:));
xlabel('t');
title('velocity along x');
subplot(3,1,2);
plot(pd_dot(2,:));
xlabel('t');
title('velocity along y');
subplot(3,1,3);
plot(pd_dot(3,:));
xlabel('t');
title('velocity along z');

%Acceleration plot
figure(4);
subplot(3,1,1);
plot(pd_dot_dot(1,:));
xlabel('t');
title('acceleration in x');
subplot(3,1,2);
plot(pd_dot_dot(2,:));
xlabel('t');
title('acceleration in y');
subplot(3,1,3);
plot(pd_dot_dot(3,:));
xlabel('t');
title('acceleration in z');


% Note: uncomment this section to save the .mat file at a desired
% location.The file generated on my laptop is included in the Part 1
% folder.

% %Generation of .mat file: generated_traj
% pd = pd.';
% pd_dot = pd_dot.';
% pd_dot_dot = pd_dot_dot.';
% t = t.';
% Tc = 1.0000e-03;
% Ts = 1.0000e-03;
% q0 = [-0.9273;-1.2870;1.0;2.2143];
% q0_dot = [0;0;0;0];
% theta_d = zeros(4001,1);
% theta_d_dot = zeros(4001,1);
% theta_d_dot_dot = zeros(4001,1);
% save('C:\Users\Megha Veerendra\Desktop\Project 3\copy\Project 3\Part 1\generated_traj.mat','pd','pd_dot','pd_dot_dot','theta_d','theta_d_dot','theta_d_dot_dot','Tc','Ts','t','q0','q0_dot');


