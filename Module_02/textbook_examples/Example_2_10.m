% Example 2.10 on pp 45-46
clc;clear;close all;

% Noise sequence 1
x = [3 11 7 0 -1 4 2];
nx = -3:3;
[y,ny] = sigShift(x,nx,2);   % shifted signal
w = randn(1,length(y));
nw= ny;
[y,ny] = sigAdd(y,ny,w,nw);  % noisy shifted signal
[x,nx] = sigFold(x,nx);      % x(-n)

% croxx xorelation
[rxy,nrxy] = conv_m(y,ny,x,nx);
subplot(211); 
stem(nrxy,rxy);
axis([-5,10,-50,250]);
xlabel('Lag Variable 1');
ylabel('rxy');
title('Croxx Corr Noise seq 1');

% Noise Sequence 2
x = [3 11 7 0 -1 4 2];
nx = -3:3;
[y,ny] = sigShift(x,nx,2);   % shifted signal
w = randn(1,length(y));
nw= ny;
[y,ny] = sigAdd(y,ny,w,nw);  % noisy shifted signal
[x,nx] = sigFold(x,nx);   

[rxy,nrxy] = conv_m(y,ny,x,nx);
subplot(212); 
stem(nrxy,rxy);
axis([-5,10,-50,250]);
xlabel('Lag Variable 1');
ylabel('rxy');
title('Croxx Corr Noise seq 1');