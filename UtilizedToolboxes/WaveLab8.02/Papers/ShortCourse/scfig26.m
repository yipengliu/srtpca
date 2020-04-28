% scfig26 -- Short Course 26: Sine signal with Cauchy Contamination
%
% (Panel a) shows a sinusuoid and (Panel b) the same sinusoid
% contaminated with Cauchy noise. Cauchy noise has infinite variance and
% hence enormous outliers.  Those outliers skew the plot scaling so that
% they are the only thing visible in (Panel b).
%
global SineSig ySine
%
	SineSig = 4 .* sin( (1:729) ./40 );
	clf; 
	versaplot(211,[],SineSig,[],' 26 (a) Signal',[],[])
%
	z = WhiteNoise(SineSig) ./ WhiteNoise(SineSig); % Cauchy = Z/Z
	ySine = SineSig+z;
	versaplot(212,[],ySine,[],' 26 (b) Signal with Cauchy Noise',[],[]);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
