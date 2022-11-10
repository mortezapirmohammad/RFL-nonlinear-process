% %FUEL CELL system
clc
close all;
clear all;
Rm=8.3144;
Fm=965485;
Pop=10110^3;
Ac=136.7;
Tm=353;
Va=6.495;
Vc=12.26;
Nm=5;
Kr=Nm/4*Fm
% 
% 
% 
A=[0 0 0;0 0 0;0 0 0];
B=[Rm*Tm/Va    0    (-Rm*Tm/Va)*2*Kr*Ac; 0  (Rm*Tm)/Vc  (-Rm*Tm/Vc)*Kr*Ac;0  0  (Rm*Tm/Vc)*2*Kr*Ac];


%% manipulator system equations
clc
close all
clear all

j1=0.04624;
j2=0.02545;
j3=0.03616;
l1=0.3;
l2=0.3;
l3=0.3;
m1=0.46;
m2=0.34;
m3=0.34;
g=9.81;


A=[0 1 0 0 0 0;0 0 0 0 0 0;0 0 0 1 0 0;0 0 0 0 0 0;0 0 0 0 0 1;0 0 0 0 0 0];
B=[0 0 0;1/(j1+j2+j3) 0 0;0 0 0;0 1/(m2+4*m3) 0; 0 0 0;0 0 1/m3];
K=[200 200 0 0 0  0;0 0 500 500 0 0;0 0 0 0 600 600]
k1=[200 200 0 0 0  0];
k2=[0 0 500 500 0 0];
k3=[0 0 0 0 600 600];


