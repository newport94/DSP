function [y,n] = sigShift(x,m,k)
%SIGSHIFT Implements y[n] = x[n-k];
%   y[n] = x[n - k]
%   m = n - k => n = m + k
%   y[m + k] = x[m]
   

n = m + k;
y = x;


end

