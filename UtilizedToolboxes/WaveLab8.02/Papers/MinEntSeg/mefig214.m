% mefig214 -- Segmented vs. Ordinary de-noising; object "Cusp" 
%
% In this display we compare segmented de-noising of figure 2.13
% with traditional de-noising using periodized nearly-symmetric wavelets
% having 8 vanishing moments.
%
% De-noising in a non-segmented wavelet transform domain leads to
% "pulling down" of peak values.  Such distortion can be avoided 
% avoided by de-noising with ideally-selected segmentation point.
%
% Note -- this script uses results calculated in mefig213.m
%
	global yCusp SmoothCusp
	global L
%
	qmf = MakeONFilter('Symmlet',8);
	wyCusp    = FWT_PO(yCusp,L,qmf);
	shCusp    = MultiVisu(wyCusp,L); 
	sbCusp    = IWT_PO(shCusp,L,qmf);
%
	clf; subplot(111)
	plot(absc, object,':'); hold on;
	plot(absc,sbCusp, '-.'); 
	plot(absc,SmoothCusp,'-');  hold off
	title('2.14 Object Cusp (..) Unsegmented (-.) and Segmented (-) DeNoising')
	sum((object - SmoothCusp).^2)
	sum((object - sbCusp).^2)
%  
% Prepared for the paper Minimum Entropy Segmentation 
% Copyright (c) 1994 David L. Donoho
%  
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
