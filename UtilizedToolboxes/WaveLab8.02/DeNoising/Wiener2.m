function out = Wiener2(Noisy,in,sigma)
% Wiener -- Wiener filter for images.
% Usage
%   out = Wiener2(Noisy,in,sigma)
% Inputs
%   Noisy		Noisy input signal.
%   in			Original signal.
%   sigma		s.d of the additve GWN
% Outputs
%   out		Restored image.
%

Y=fft2(in);
FN=fft2(Noisy);
PY=abs(Y.*Y);
[nc, nr]=size(in);
n=nc*nr;
H=PY./(PY+ n*sigma^2);
FN=FN.*H;
out=real(ifft2(FN));

% Written by Maureen Clerc and Jerome Kalifa, 1997
% clerc@cmapx.polytechnique.fr, kalifa@cmapx.polytechnique.fr
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
