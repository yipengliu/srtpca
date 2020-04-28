% cspinf05 -- Fully Translation-Invariant S8 Wavelet Shrinkage
%             Wavelet Shrinkage of the Four Noisy Signals
%
% Here we test fully translation-invariant denoising, using
% the Stationary Wavelet Transform.  This is a method of removing artifacts
% from wavelet thresholding associated with discontinuities and singularities.
% We apply a specific thresholding rule to the four noisy signals depicted in Figure 2.
%
% The procedure for DeNoising:
%       1.  Translation-Invariant Transform to Wavelet Domain, 
%			Using Nearly-Symmetric Wavelet with 8 vanishing moments.
%       2.  Apply a Hard thresholding nonlinearity, with threshold set to
%           sqrt{2 log(n)}
%       3.  Transform back to the signal domain.
% 
%  Remark: run SpinCycleInit and cspinf0[12] before this.
%
%
global yblocks ybumps yheavi yDoppler
global t n
global xblocks xbumps xheavi xDoppler
%
	QMF = MakeONFilter('Symmlet',8);
	L = 5;  thr = sqrt(2* log(n));
%
	[xhblocks]  = zeros(size(yblocks));
	[xhbumps]   = zeros(size(ybumps   ));
	[xhheavi]   = zeros(size(yheavi   ));
	[xhDoppler] = zeros(size(yDoppler));
%
		[tiwtblocks]  = FWT_TI(yblocks,  L,QMF);
		[tiwtbumps]   = FWT_TI(ybumps,   L,QMF);
		[tiwtheavi]   = FWT_TI(yheavi,   L,QMF);
		[tiwtDoppler] = FWT_TI(yDoppler, L,QMF);
%
		[nrow,ncol]  = size(tiwtblocks);
		thrwtblocks  = tiwtblocks;
		thrwtblocks(:,2:ncol) = SoftThresh(thrwtblocks(:,2:ncol),thr);
		thrwtbumps  = tiwtbumps;
		thrwtbumps(:,2:ncol) =  SoftThresh(thrwtbumps(:,2:ncol),thr);
		thrwtheavi  = tiwtheavi;
		thrwtheavi(:,2:ncol) = SoftThresh(thrwtheavi(:,2:ncol),thr);
		thrwtDoppler  = tiwtDoppler;
		thrwtDoppler(:,2:ncol) = SoftThresh(thrwtDoppler(:,2:ncol),thr);
%
		[xhblocks]  = IWT_TI(thrwtblocks,QMF);
		[xhbumps]   = IWT_TI(thrwtbumps,QMF);
		[xhheavi]   = IWT_TI(thrwtheavi,QMF);
		[xhDoppler] = IWT_TI(thrwtDoppler, QMF);
		
%
	fprintf('Blocks:    RMS(Soft,TI) =%g  \n',norm(xhblocks-xblocks))
	fprintf('Bumps :    RMS(Soft,TI) =%g  \n',norm(xhbumps-xbumps))
	fprintf('HeaviSine: RMS(Soft,TI) =%g  \n',norm(xhheavi-xheavi))
	fprintf('Doppler:   RMS(Soft,TI) =%g  \n',norm(xhDoppler-xDoppler))
%
	figure;
	versaplot(221,t,xhblocks, [],' 5 (a) Soft,TI[yBlocks] '   ,[],[])
	versaplot(222,t,xhbumps,  [],' 5 (b) Soft,TI[yBumps] '    ,[],[])
	versaplot(223,t,xhheavi,  [],' 5 (c) Soft,TI[yHeaviSine] ',[],[])
	versaplot(224,t,xhDoppler,[],' 5 (d) Soft,TI[yDoppler] '  ,[],[])

%	Revision History
%		09/29/99	MRD	declare xblocks etc. global
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
