function [x] = VisuThresh(y,type)
% VisuThresh -- Visually calibrated Adaptive Smoothing
%  Usage
%    x = VisuThresh(y)
%  Inputs
%    y      Signal upon which to perform visually calibrated Adaptive Smoothing
%    type   Type of thresholding, either 'Soft' (default) or 'Hard'
%  Outputs
%    x      Result
%
% References
%    ``Ideal Spatial Adaptation via Wavelet Shrinkage''
%    by D.L. Donoho and I.M. Johnstone.
%
	if nargin < 2,
		type = 'Soft';
	end

	thr = sqrt(2*log(length(y))) ;
%
	if strcmp(type,'Hard'),
		x = HardThresh(y,thr);
	else
		x = SoftThresh(y,thr);
	end

%
% Copyright (c) 1993-5.  Jonathan Buckheit, David Donoho and Iain Johnstone
%
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
