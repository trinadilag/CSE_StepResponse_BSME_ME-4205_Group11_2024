%Clear
clear
clc
close all

%% Define Transfer Function
% 4. First Order System
% G(s) = 1 / s+1

A = 1;
a = 1;
b = 1;

G4_num = A;
G4_den = [a b];

% Transfer Function
G4 = tf(G4_num, G4_den);

%% Define Transfer Function
% 7. Plant with Time Delay
% G(s) = (6*s^4 + 5*s^3 + 4*s^2 + 3*s + 2) / (s^5 + 2*s^4 + 3*s^3 + 4*s^2 + 5*s + 1)

A = 6;
B = 5;
C = 4;
D = 3;
E = 2;
a = 1;
b = 2;
c = 3;
d = 4;
e = 5;
f = 1;

G7_num = [A B C D E];
G7_den = [a b c d e f];

% Transfer Function
G7 = tf(G7_num, G7_den);

%% Step Response
step (G4, 0:0.1:20)
figure
step (G7, 0:0.1:20)