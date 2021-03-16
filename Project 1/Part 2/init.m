clear all
close all
clc
vrclear
vrclose

load('kinematic_traj.mat');
clik_phi_inverse;
sim('clik_phi_inverse.mdl', t);
q = q_relax.data;
q = q.';
SCARA_VR_VISUALIZE(q, false);