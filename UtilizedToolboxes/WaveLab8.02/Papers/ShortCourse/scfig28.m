% scfig28 -- Short Course 28: Robust De-Noising
%
% Here we apply a robust wavelet transform where ``low-pass filtering''
% is replaced by applying medians of 3 in a triadic multi-resolution 
% analysis.
%  
% The nonlinear smoothing operator which results from setting to zero those
% coefficients at the finest scales has a pronounced noise-killing effect. 
% It restores the underlying sinusoidal character of the signal.
%
%
global ySine
%
	wc = FHT_Med(ySine);
	wc(triad(6)) = 0 .* wc(triad(6)) ;
	xhat6 = IHT_Med(wc);
%
	ax = [0 length(ySine) -10 10];
	versaplot(221,[],xhat6,[],' 28(a) (Nonlinear MRA) Kill Triad Level 6',ax,[])
%
	wc(triad(5)) = 0 .* wc(triad(5)) ;
	xhat = IHT_Med(wc);
	versaplot(222,[],xhat,[],' 28(b) (Nonlinear MRA) Kill Triad Levels 5 & 6',ax,[])
%
	wc(triad(4)) = 0 .* wc(triad(4)) ;
	xhat = IHT_Med(wc);
	versaplot(223,[],xhat,[],' 28(c) (Nonlinear MRA) Kill Triad Levels 4, 5 & 6',ax,[])
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
