function[s,s_dot,s_dot_dot,t] = Traj(sf,si,tf,ti)
% sf = arc length for final point of segment
% si = arc length for initial point of segment
% tf = time for final point
% ti = time for initial point
t=0:0.001:4;
q_d_d= (5*abs(sf - si)/(((tf + ti)^2)-4*ti*tf));
tc = (tf + ti)/2 - (1/2)*sqrt((((tf + ti)^2)*q_d_d -4*(sf - si + q_d_d*ti*tf))/q_d_d);
disp(tc);
t_final = 4;
for i = 1:length(t)
    if (t(i) < ti)
        s(i) = 0;
        s_dot(i) = 0;
        s_dot_dot(i) = 0;
    elseif (ti <= t(i) && t(i) <= tc)
            s(i) = si + (1/2)*q_d_d*((t(i) - ti)^2);
            s_dot(i) = q_d_d*(t(i) - ti);
            s_dot_dot(i) = q_d_d;
    elseif (tc < t(i) && t(i) <= (tf - tc + ti))
        s(i)= si + q_d_d*(tc - ti)*(t(i) - ti -(tc - t(i))^2);
        s_dot(i) = q_d_d*(tc - ti);
        s_dot_dot(i) = 0;
    elseif ((tf - tc + ti) < t(i) && t(i) <= tf)
        s(i) = sf - (1/2)*q_d_d*((tf - t(i))^2);
        s_dot(i) = q_d_d*(tf - t(i));
        s_dot_dot(i)= -q_d_d;
    elseif (t(i)>tf  && t(i)<=t_final)
        s(i) = sf;
        s_dot(i) = 0;
        s_dot_dot(i) = 0;
    end 
end
