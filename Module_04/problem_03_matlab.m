% Ryan Newport
% Module 4 Assignment
% Problem 4.3
% EN.525.627.82.SU18
% 06/26/2018
clc;clear;close all;

%% Part A
clc;clear;close all;
% coefficient arrays for X(z)
b = [1 0.5 0 0 0 0.5 1];
a = [1 0 0.5 1.25 0.5];

% check first 10 samples of x[n]
n1 = 0;
n2 = 10;
n = n1:n2;

% use X(z) as impulse response for filter, and input delta[n] to get x[n]
delta = impSeq(0,min(n), max(n));
x = filter(b,a,delta);

% compare with x[n] in problem statement
n0 = 0:10;
x0 = (-0.5).^n;
% [x0,n0] = stepSeq(0,n1,n2);
[x1, n1] = sigShift(x0,n,3);
[x2,n2] = sigFold(x1,n1-6);

% delta = impSeq(0,min(n), max(n));
% xc = filter(1,[1 0.5],delta);

figure;
stem(n,x0); xlim([-10 10]); grid on;
% hold on; stem(n,xc,'mx')
figure; 
stem(n1,x1,'rx'); xlim([-10 10]); grid on;
figure;
stem(n2,x2,'gd'); xlim([-10 10]); grid on;

[x_check, n_check] = sigAdd(x1,n1,x2,n2)


% error = x - x_check
figure;stem(n,x); hold on; grid on;
stem(n_check,x_check,'rx')
title('x[n] from X(z) compared to x[n] from problem')
xlabel('n'); ylabel('x[n]')
legend('from X(z)','from problem statement')

figure;
zplane(b,a)
title('Pole Zero Plot Check')
xlabel('Real'); ylabel('Imaginary')

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