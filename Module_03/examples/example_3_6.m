% Example 3.6
% Ryan Newport
% EN.525.627.82.SU18
% 06/14/2018
clc;clear;close all;

n = -5:5;
k = -200:200;
w = (pi/100)*k;
x = (-0.9).^n;

% compute the dtft with function derived from pg 63 in Ingle
[X] = dtft(x,n,w);

% calculate mag, phase, real, imag 
magX    = abs(X);
phaseX  = angle(X);
realX   = real(X);
imagX   = imag(X);

% plot magnitude
figure; subplot(221);
plot(w/pi,magX); grid on; 
title('Magnitude:  |X(e^{j\omega})|')
ylabel('Magnitude')

% plot phase
subplot(223);
plot(w/pi,phaseX); grid on; 
% hold on;
% plot(w/pi,unwrap(phaseX),'r--');
title('Phase: < X(e^{j\omega})')
xlabel('Radial Frequency normalized by \pi');
ylabel('Radians')
% f`legend('wrapped','unwrapped','Location','southwest')

% plot Real
subplot(222);
plot(w/pi,realX); grid on; 
title('Real part of X(e^{j\omega})')
ylabel('Real')

% plot Imag
subplot(224);
plot(w/pi,imagX); grid on; 
title('Imaginary part of X(e^{j\omega})')
xlabel('Radial Frequency normalized by \pi');
ylabel('Imaginary')

