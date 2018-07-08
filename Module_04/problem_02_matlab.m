% Ryan Newport
% Module 4 Assignment
% Problem 4.2
% EN.525.627.82.SU18
% 06/26/2018
clc;clear;close all;

%% Part A
clc;clear;close all;
% coefficient arrays for X(z)
b = [0  0 2 1];
a = [1 -1 0 0];

% check first 10 samples of x[n]f
n1 = 0;
n2 = 9;
n = n1:n2;

% use X(z) as impulse response for filter, and input delta[n] to get x[n]
delta = impSeq(0,min(n), max(n));
x = filter(b,a,delta);

% compare with x[n] in problem statement
x1 = impSeq(2,n1,n2);
x2 = stepSeq(3,n1,n2);
x_check = 2*x1 + 3*x2;


error = x - x_check
figure;stem(n,x); hold on; grid on;
stem(n,x_check,'rx')
title('x[n] from X(z) compared to x[n] from problem')
xlabel('n'); ylabel('x[n]')
legend('from X(z)','from problem statement')


%% Part B
clc;clear;close all;
% coefficient arrays for X(z)
b = [3 1.1045 0];
a = [1 -0.8817 0.5625];

% check first 10 samples of x[n]
n = 0:9;   

% use X(z) as impulse response for filter, and input delta[n] to get x[n]
delta = impSeq(0,min(n), max(n));
x = filter(b,a,delta);

% compare with x[n] in problem statement
x1 = (0.75.^n) .* cos(0.3*pi*n);
x2 = (0.75.^n) .* sin(0.3*pi*n);
x_check = 3*x1 + 4*x2;

error = x - x_check
figure;stem(n,x); hold on; grid on;
stem(n,x_check,'rx')
title('x[n] from X(z) compared to x[n] from problem')
xlabel('n'); ylabel('x[n]')
legend('from X(z)','from problem statement')
