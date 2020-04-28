% scfig21 -- Short Course 21: Four Noisy Time-Frequency test signals
%
% We display here four noisy versions of the signals in Figure 20.
%
global yQuad yMish vBumps vDoppler tt
%
	clf;
	versaplot(221,tt,yQuad,[],   ' 21 (a) Noisy QuadChirp ',[],[])
	versaplot(222,tt,yMish,[],   ' 21 (b) Noisy MishMash ',[],[])
	versaplot(223,tt,vBumps,[],  ' 21 (c) Noisy Bumps ',[],[])
	versaplot(224,tt,vDoppler,[],' 21 (d) Noisy Doppler ',[],[])
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
