function [x,thresh] = SUREThresh(y)
% SUREThresh -- Adaptive Threshold Selection Using Principle of SURE
%  Usage 
%    thresh = SUREThresh(y)
%  Inputs 
%    y        Noisy Data with Std. Deviation = 1
%  Outputs 
%    x        Estimate of mean vector
%    thresh   Threshold used
%
%  Description
%    SURE referes to Stein's Unbiased Risk Estimate.
%
	thresh = ValSUREThresh(y);
	x      = HardThresh(y,thresh);    

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
    
