% Ryan Newport
% Module 1 Assignment
% Problem 1.2
% EN.525.627.82.SU18
% 06/05/2018
clc;clear;close all;

% define parameters
f = 1000;  % Frequency in Hz
n = 1:50;
dt = 5e-5;

%% Part A
% create signal
% SC(t) = SC(n*dt) = sin(2*pi*f*n*dt)
SC = sin(2*pi*f*n*dt);

% create time vectorfd 
t = n*dt;

% convert time vector to ms for plot readability
t_msec = t * 1e3;

figure;
plot(t_msec,SC,'-b');
xlabel('time (msec)')
ylabel('SC(t)')
title({'SC(t) = sin(2\pift)', 'f = 1000 Hz'})
grid on;

%% Part B
% find index where t = 1.3 msec
ind = find(abs(t_msec-1.3) < 0.001);

display(SC(ind))
