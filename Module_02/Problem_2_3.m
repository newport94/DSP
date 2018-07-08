% Ryan Newport
% Module 2 Assignment
% Problem 2.3
% EN.525.627.82.SU18
% 06/05/2018
clc;clear;close all;

%% Part A
clear;clc;close all;
n = 0:7;
x = zeros(size(n)); x(1:4) = 1:4;
h = zeros(size(n)); h(1:4) = ones(1,4);

[y,ny] = conv_m(x,n,h,n);
part = ' a';

figure; f1 = subplot(311);
stem(n,x);
str = strcat('Part',part);
str = strcat(str,':  input sequence x[n]');
title(str);
xlabel('n'); ylabel('x[n]'); grid on;

f2 = subplot(312);
stem(n,h);
str = strcat('Part',part);
str = strcat(str,':  impulse response h[n]');
title(str);
xlabel('n'); ylabel('h[n]'); grid on;

f3 = subplot(313);
stem(ny,y)
str = strcat('Part',part);
str = strcat(str,':  convolution sum y[n]');
title(str);
xlabel('n'); ylabel('y[n]'); grid on;

set([f1 f2 f3], 'XLim',[min(ny)  max(ny)+1]);
set([f1 f2 f3], 'YLim',[min(y)-1 max(y)+1]);

display(y);

%% Part B
clear;clc;close all;
n = 0:5;
x = [1  2 -1  0  0  0];
h = [1 -1  1 -1  0  0];

[y,ny] = conv_m(x,n,h,n);
part = ' b';

figure; f1 = subplot(311);
stem(n,x);
str = strcat('Part',part);
str = strcat(str,':  input sequence x[n]');
title(str);
xlabel('n'); ylabel('x[n]'); grid on;

f2 = subplot(312);
stem(n,h);
str = strcat('Part',part);
str = strcat(str,':  impulse response h[n]');
title(str);
xlabel('n'); ylabel('h[n]'); grid on;

f3 = subplot(313);
stem(ny,y)
str = strcat('Part',part);
str = strcat(str,':  convolution sum y[n]');
title(str);
xlabel('n'); ylabel('y[n]'); grid on;

set([f1 f2 f3], 'XLim',[min(ny) max(ny)+1]);
set([f1 f2 f3], 'YLim',[min(y)  max(y)+1]);

display(y);

%% Part C
clear;clc;close all;
n = 0:5;
x = [1  2 -1  0  0  0];
h = x;

[y,ny] = conv_m(x,n,h,n);
part = ' c';

figure; f1 = subplot(311);
stem(n,x);
str = strcat('Part',part);
str = strcat(str,':  input sequence x[n]');
title(str);
xlabel('n'); ylabel('x[n]'); grid on;

f2 = subplot(312);
stem(n,h);
str = strcat('Part',part);
str = strcat(str,':  impulse response h[n]');
title(str);
xlabel('n'); ylabel('h[n]'); grid on;

f3 = subplot(313);
stem(ny,y)
str = strcat('Part',part);
str = strcat(str,':  convolution sum y[n]');
title(str);
xlabel('n'); ylabel('y[n]'); grid on;

set([f1 f2 f3], 'XLim',[min(ny) max(ny)+1]);
set([f1 f2 f3], 'YLim',[min(y)  max(y)+1]);

display(y);

%% Part D
clear;clc;close all;
n = 0:5;
x = [1  1  2  0  0  0];
h = stepSeq(0,n(1),n(end));

[y,ny] = conv_m(x,n,h,n);
part = ' d';

figure; f1 = subplot(311);
stem(n,x);
str = strcat('Part',part);
str = strcat(str,':  input sequence x[n]');
title(str);
xlabel('n'); ylabel('x[n]'); grid on;

f2 = subplot(312);
stem(n,h);
str = strcat('Part',part);
str = strcat(str,':  impulse response h[n]');
title(str);
xlabel('n'); ylabel('h[n]'); grid on;

f3 = subplot(313);
stem(ny,y)
str = strcat('Part',part);
str = strcat(str,':  convolution sum y[n]');
title(str);
xlabel('n'); ylabel('y[n]'); grid on;

set([f1 f2 f3], 'XLim',[min(ny) max(ny)+1]);
set([f1 f2 f3], 'YLim',[min(y)  max(y)+1]);

display(y);