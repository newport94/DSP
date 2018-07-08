function [X,w] = dtft(x,n,w)
%DTFT computes the DTFT of a given sequence using linear algebra 
%   x = the time domain input signal to the DTFT (row vector)
%
%   n = the time domain index vector (ROW vector)
%       x(n) has N samples between n1 <= n <= n_2
%
%   w = radial frequency ROW vector with M+1 equispaced points btw 0 and pi
%       k = 0:M equispaced frequencies between [0,pi]
%       omega_k = pi*k/M,
%
%   ------------------------------------------------------------------------
%   X = dtft(x,n,w)

% ensure inputs are row vectors
x = x(:);
x = x.';
n = n(:);
n = n.';
w = w(:);
w = w.';



% Compute DTFT using linear algebra and DTFT kernal
% calculated with transpose kernal to produce X as row vector
% X = x *(exp(-1j.*(n'*w)));
W = exp(-1j*n.'*w);
X = x * W;

end

