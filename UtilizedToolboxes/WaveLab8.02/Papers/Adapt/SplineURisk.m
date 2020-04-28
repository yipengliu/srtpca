function URisk = SplineURisk(lam)
% SplineURisk -- Unbiased Estimate of Risk of a given Spline Filter
%  Usage
%    URisk = SplineURisk(lam)
%  Inputs
%    lam       Real Number in range [0,n]
%  Global Variables
%    Spline_Pnty  positive variable of length n.
%    Spline_Data  positive variable of length n.
%    [These Variables are initialized by SplineUChoose]
%  Output
%    Estimated Risk of Spline Est implicitly defined by
%    1/(1 + lam * 2^2k sin^2k(pi*j/n))
%  Warning
%    SplineInit and SplineUKern must be run first!
%
global Spline_Pnty
global Spline_Data
%
compl = (lam .* Spline_Pnty)./(1. + lam .* Spline_Pnty);
URisk =  sum(compl.^2 .*Spline_Data) - 2 .* sum(compl) ...
    + length(Spline_Data);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
