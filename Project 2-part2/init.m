clear all
close all
clc
vrclear
vrclose

load('kinematic_traj.mat');
%Modified pd,pd_dot,pd_dot_dot to account for redundancy by elinmiationof z
%column.
pd_relax = pd(1:4001,1:2);
pd_dot_relax = pd_dot(1:4001,1:2);
pd_dot_dot_relax = pd_dot_dot(1:4001,1:2);
clik_z_inverse;
sim('clik_z_inverse.mdl', t);
q = ans.q_out;
q = q.';
SCARA_VR_VISUALIZE(q, false);