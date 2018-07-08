function [Xk] = dft(xn,N)
% DFT computes discrete Fourier Transform
% -------------------------------------------------
% [Xk] = dft(xn,N)
%  Xk  = DFT coeff. arrray over 0 <= k <= N-1
%  xn  = N-point finite duration sequence
%  N   = Length of DFT
%

n = 0:N-1;              % row vector for n
k = 0:N-1;              % row vector for k

WN = exp(-1j*2*pi/N);   % Wn factor
nk = n' * k;            % N by N matrix of nk values
WNnk = WN .^ nk;        % DFT matrix

Xk = xn * WNnk;         % Row vector for DFT coefficients

end

