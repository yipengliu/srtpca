% asfig09 -- Asymptopia Figure 09: Comparison to Good-Gaskins Smoother
%  
% Here we illustrate the application of wavelet thresholding to Poisson
% Counts data. The Good-Gaskins 1980 scattering data are transformed by the Anscombe 
% variance-stabilizing transformation for poisson data, which are
% then processed exactly as if the data obeyed the white noise model.
%
% Note that for these data, the wavelet result is very closely comparable
% to the result that Good and Gaskins obtained by using computationally
% much more challenging methods.
%
%
	global t xh rootgood

	versaplot(311,t,xh,[],'9 (a) Wavelet Shrinkage (-);  Good&Gaskins (..)',[],1)
	versaplot(311,t,rootgood,'-.',[],[],0)
	versaplot(312,t,xh-rootgood,[],'9 (b) Wavelet-Good&Gaskins'  ,[],[])
	versaplot(325,t,xh,[],'9 (c) Closeup ',[500 900 20 60],1);
	versaplot(325,t,rootgood,'-.',[],[],1);
	versaplot(325,t,y,'.',[],[],0);
	versaplot(326,t,xh,[],'9 (d) Closeup ',[1000 1400 20 40],1);
	versaplot(326,t,rootgood,'-.',[],[],1);
	versaplot(326,t,y,'.',[],[],0);
	
%  
% Prepared for the paper Wavelet Shrinkage: Asymptopia?
% Copyright (c) 1994 David L. Donoho and Iain M. Johnstone
% 

% 	Revision History
%		09/29/99	MRD		declared variables global 
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
