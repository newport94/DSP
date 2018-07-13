clc;clear;close all;
% DFT density vs resolution example

%% Define parameters and plot time signal
fs = 5;           % sps
Ts = 1/fs;         % sample period
t_end = 3.2 ;      % duration in seconds
t = 0:Ts:t_end-Ts; % discrete time vector

fc1 = 2;
fc2 = 1.85;
fc3 = 2.15;
x = cos(2*pi*t*fc1) + 0.3*cos(2*pi*t*fc2) + 0.3*cos(2*pi*t*fc3);

%% Take fft of sequence
N = length(x);
X = fft(x,length(x)); X = X(1:N/2);
df = fs/N;
f = 0:df:fs/2 -df;
figure;stem(f,abs(X))
xlabel('frequency axis (Hz)')
ylabel('DFT Magnitude Spectrum')
title('One Sided DFT(x), fs = 10 sps for 3.2 sec');
grid on;

%% Zero pad to get more plot density 
N = 1028;
x = [x zeros(1,N-length(x))];
X = fft(x,length(x)); X = X(1:N/2);
df = fs/N;
f = 0:df:fs/2 -df;
figure;plot(f,abs(X),'g--'); hold on;
plot(f,abs(X),'b.')%,'MarkerSize',18);
xlabel('frequency axis (Hz)')
ylabel('DFT Magnitude Spectrum')
title('One sided Zero Padded DFT(x), fs = 10 sps for 3.2 sec');
grid on;
legend('DTFT Envelope','DFT Coefficients','Location','NorthWest')
%% Collect more data for better frequency resolution
t_end = 12.8 ;      % duration in seconds
t = 0:Ts:t_end-Ts;  % discrete time vector

x = cos(2*pi*t*fc1) + 0.75*cos(2*pi*t*fc2) + 0.75*cos(2*pi*t*fc3);

% fft of same length as DT signal
N = length(x);
X = fft(x,length(x)); X = X(1:N/2);
df = fs/N;
f = 0:df:fs/2 -df;
figure;stem(f,abs(X))
xlabel('frequency axis (Hz)')
ylabel('DFT Magnitude Spectrum')
title('One Sided DFT(x), fs = 10 sps for 12.8 sec');
grid on;

%% Zero pad the better frequency resolution plot
N = 1028;
x = [x zeros(1,N-length(x))];
X = fft(x,length(x)); X = X(1:N/2);
df = fs/N;
f = 0:df:fs/2 -df;
figure;plot(f,abs(X),'g--'); hold on;
plot(f,abs(X),'b.')%,'MarkerSize',18);
xlabel('frequency axis (Hz)')
ylabel('DFT Magnitude Spectrum')
title('One sided Zero Padded DFT(x), fs = 10 sps for 12.8 sec');
grid on;
legend('DTFT Envelope','DFT Coefficients','Location','NorthWest')

