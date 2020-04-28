function out = Wiener(Noisy,in,sigma)
% Wiener -- Wiener filter.
% Usage
%   out = wiener(Noisy,in,sigma)
% Inputs
%   Noisy		Noisy input signal.
%   in			Original signal.
%   sigma		s.d of the additve GWN
% Outputs
%   out		Restored image.
%

Y=fft(in);
FN=fft(Noisy);
n=length(in);
PY=abs(Y.*Y);
H=PY./(PY+ n*sigma^2);
FN=FN.*H;
out=real(ifft(FN));

% Written by Maureen Clerc and Jerome Kalifa, 1997
% clerc@cmapx.polytechnique.fr, kalifa@cmapx.polytechnique.fr
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
