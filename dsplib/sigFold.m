function [y,n] = sigFold(x,n)
%SIGFOLD Implements y[n] = x[-n];

y = fliplr(x); n = -fliplr(n);

end

