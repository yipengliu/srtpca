function xhat = JamesStein(y)
% JamesStein -- James-Stein Shrinker
% Usage:
%    xhat = JamesStein(y)
% Inputs:
%    y      Noisy Data, Standard Deviation of Noise = 1.
% Outputs:
%    xhat   James-Stein Estimate of x
% Notes:
%    dimension(x) > 2 is required.
%
	ss  = sum(y.^2);
	n   = length(y);
	shrnk = max((ss - (n-2))/ss,0);
	xhat = shrnk .* y;

    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
