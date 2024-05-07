%clear
clear
clc
close all

%% Second Order UnderDamped System
%G(s) = 1/s^2+3s+10

M = 1;
B = 3;
K = 10;

G_num = [1];
G_den = [M B K];
G = tf(G_num,G_den);

%step response
step(G,0:0.1:20)

%clear
clear
clc
close all

%% Define Transfer Function
% Mechanical Translational System
%G(s) = 10s^4+8s^3+6s^2+4s+2/s^5+3s^4+5s^3+7s^2+9s+1

A = 1;
B = 2;
C = 3;
D = 4;
E = 5;
F = 6;
G = 7;
H = 8;
I = 9;
J = 10;

G_num = [J H F D B];
G_den = [A C E G I A];
G = tf(G_num,G_den);

%step response
step(G,0:0.1:20)