function y = WhiteNoise(x)
% WhiteNoise -- Version-independent white noise generator
%  Usage
%    y = WhiteNoise(x)
%  Inputs
%    x     nonempty matrix
%  Outputs
%    y     matrix shaped like x, filled with
%          standard normal random numbers.
%
%  Description
%    The method used avoids warning messages under both
%    MATLAB v3.5 and v4.0.
%
%  See Also
%    MATLABVERSION
%
global MATLABVERSION
if  MATLABVERSION == 3.5,
    rand('normal');
    y = rand(x);
else
    y = randn(size(x));
end    
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
