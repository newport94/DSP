% Ryan Newport
% Module 3 Assignment
% Problem 3.1b
% EN.525.627.82.SU18
% 06/19/2018
clc;clear;close all;

%% Part B
clc;clear;close all;

% create n and x
n = 0:45;
u0  = stepSeq(0, n(1),n(end));
u40 = stepSeq(40,n(1),n(end));
x = cos(pi*n/10 - pi/4).*(u0 - u40);

% plot x
figure; stem(n,x)
title('Prob 2A: cos(\pi/10n - \pi/4)(u[n] - u[n-40])')
xlabel('n'); ylabel('x[n]'); grid on;
ylim([-1.1 1.1])

% create digital apprx of CT omega vector
k =  -500:500;
w = (pi/250)*k;

% compute the dtft with function derived from pg 63 in Ingle
[X] = dtft(x,n,w);

% calculate mag, phase, real, imag 
magX    = abs(X);
phaseX  = angle(X);

% plot magnitude
figure; subplot(211);
plot(w/pi,magX); grid on; 
title('Magnitude:  |X(e^{j\omega})|')
ylabel('Magnitude')

% plot phase
subplot(212);
plot(w/pi,phaseX/pi); grid on; 
% hold on;
% plot(w/pi,unwrap(phaseX),'r--');
title('Phase: < X(e^{j\omega})')
xlabel('Radial Frequency normalized by \pi');
ylabel('Radians/\pi')
% legend('wrapped','unwrapped','Location','southwest')

% plot from 0 to pi since it is a real signal (conj symmetric in freq)
k =  0:500;
w = (pi/500)*k;
[X] = dtft(x,n,w);
magX    = abs(X);
phaseX  = angle(X);

% plot magnitude
figure; subplot(211);
plot(w/pi,magX); grid on; 
title('Magnitude:  |X(e^{j\omega})|')
ylabel('Magnitude')

% plot phase
subplot(212);
plot(w/pi,phaseX/pi); grid on; 
% hold on;
% plot(w/pi,unwrap(phaseX),'r--');
title('Phase: < X(e^{j\omega})')
xlabel('Radial Frequency normalized by \pi');
ylabel('Radians/\pi')
% legend('wrapped','unwrapped','Location','southwest')

