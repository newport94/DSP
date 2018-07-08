% Ryan Newport
% Module 3 Assignment
% Problem 3.4
% EN.525.627.82.SU18
% 06/19/2018
clc;clear;close all;

% define coefficient vectors for Frequency Response
m = 0:2; l = m;
b = [1 -1 1];
a = [1 -0.95 0.9025];

% define digital frequency vector
K = 500; k = 0:K;
w = pi*k/K;

% calculate H
num = b * exp(-1j*m.'*w);
den = a * exp(-1j*l.'*w);
H = num ./ den;

figure; subplot(211);
plot(w/pi,abs(H)); grid on;
title('Magnitude Response:  |H(e^{j\omega})|')
xlabel('Radial Frequency normalized by \pi');
ylabel('Magnitude')

subplot(212);
plot(w/pi,angle(H)); grid on;
title('Phase Response: < H(e^{j\omega})')
xlabel('Radial Frequency normalized by \pi');
ylabel('Radians/\pi')

% % check
% H_check = freqz(b,a,1000);
% figure; subplot(211); plot(abs(H_check),'r')
% subplot(212); plot(angle(H_check),'r')