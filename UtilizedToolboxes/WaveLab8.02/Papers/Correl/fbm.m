%function x1 = fbm( alpha = 0.9, m = 4096)
function x1 = fbm( alpha, m)
x = randn(1,m); 
l = m/2 ;
freq = [ 1 1:l (l-1):-1:1 ];
xft = fft(x);
xft(1) = 0;
x1ft = xft .* (freq .^ (- alpha/2 ) );
x1 = real( ifft(x1ft) );
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
