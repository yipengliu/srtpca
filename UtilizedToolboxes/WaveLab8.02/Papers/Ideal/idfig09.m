% idfig09 -- Ideal Figure 09: Examples of VisuShrink Thresholding
%
% Here we aapply the ``Visu'' thresholding rule to the
% four noisy signals depicted in Figure 3.
%
% The procedure for DeNoising:
%       1.  Transform to Wavelet Domain, Using Nearly Symmetric Wavelet
%           with 8 vanishing moments.
%       2.  Apply a soft thresholding nonlinearity, with threshold set to
%           sqrt{2 log(n)}
%       3.  Transform back to the signal domain.
% 
% The reconstructions suppress the noise, while preserving the sharp structure
% in the neighborhood of the highly-variable spatial components. The nearly
% noise-free structure of the reconstructions is appealing to us.
%
global wblocks wbumps wheavi wDoppler
global L qmf 
global t
%
	shbumps    = MultiVisu(wbumps,L); sbumps  = IWT_PO(shbumps,L,qmf);
	shblocks  = MultiVisu(wblocks,L); sblocks = IWT_PO(shblocks,L,qmf);
	shheavi    = MultiVisu(wheavi,L); sheavi  = IWT_PO(shheavi,L,qmf);
	shDoppler = MultiVisu(wDoppler,L);sDoppler = IWT_PO(shDoppler,L,qmf);
%
	clf; claxis;
	versaplot(221,t,sblocks, [],' 9 (a) VisuShrink[Blocks] '   ,[],[])
	versaplot(222,t,sbumps,  [],' 9 (b) VisuShrink[Bumps] '    ,[],[])
	versaplot(223,t,sheavi,  [],' 9 (c) VisuShrink[HeaviSine] ',[],[])
	versaplot(224,t,sDoppler,[],' 9 (d) VisuShrink[Doppler] '  ,[],[])
 
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
