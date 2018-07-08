% Example 5.10
clc;clear;close all;
addpath('C:\Users\Ryan\Documents\MATLAB\DSP');

n = 0:10;
x = 10*(0.8) .^n;
[xec, xoc] = circEvenOdd(x);
subplot(211); stem(n,xec); title('circ even'); grid on;
axis([ -0.5,10.5,-1,11])
subplot(212); stem(n,xoc); title('circ odd'); grid on;
axis([-0.5,10.5,-4,4])

figure;stem(n,x)

