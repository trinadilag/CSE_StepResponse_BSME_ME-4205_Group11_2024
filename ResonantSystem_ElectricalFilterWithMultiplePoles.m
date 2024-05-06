% Clear
clear
clc
close all


%% Define Transfer Function
% Resonant System
% G(s)=(8*s^6 + 7*s^5 + 6*s^4 + 4*s^2 + 3s + 2) / (s^7 + 2*s^6 + 3*s^5 + 4*s^4 + 5*s^3 + 6*s^2 + 7*s + 1)

A = 8;
B = 7;
C = 6;
D = 0;
E = 4;
F = 5;
G = 2;
a = 1;
b = 2;
c = 3;
d = 4;
e = 5;
f = 6;
g = 7;
h = 1;

G5_num = [A,B,C,D,E,F,G];
G5_den = [a,b,c,d,e,f,g,h];
G5 = tf(G5_num,G5_den)

% step response
step(G5,0:0.1:20)



%% Define Transfer Function
% Electrical Filter with Multiple Poles
% G(s) = 4*s^3 + 3*s^2 + 2*s + 1 / s^4 + 2*s^3 + 3*s^2 + 4*s + 1


A = 4;
B = 3;
C = 2;
D = 1;
a = 1;
b = 2;
c = 3;
d = 4;
e = 1;

G6_num = [A,B,C,D];
G6_den = [a,b,c,d,e];
G6 = tf(G6_num,G6_den)

% step response
step(G6,0:0.1:20)