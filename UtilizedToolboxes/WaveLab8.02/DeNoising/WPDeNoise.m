function [clean,bb,st] = WPDeNoise(x,D,qmf)
% WPDeNoise -- De-Noising in an adaptively chosen WP basis
%  Usage
%    [clean,bb,st] = WPDeNoise(x,D,qmf)
%  Inputs
%    x       1-d signal to be de-noised.
%    D       maximum depth of basis tree
%    qmf     quadrature mirror filter for frequency splitting
%  Outputs
%    clean   cleaned signal
%    bb      basis tree naming basis in which de-noising was done
%    st      stat tree: statistics driving basis search
%
%  Description
%   1. Assumes noise level == 1
%   2. Uses Stein Unbiased Estimate of risk to evaluate basis
%   3. Uses Coifman-Wickerhauser Best Basis algorithm to select
%      best basis
%
%  See Also
%   WaveShrink
%
	[n,J] = dyadlength(x); 
	thr = sqrt(2 .* log( n .* J) );
%
%   Find Best Basis for De-Noising
%
	wp = WPAnalysis(x,D,qmf);
	st = CalcStatTree(wp,'SURE',thr);
	[bb,vt] = BestBasis(st,D);
%
%   Apply thresholding in Best Basis
%
	dirtycoef = UnpackBasisCoeff(bb,wp);
	cleancoef = HardThresh(dirtycoef,thr);
%
%   Transform back to time domain
%
	cleanwp   = PackBasisCoeff(bb,wp,cleancoef);
	clean     = WPSynthesis(bb,cleanwp,qmf);      

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
    
