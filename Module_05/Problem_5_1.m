% Ryan Newport
% Module 05 Assignment
% Problem 5.1
% EN.525.627.82.SU18
% 07/03/2018
clc;clear;close all;

%% Part A
clc;clear;close all;

xn = [4 1 -1 1];  % periodic time domain sequence
N = 4;            % Fundemendal period of sequence

Xk = dfs(xn,N);
display(Xk);

X_check = [5 5 1 5];
error =  Xk - X_check;
display(error);

%% Part B
clc;clear;close all;

xn = [2 0 0 0 -1 0 0 0];  % periodic time domain sequence
N = 8;                    % Fundemendal period of sequence

Xk = dfs(xn,N);
Xk = real(Xk);
display(Xk);        % Xk is purely real

X_check = [1 3 1 3 1 3 1 3];
error =  real(Xk) - X_check;
display(error);
