% Ryan Newport
% Module 4 Assignment
% Problem 4.1
% EN.525.627.82.SU18
% 06/26/2018
clc;clear;close all;

%% Part A
clc;clear;close all;
% coefficient arrays for X(z)
b = [3 2 1 -2 -3];
a = [1 0 0  0  0];

% check first 10 samples of x[n]
n1 = -2;
n2 = 2;
n = n1:n2;

% use X(z) as impulse response for filter, and input delta[n] to get x[n]
delta = impSeq(-2,min(n), max(n));
x = filter(b,a,delta);

% compare with x[n] in problem statement
x_check = [3 2 1 -2 -3];

error = x - x_check
figure;stem(n,x); hold on; grid on;
stem(n,x_check,'rx')
title('x[n] from X(z) compared to x[n] from problem')
xlabel('n'); ylabel('x[n]')
legend('from X(z)','from problem statement')
xlim([-2.25 2.25]); ylim([-3.25 3.5])
% 
% figure;
% zplane(b,a)
% title('Pole Zero Plot Check')
% xlabel('Real'); ylabel('Imaginary')

%% Part B
clc;clear;close all;
% coefficient arrays for X(z)
b = [0 0 0.8^2];
a = [1 -0.8 0];

% check first 10 samples of x[n]
n = 0:11;   

% use X(z) as impulse response for filter, and input delta[n] to get x[n]
delta = impSeq(0,min(n), max(n));
x = filter(b,a,delta);

% compare with x[n] in problem statement
x_check = 0.8.^n .* stepSeq(2,min(n), max(n));

error = x - x_check
figure;stem(n,x); hold on; grid on;
stem(n,x_check,'rx')
title('x[n] from X(z) compared to x[n] from problem')
xlabel('n'); ylabel('x[n]')
legend('from X(z)','from problem statement')

figure;
zplane(b,a)
title('Pole Zero Plot Check')
xlabel('Real'); ylabel('Imaginary')
hold on; grid on;
plot(0.8*exp(1j*linspace(-pi,pi)),'m--')
legend('zeros','poles','Unit Circle','ROC boundry')