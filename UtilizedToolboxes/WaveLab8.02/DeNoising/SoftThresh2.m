function x = SoftThresh2(y,t)
% SoftThresh -- Apply Soft Threshold 
%  Usage 
%    x = SoftThresh(y,t)
%  Inputs 
%    y     Noisy Data 
%    t     Threshold
%  Outputs 
%    x     sign(y)(|y|-t)_+
%
% x = sign(y).*max(abs(y)-t,0);


res = (abs(y) - t/max(norm(abs(y(:))),1));
res = (res + abs(res))/2;
x   = sign(y).*res;


