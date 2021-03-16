clear all
close all
clc
vrclear
vrclose

load('kinematic_traj.mat');

sim('clik_transpose.mdl', t);
q_1 = ans.q;
q_1 = q_1.';
SCARA_VR_VISUALIZE(q_1, false);