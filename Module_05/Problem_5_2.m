% Ryan Newport
% Module 05 Assignment
% Problem 5.2
% EN.525.627.82.SU18
% 07/03/2018
clc;clear;close all;

%% Part A
clc;clear;close all;

Xk = [4 3*1j -3*1j];  % periodic time domain sequence
N = 3;                % Fundemendal period of sequence

xn = idfs(Xk,N);
display(xn);

x_check = [4/3 (4/3)-sqrt(3) (4/3)+sqrt(3)];
error =  xn - x_check;
display(error);

%% Part B
clc;clear;close all;
Xk = 1j.*[1 2 3 4];  % periodic time domain sequence
N = 4;                % Fundemendal period of sequence

xn = idfs(Xk,N);
display(xn);

x_check = [1j*5/2, 0.5*(1-1j), -1j/2, -0.5*(1+1j)];
error =  xn - x_check;
display(error);