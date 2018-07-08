% Ryan Newport
% Module 2 Assignment
% Problem 2.7
% EN.525.627.82.SU18
% 06/12/2018
clc;clear;close all;

%% Part A
% n = 0:100;
% a = [1 -0.5 0.25 0];
% b = [1 2 0 1];
% h = impz(b,a,n);
% 
% figure; subplot(211);
% stem(n,h);
% title('Problem 7a Impulse Response')
% xlabel('n'); ylabel('h[n]');
% grid on;
% 
% subplot(212);
% stem(n,h);
% title('Impulse Response zoom ')
% xlabel('n'); ylabel('h[n]');
% xlim([0 20])
% grid on;

a = [1 -0.5 0.25 0];
b = [1 2 0 1];
[x,n] = impSeq(0,0,100);
h = filter(b,a,x);

figure; subplot(211);
stem(n,h);
title('Problem 7a Impulse Response')
xlabel('n'); ylabel('h[n]');
grid on;

subplot(212);
stem(n,h);
title('Impulse Response zoom ')
xlabel('n'); ylabel('h[n]');
xlim([0 20])
grid on;