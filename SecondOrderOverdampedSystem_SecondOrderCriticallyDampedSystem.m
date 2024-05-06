% Clear
clear
clc
close all

%% SECOND ORDER OVERDAMPED SYSTEM
% Description: Represents an overdamped system 
% G(s) = (1) /
% (s^2+5s+6)

A = 1;

B = 1;
C = 5;
D = 6;

G2_num = [A];
G2_den = [B C D];
G2 = tf(G2_num,G2_den)

% Step Response
step(G2,0:0.1:20)



%% SECOND ORDER CRITICALLY DAMPED SYSTEM
% Description: Represents a critically damped system
% G(s) = (1) /
% (s^2+2s+1)

A = 1;

B = 1;
C = 2;
D = 1;

G3_num = [A];
G3_den = [B C D];
G3 = tf(G3_num,G3_den)

% Step Response
step(G3,0:0.1:20)