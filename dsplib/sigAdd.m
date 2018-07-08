function [y,n] = sigAdd(x1,n1,x2,n2)
%SIGADD Implements y[n] = x1[n] + x2[n]
%   --------------------------------------------------------------
%   [y,n] = sigAdd(x1,n1,x2,n2)
%   y  = sum sequence over n, which includes n1 and n2
%   n1 = discrete time vector for x1
%   n2 = discrete time vector for x2
%   x1 = first sequence over n1
%   x2 = second sequence over n2 (n2 can be different from n1)

n_start = min(min(n1),min(n2));
n_stop  = max(max(n1),max(n2));
n       = n_start:n_stop;

y1 = zeros(1,length(n)); y2 = y1;
a = n >= min(n1);
b = n <= max(n1);
y1(find(a & b == 1)) = x1;

c = n >= min(n2);
d = n <= max(n2);
y2(find(c & d == 1)) = x2;

y = y1 + y2;

end

