clear all
close all
clc
vrclear
vrclose

load('kinematic_traj.mat');
clik_inverse;
sim('clik_inverse.mdl', t);
q = squeeze(q_out);
SCARA_VR_VISUALIZE(q, false);