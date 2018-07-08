% Ryan Newport
% Module 3 Assignment
% Problem 3.3
% EN.525.627.82.SU18
% 06/19/2018
clc;clear;close all;

%% Part A
clc;clear;close all;
k = -100:100;
w = (pi/100)*k;
X = 3 + 2*cos(w) + 4*cos(2*w);

% test to see if real and even
figure; subplot(211); plot(w/pi,real(X))
grid on;
title('X(e^{jw}) = 1 - 6cos(3\omega) + 8cos(5\omega)')
xlabel('\omega / \pi (radians/sample)'); 
ylabel('Real (X)')

subplot(212);
plot(w,imag(X))
xlabel('\omega / \pi (radians/sample)'); 
ylabel('Imag (X)')

% check solution
n = -2:2;
x = [2 1 3 1 2];
X_check = dtft(x,n,w);

figure;subplot(311); stem(n,x);
title('time domain signal x[n]');
xlabel('n'); ylabel('x[n]')
ylim([0 3.5]);
xlim([-2.5 2.5])

subplot(312);
plot(w/pi,abs(X)); hold on;
plot(w/pi,abs(X_check),'r--');
title('Magnitude of X = DTFT{x}')
xlabel('\omega / \pi (radians/sample)'); 
ylabel('|X(e^{jw})|')
legend('X(e^{jw})','DTFT{x[n]}')

subplot(313);
plot(w/pi,angle(X)); hold on;
plot(w/pi,angle(X_check),'r--');
title('Angle of X = DTFT{x}')
xlabel('\omega / \pi (radians/sample)'); 
ylabel('< X(e^{jw})')
legend('X(e^{jw})','DTFT{x[n]}')


%% Part B
clc;clear;close all;
k = -1000:1000;
w = (pi/1000)*k;
Y = 1 - 6*cos(3*w) + 8*cos(5*w);

% test to see if real and even
figure; subplot(211); plot(w/pi,real(Y))
grid on;
title('Y(e^{jw}) = 1 - 6cos(3\omega) + 8cos(5\omega)')
xlabel('\omega / \pi (radians/sample)'); 
ylabel('Real (Y)')

subplot(212);
plot(w,imag(Y))
xlabel('\omega / \pi (radians/sample)'); 
ylabel('Imag (Y)')


n = -5:8;
x = zeros(1,14);
x(4) = 4; x(6) = -3; x(9) = 1; x(12) = -3; x(14) = 4;
X = dtft(x,n,w);

X_check = Y.*exp(-1j*3.*w);

figure;subplot(311); stem(n,x);
title('time domain signal x[n] = y[m-3]');
xlabel('n'); ylabel('x[n]')

subplot(312);
plot(w/pi,abs(X)); hold on;
plot(w/pi,abs(X_check),'r--');
title('Magnitude of X = DTFT{x}')
xlabel('\omega / \pi (radians/sample)'); 
ylabel('|X(e^{jw})|')
legend('X(e^{jw})','Y(e^{jw})e^{-j3\omega}')

subplot(313);
plot(w/pi,angle(X)); hold on;
plot(w/pi,angle(X_check),'r--');
title('Angle of X = DTFT{x}')
xlabel('\omega / \pi (radians/sample)'); 
ylabel('< X(e^{jw})')
legend('X(e^{jw})','Y(e^{jw})e^{-j3\omega}')

% errorMag   = max(abs(X-X_check))
% errorAngle = max(angle(X-X_check))