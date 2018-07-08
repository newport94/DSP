% Example 3.21
clc;clear;close all;

Ts = 0.0002;
n = -25:25;
nTs = n*Ts;

x = exp(-1000*abs(nTs));