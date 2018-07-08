function [x,n] = impSeq(n0,n1,n2)
%IMPSEQ Generates x[n] = delta(n-n0)
%   n1 and n2 are the start and end of the desicrete time vector
%   n1 <= n <= n2
%   n0 is the delay on the impulse vector
%   ------------------------------------------------------------
%   [x,n] = impSeq(n0,n1,n2)


if ((n0 < n1) | (n0 > n2) | (n1 > n2))
    error('args must satisfy n1 <= n0 <= n2')
end

n = n1:n2;
x = (n - n0) == 0;

end

