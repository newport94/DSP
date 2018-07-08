% Example 2.1 from textbook

%% A
% x[n] = 2*delta(n + 2) - delta(n - 4), -5 <= n <= 5
clc;clear;

n0 = -2;
n1 = 4;

n = -5:5;

x = ((n - n0) == 0) -((n - n1) == 0);
figure; subplot(221);
stem(n,x)
ylim([-2 3]);
grid on;
xlabel('n'); ylabel('x[n]')
title('2.1(a)')

%% B
% x[n] = n(u(n) - u(n-10)] + 10exp(-0.3w(n-10)(u(n-10)-u(n-20)]
clc;clear;
n = 0:20;

n0 = 10;
a = n;
b = (n >= 0) - ((n - n0) >= 0);
c = 10 * exp(-0.3*(n-n0));
d = (n - n0) >= 0;
e = (n - 2*n0) >= 0;

x = a.*b + c.*(d-e);
subplot(222);
stem(n,x); grid on;
xlabel('n'); ylabel('x[n]')

%% C
clc;clear;
n = 0:50;
N = length(n);
x = cos(0.04*pi*n) + 0.2*randn(1,N);
subplot(223);
stem(n,x); grid on;
xlabel('n'); ylabel('x[n]')

%% D
clc;clear;
n = -10:9;
x = flip(1:5);
x_tilde = [x x x x];
subplot(224);
stem(n,x_tilde); grid on;
xlabel('n'); ylabel('x[n]')


















