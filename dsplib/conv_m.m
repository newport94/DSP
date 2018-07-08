function [y,ny] = conv_m(x,nx,h,nh)
%CONV_M Modified convolution routine for DSP (includes index info)
%   ---------------------------------------------------------------------
%   [y,ny] = conv_m(x,nx,h,nh)
%   [y,ny] = convoluiton result
%   [x,nx] = LTI system input signal and index vectors
%   [h,nh] = impulse response and index vectors
%

nyb = nx(1) + nh(1);
nye = nx(length(x)) + nh(length(h));
ny = [nyb : nye];
y = conv(x,h);
end

