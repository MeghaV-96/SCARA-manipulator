clear all
close all
clc
vrclear
vrclose

%load('kinematic_traj.mat');
load('generated_traj.mat');
second_order_trial;
sim('second_order_trial.mdl', t);
q = ans.q;
q = q.';
SCARA_VR_VISUALIZE(q, false);