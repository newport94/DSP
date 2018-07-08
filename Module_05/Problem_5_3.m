% Ryan Newport
% Module 05 Assignment
% Problem 5.3
% EN.525.627.82.SU18
% 07/03/2018
clc;clear;close all;

%% Part 1
x1 = 1:50;
x2 = 50:-1:1;
x = [x1 x2];
n = 0:99;

N = 10;
k = 0:N-1;
w = 2*pi*k/N;
Xk = dtft(x,n,w);

y1 = real(idfs(Xk,N)); % result is real, just making complex -> double
y1_tilde = y1'*ones(1,200/N); y1_tilde = (y1_tilde(:))';
figure; stem(0:199,y1_tilde);
title('y1 tilde, N = 10')
xlabel('n'); ylabel('y1')

%% Part 2
x1 = 1:50;
x2 = 50:-1:1;
x = [x1 x2];
n = 0:99;

N = 200;
k = 0:N-1;
w = 2*pi*k/N;
Xk = dtft(x,n,w);

y2 = real(idfs(Xk,N)); % result is real, just making complex -> double
y2_tilde = y2'*ones(1,200/N); y2_tilde = (y2_tilde(:))';
figure; stem(0:199,y2_tilde);
title('y2 tilde, N = 200')
xlabel('n'); ylabel('y2')