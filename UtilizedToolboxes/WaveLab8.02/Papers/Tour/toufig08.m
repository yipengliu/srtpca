% toufig08 -- Tour Figure 08: Root-Density example
%  1. take a random sample from a mixture of 3 Gaussians
%  2. Bin the data, obtaining counts
%  3. Take an appropriate square root transform of the counts
%  4. Apply Wavelet Shrinkage to the root-counts
%    
	N = 1024;
	z = zeros(1,N);
	z = WhiteNoise(z);
	u = zeros(1,N);
	% rand('uniform');
	u = rand(size(u));
	z(u < .3) = 1 + z(u < .3) ./ 5;
	z(u >= .3) = 1.6 + z(u >= .3) ./ 7;
	z(u >= .8) = z( u >= .8) + .6;
%   2.  make rootogram
	[t,r] = rootogram(z,256);
%   3.  standardize
	y = 2.*r;
%   4.  wavelet shrinkage 
	QMF = MakeONFilter('Symmlet',8);
	[xh,wcoef] = WaveShrink(y,'Visu',4,QMF);
%   5.  plot
	clf; 
	subplot(211); plot(t,r); title('8 (a) Rootogram')
	subplot(212); plot(t,xh); title('8 (b) Wavelet Smoothed')
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
