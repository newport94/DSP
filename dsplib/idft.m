function [xn] = idft(Xk,N)
% IDFS Computes inverse discrete fourier transform
% -------------------------------------------------
% [xn] = idft(Xk,N)
%  xn  = N-point sequence over  0 <= n <= N-1
%  Xk  = DFT coeff. arrray over 0 <= k <= N-1
%  N   = Fundemental period of xn
%

n = 0:N-1;              % row vector for n
k = 0:N-1;              % row vector for k

WN = exp(-1j*2*pi/N);   % Wn factor
nk = n' * k;            % N by N matrix of nk values
WNnk = WN .^ (-nk);     % IDFT matrix

xn = (Xk * WNnk)/N;     % Row vector for IDFT values

end

