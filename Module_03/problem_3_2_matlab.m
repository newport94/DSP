% Ryan Newport
% Module 3 Assignment
% Problem 3.2
% EN.525.627.82.SU18
% 06/19/2018
clc;clear;close all;

M = [10,25,50,101];

for a = 1:length(M)
    x = ones(1,M(a));
    n = 0:M(a)-1;
    k = -1e4:1e4;
    w = pi*k/1e4;
    X = dtft(x,n,w);
    
    figure; subplot(211)
    stem(n,x); axis([0 M(a) 0 1.1]); grid on;
    xlabel('n'); ylabel('x[n] = rectwin(M)');
    str = 'Rectangular Window M ='; 
    str = strcat({str},{' '}, num2str(M(a))); title(str)
    
    subplot(212); plot(w/pi,abs(X)/M(a)); grid on;
    xlabel('\omega / \pi (radians/sample)'); 
    ylabel('|X(e^{j\omega})| / M');
    title('DTFT magnitude normalized by M;  -\pi \leq \omega \leq \pi');
    
    clear x n w k X
end

figure(4)
figure(3)
figure(2)
figure(1)