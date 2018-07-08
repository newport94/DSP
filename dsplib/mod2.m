function [m] = mod2(n,N)
% MOD2 computes M = (N mod N) index
% Includes functionality for negative n
% -----------------------------------------
% m = mod(n,N)
%

m = rem(n,N); % remainder after n/N
m = m + N;
m = rem(m,N);


end

