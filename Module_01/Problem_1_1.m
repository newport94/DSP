% Ryan Newport
% Module 1 Assignment
% Problem 1.1
% EN.525.627.82.SU18
% 06/04/2018
clc;clear;close all;

%% Part A
% create SA vector
n = 1:10;
SA = 2*sin(n*pi/5);

% plot SA as Discrete Time Signal
figure; hold on; grid on;
stem(n,SA);
title('Problem 1.1(a):  SA[n] = 2sin(n\pi/5)')
xlabel('n (index)')
ylabel('SA[n]')

%% Part B
% create SB vector
SB = zeros(size(n));
SB(2:3) = 1;
SB(7:8) = 2;

% plot SB as Discrete Time Signal
figure; hold on; grid on;
stem(n,SB,'r');
title('Problem 1.1(b):  SB[n]')
xlabel('n (index)')  
ylabel('SB[n]')
ylim([0 2.5])