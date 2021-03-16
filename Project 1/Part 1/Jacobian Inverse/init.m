clear all
close all
clc
vrclear
vrclose

load('kinematic_traj.mat');
clik_inverse;
sim('clik_inverse.mdl', t);
q_1 = q.data;
q_1 = q_1.';
SCARA_VR_VISUALIZE(q_1, false);