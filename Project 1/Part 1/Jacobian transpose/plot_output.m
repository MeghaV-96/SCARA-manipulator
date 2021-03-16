%plot tracking

%Uncomment to plot
 %tracking = (q_1.');
 %tracking_theta = (tracking(1:4001,4));
figure(1)
subplot(4,1,1); plot(t, pd(:,1)-tracking(:,1));
subplot(4,1,2); plot(t, pd(:,2)-tracking(:,2));
subplot(4,1,3); plot(t, pd(:,3)-tracking(:,3));
subplot(4,1,4); plot(t, theta_d(:,1)-tracking_theta(:,1));

figure(2)
subplot(4,1,1); plot(t, pd(:,1)-tracking(:,1));
subplot(4,1,2); plot(t, pd(:,2)-tracking(:,2));
subplot(4,1,3); plot(t, pd(:,3)-tracking(:,3));
subplot(4,1,4); plot(t, theta_d(:,1)-tracking_theta(:,1));