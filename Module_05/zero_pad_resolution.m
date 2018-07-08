clc;clear;close all;
% zero pad resolution example

N = 1024;     % fft size
fs = 12;    % sps
Ts = 1/fs;  % sample period
t_end = 1;  % 1 second duration
t = 0:Ts:t_end-Ts;

fc1 = 5;
fc2 = 5.5;
fc3 = 4.5;
x = cos(2*pi*t*fc1) + cos(2*pi*t*fc2) + cos(2*pi*t*fc3);


%% signal length = window size
M = length(x);   %% window length
w = rectwin(M);

W = fft(w);
k = linspace(-pi,pi,length(W));
figure;subplot(211)
stem(k/pi,fftshift(W))

X = fft(x);
f = linspace(-fs/2,fs/2,length(X));
subplot(212);stem(f,fftshift(abs(X)))

%% zero-padded slightly
numZeros = 1e3;
M = length(x) + numZeros;   %% window length
x = [x zeros(1,numZeros)];
w = rectwin(M);

W = fft(w);
k = linspace(-pi,pi,length(W));
figure;subplot(211)
stem(k/pi,fftshift(abs(W)))

X = fft(x);
f = linspace(-fs/2,fs/2,length(X));
subplot(212);stem(f,fftshift(abs(X)))

