function recon = FourierDeNoise(y)
% FourierDeNoise -- Hard thresholding in Fourier Domain
%  Usage
%    recon = FourierDeNoise(y)
%  Inputs
%    y        1-d complex valued signal; 
%             noise should be complex-valued white noise
%  Outputs
%    recon    reconstruction after sqrt(2 log(n)) thresholding
%
	n = length(y);
	fy = fft(y);
	af = abs(fy);
	ty = af > (sqrt(2 * log(n)) .* sqrt(n));
	cy = fy .* ty;
	recon = ifft(cy);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
