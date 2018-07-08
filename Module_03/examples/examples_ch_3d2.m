% Ryan Newport
% Module 3.2 Examples
% EN.525.627.82.SU18
% 06/19/2018
clc;clear;close all;

%% Example 3.7
clc;clear;close all;
x1 = rand(1,11); x2 = rand(1,11); n = 0:10;
alpha = 2; beta = 3; k = 0:500; w = (pi/500)*k;

X1 = dtft(x1,n,w);
X2 = dtft(x2,n,w);

x = alpha*x1 + beta*x2;
X = dtft(x,n,w);

plot(w,abs(X)); hold on;
plot(w,abs(alpha*X1 + beta*X2),'r--')

%% Example 3.8
clc;close all; clear;
x = rand(1,11); n = 0:10;
k = 0:500; w = (pi/500)*k;
X = dtft(x,n,w);

% signal shifted by two samples
y = x; m = n+2;
Y = dtft(y,m,w);

figure; subplot(211)
plot(w/pi,abs(Y)); hold on; grid on;
plot(w/pi,abs(X.*exp(-1j*2*w)),'r--')
plot(w/pi,abs(X),'g--')

subplot(212);
plot(w/pi,angle(Y)); hold on; grid on;
plot(w/pi,angle(X.*exp(-1j*2*w)),'r--')
plot(w/pi,angle(X),'g-.')

%% Example 3.9
clc;clear; close all;
n = 0:100; x = cos(pi*n/2);
k = -100:100; w = (pi/100)*k;
X = dtft(x,n,w);
y = exp(1j*pi*n/4).*x;
Y = dtft(y,n,w);

figure; subplot(211)
plot(w/pi,abs(X)); hold on; grid on;
plot(w/pi,abs(Y),'g-.')

subplot(212);
plot(w/pi,angle(X)); hold on; grid on;
plot(w/pi,angle(Y),'g-.')

%% Example 3.10
clc;clear;close all;
n = -5:10; x = sin(pi*n/2);
k = -100:100; w = (pi/100)*k;
X = dtft(x,n,w);

[xe,xo,m] = evenOdd(x,n);
XE = dtft(xe,m,w);
XO = dtft(xo,m,w);

subplot(221); plot(w/pi,real(X))
title('real')
subplot(222); plot(w/pi,imag(X));
title('Imag');
subplot(223); plot(w/pi,XE);
title('real XE')
subplot(224); plot(w/pi,imag(XO));
title('imag XO')
