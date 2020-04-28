% cspinf03 -- Ordinary S8 Wavelet Shrinkage
%             Symmlet 8 Shrinkage of the Four Noisy Signals
%
% Ordinary SOFT Threshold Wavelet Shrinkage of the Four Noisy Signals
%
% The procedure for DeNoising:
%       1.  Transform to Wavelet Domain, Using Nearly Symmetric Wavelet
%           with 8 vanishing moments.
%       2.  Apply a SOFT thresholding nonlinearity, with threshold set to
%           sqrt{2 log(n)}
%       3.  Transform back to the signal domain.
%  
%
%  Remark: run SpinCycleInit and cspinf0[12] before this.
%
%
global yblocks ybumps yheavi yDoppler
global xblocks xbumps xheavi xDoppler
global t n
%
	QMF = MakeONFilter('Symmlet',8);
	L = 5;
%
	[xhblocks]  = zeros(size(yblocks));
	[xhbumps]   = zeros(size(ybumps   ));
	[xhheavi]   = zeros(size(yheavi   ));
	[xhDoppler] = zeros(size(yDoppler));
%
	nxblocks  = 0;
	nxbumps   = 0;
	nxheavi   = 0;
	nxDoppler = 0;
	FirstOnly = 1;
%
	nspin =1;  % ONLY LOOK AT SHIFT 0
	for i=0:(nspin-1),		
		[chblocks]  = cyclespin(yblocks,  i);
		[chbumps]   = cyclespin(ybumps,   i);
		[chheavi]   = cyclespin(yheavi,   i);
		[chDoppler] = cyclespin(yDoppler, i);
%
		[dhblocks]  = WaveShrink(chblocks,  'Visu',L,QMF);
		[dhbumps]   = WaveShrink(chbumps,   'Visu',L,QMF);
		[dhheavi]   = WaveShrink(chheavi,   'Visu',L,QMF);
		[dhDoppler] = WaveShrink(chDoppler, 'Visu',L,QMF);
%
		[dhblocks]  = cyclespin(dhblocks,  -i);
		[dhbumps]   = cyclespin(dhbumps,   -i);
		[dhheavi]   = cyclespin(dhheavi,   -i);
		[dhDoppler] = cyclespin(dhDoppler, -i);
%
		[xhblocks]  = xhblocks  + dhblocks;
		[xhbumps]   = xhbumps   + dhbumps;
		[xhheavi]   = xhheavi   + dhheavi;
		[xhDoppler] = xhDoppler + dhDoppler;
%
		if i==0,
			[zblocks]  = dhblocks;
			[zbumps]   = dhbumps;
			[zheavi]   = dhheavi;
			[zDoppler] = dhDoppler;
		end
%
		if i==0 | (i > 0 & ~FirstOnly),
			nxblocks = nxblocks  + norm(dhblocks-xblocks).^2;
			nxbumps  = nxbumps   + norm(dhbumps-xbumps).^2;
			nxheavi  = nxheavi   + norm(dhheavi-xheavi).^2;
			nxDoppler= nxDoppler + norm(dhDoppler-xDoppler).^2;
		end
%
	end
%
	[xhblocks]  = xhblocks/nspin;
	[xhbumps]   = xhbumps/nspin;
	[xhheavi]   = xhheavi/nspin;
	[xhDoppler] = xhDoppler/nspin;
%
	if FirstOnly, denom=1; else, denom=nspin; end
	nxblocks = sqrt(nxblocks/denom);
	nxbumps  = sqrt(nxbumps/denom);
	nxheavi  = sqrt(nxheavi/denom);
	nxDoppler= sqrt(nxDoppler/denom);
%
	if FirstOnly, 
		labelstr = 'RMS(Soft,S8,Orig)'; 
	else, 
		labelstr = 'Root(Ave(MSE(Soft,Shifted)))';
	end
%
	fprintf('Blocks:     %s = %g \n',labelstr,nxblocks)
	fprintf('Bumps :     %s = %g \n',labelstr,nxbumps)
	fprintf('HeaviSine:  %s = %g \n',labelstr,nxheavi)
	fprintf('Doppler:    %s = %g \n',labelstr,nxDoppler)
%
%
	figure;
	versaplot(221,t,zblocks, [],'  3 (a) S8,VisuShrink[yBlocks] '   ,[],[])
	versaplot(222,t,zbumps,  [],'  3 (b) S8,VisuShrink[yBumps] '    ,[],[])
	versaplot(223,t,zheavi,  [],'  3 (c) S8,VisuShrink[yHeaviSine] ',[],[])
	versaplot(224,t,zDoppler,[],'  3 (d) S8,VisuShrink[yDoppler] '  ,[],[])
%

%	Revision History
%		09/29/99	MRD		Declared xblocks etc. global
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
