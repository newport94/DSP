% Example 5.8
clc;clear;close all;

fc1 = 0.48;
fc2 = 0.52;
fs = 2;
Ts = 1/fs;

t_end = 100;
t = 0:Ts:t_end - Ts;

x = cos(2*pi*fc1*t) + cos(2*pi*fc2*t);

%% First determine 10-point DFT (N = 10, M = 10)
M = 10;
N = 10;
x1 = x(1:M);
n1 = 0:M-1;

X1 = dft(x1,N);
f = linspace(-fs/2,fs/2,N);


figure;
subplot(211); stem(n1,x1);
xlabel('n'); ylabel('x1[n]'); title('signal x[n], 0 <= n <= 9');
xlim([-0.1,9.1]); ylim([-2.2 2.2]); grid on;
subplot(212);
stem(f,fftshift(abs(X1))); 
xlabel('Frequency in Hz'); ylabel('DFT Magnitude');
title('Samples of DTFT Magnitude'); grid on;
 ylim([0,10]);xlim([0 1])

%% zero pad (M = 10, N = 100);
M = 10;
N = 100;
x1 = x(1:M); x1 = [x1 zeros(1,N-M)];
n1 = 0:N-1;

X1 = dft(x1,N);
f = linspace(-fs/2,fs/2,N);


figure;
subplot(211); stem(n1,x1);
xlabel('n'); ylabel('x1[n]'); title('signal x[n], 0 <= n <= 9 + 90 zeros');
xlim([-0.1,9.1]); ylim([-2.2 2.2]); grid on;
subplot(212);
scatter(f,fftshift(abs(X1)),'b.'); hold on;
plot(f,fftshift(abs(X1)),'r--'); 
xlabel('Frequency in Hz'); ylabel('DFT Magnitude');
title('Samples of DTFT Magnitude'); grid on;
 ylim([0,10]); xlim([0 1])
 
 %% Increase window size (more data) [M = 100, N = 100]
M = 100;
N = 100;
x1 = x(1:M);
n1 = 0:N-1;

X1 = dft(x1,N);
f = linspace(-fs/2,fs/2,N);


figure;
subplot(211); stem(n1,x1);
xlabel('n'); ylabel('x1[n]'); title('signal x[n], 0 <= n <= 99');
xlim([-0.1,9.1]); ylim([-2.2 2.2]); grid on;
subplot(212);
scatter(f,fftshift(abs(X1)),'b.'); hold on;
plot(f,fftshift(abs(X1)),'r--'); 
xlabel('Frequency in Hz'); ylabel('DFT Magnitude');
title('Samples of DTFT Magnitude'); grid on;
xlim([0 1])

 %% Zero pad increased window signal (N = 1000, M = 100)
M = 100;
N = 1000;
x1 = x(1:M); x1 = [x1 zeros(1,N-M)];
n1 = 0:N-1;

X1 = dft(x1,N);
f = linspace(-fs/2,fs/2,N);


figure;
subplot(211); stem(n1,x1);
xlabel('n'); ylabel('x1[n]'); title('signal x[n], 0 <= n <= 99 with 900 zeros');
xlim([-0.1,9.1]); ylim([-2.2 2.2]); grid on;
subplot(212);
scatter(f,fftshift(abs(X1)),'b.'); hold on;
plot(f,fftshift(abs(X1)),'r--'); 
xlabel('Frequency in Hz'); ylabel('DFT Magnitude');
title('Samples of DTFT Magnitude'); grid on;
xlim([0 1])
