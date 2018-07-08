function [Xk] = dfs(xn,N)
% DFS Computes discrete Fourier series coefficients
% -------------------------------------------------
% [Xk] = dfs(xn,N)
%  Xk  = DFS coeff. arrray over 0 <= k <= N-1
%  xn  = One period of periodic signal over 0 <= n <= N-1
%  N   = Fundemental period of xn
%

n = 0:N-1;              % row vector for n
k = 0:N-1;              % row vector for k

WN = exp(-1j*2*pi/N);   % Wn factor
nk = n' * k;            % N by N matrix of nk values
WNnk = WN .^ nk;        % DFS matrix

Xk = xn * WNnk;         % Row vector for DFS coefficients

end

