% Example 5.12
clc;clear;close all;
addpath('C:\Users\Ryan\Documents\MATLAB\DSP');

n = 0:10;
x = 10*(0.8).^n;
N = 15;
m = 6;
y = circShift(x,m,N);

n = 0:length(y)-1;
x = [x, zeros(1,N-length(x))];
    
subplot(211); stem(n,x); title('orginial x[n]'); grid on;
subplot(212); stem(n,y); title('Circ shift x(<n-6>_{15})'); grid on;