% asfig08 -- Asymptopia Figure 08: Smoothing Good-Gaskins data
%  
% Here we illustrate the application of wavelet thresholding to Poisson
% Counts data. The Good-Gaskins 1980 scattering data are transformed by the Anscombe 
% variance-stabilizing transformation for poisson data, which are
% then processed exactly as if the data obeyed the white noise model.
%
% Note that for these data, the wavelet result is very closely comparable
% to the result that Good and Gaskins obtained by 
%

	load scatter
	y = 2.*sqrt(scatter + .375);
	t =(-135):10:(-135+255*10); 
	QMF = MakeONFilter('Coiflet',3);
	[xh,wcoef] = WaveShrink(y,'Visu',5,QMF);
%
	clf;  load goodfit;
	rootgood = 2*sqrt(goodfit+.375);
%	versaplot(311,t,y,[],'(a) Root-o-Gram of Good-Gaskins Scattering Counts',[],[])
%	versaplot(312,t,xh,[],'(b) Wavelet Shrinkage'           ,[],[])
%	versaplot(313,t,2*sqrt(goodfit + .375),[],'(b) Good-Gaskins Estimate'           ,[],[])
	versaplot(311,t,y,   [],'8 (a) Roots of Good-Gaskins Scattering Counts',[],[])
	versaplot(312,t,xh,  [],'8 (b) Wavelet Shrinkage of Rooted Counts'     ,[],[])
	versaplot(313,t,y-xh,[],'8 (c) Rootogram of Residuals'                 ,[],[])
%	
%  
% Prepared for the paper Wavelet Shrinkage: Asymptopia?
% Copyright (c) 1994 David L. Donoho and Iain M. Johnstone
%  
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
