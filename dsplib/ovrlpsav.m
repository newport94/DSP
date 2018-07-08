function [y] = ovrlpsav(x,h,N)
% OVRLPSAV Overlap-Save method of block convolution
% ---------------------------------------------------------
% [y] = ovrlpsav(x,h,N)
% y = output sequence
% x = input sequence
% h = impulse response
% N = block length
%

Nx = length(x);
M = length(h);
M1 = M-1;
L = N-M1;

h = [h zeros(1,N-M)];
x = [zeros(1,M1), x, zeros(1,N-1)]; % preappend (M-1) zeros
K = floor((Nx+M1-1)/L);             % num of blocks

% circ conv on each block
Y = zeros(K+1,N);
for k = 0:K
    xk = x(k*L+1 : k*L+N);
    Y(k+1,:) = circConv(xk,h,N);
end

Y = Y(:,M:N)';   % discard first M-1 samples of each block
y = (Y(:))';    % Concatenate remaining samples in each block


end

