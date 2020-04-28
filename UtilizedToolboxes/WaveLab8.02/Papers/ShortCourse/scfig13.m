% scfig13 -- Short Course 13: Smoothing Counts data by square roots; ESCA data
%  
% Here we illustrate the application of wavelet thresholding to Poisson
% Counts data. An ESCA spectrum is transformed by the Anscombe (1948) 
% variance-stabilizing transformation for poisson data, which are
% then processed as in earlier panels.
%
	ESCA = ReadSignal('ESCA')';
	y = 2.*sqrt(ESCA + .375); 
	t = 1:length(ESCA);
	QMF = MakeONFilter('Coiflet',3);
	[xh,wcoef] = WaveShrink(y,'Visu',5,QMF);
%
	clf; 
	versaplot(211,t,y,[],'13 (a) Square Root of ESCA Spectrum',[],[])
	versaplot(212,t,xh,[],'13 (b) Wavelet Smoothed'           ,[],[])
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
