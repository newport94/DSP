function [y] = circConv(x1,x2,N)
% CIRCCONV circular convolution between x1 and x2 (time-domain)
% -------------------------------------------------
% [y] = circConv(x1,x2,N))
% Method : y[n] = sum(x1(m)*x2((n-m) mod N))
% y  = output sequence containing the circular convolution 
% x1 = input sequence of length N1 <= N
% x2 = input sequence of length N2 <= N
% N  = size of circular buffer

% check for length of x1
if length(x1) > N
    error('N must be >= the length of x1')
end

% check for length of x2
if length(x2) > N
    error('N must be >= the length of x2')
end

x1 = [x1 zeros(1,N-length(x1))];
x2 = [x2 zeros(1,N-length(x2))];
m = 0:N-1;

x2 = x2(mod(-m,N)+1);
H = zeros(N,N);

for n = 1:N
    H(n,:) = circShift(x2,n-1,N);
end

y = x1*conj(H');


end

