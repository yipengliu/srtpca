% cspinf21 -- Thresholding Translation-Invariant Table of Blocks
%
% Here we display Stationary Wavelet Transform.  
% Object Noisy[Blocks]
% S8 Wavelet 
% Thresholded
%  Remark: run CycleSpinInit and cspinf20 before this.
%
%  Agenda:  %
%
global N
global Noisy_Stat_Table
%
	thr = sqrt(2* log(N));
%
		figure;
		[nrow,ncol] = size(Noisy_Stat_Table);
		thrwtblocks  = Noisy_Stat_Table;
		thrwtblocks(:,2:ncol) = SoftThresh(thrwtblocks(:,2:ncol),thr);
		PlotStatTable(thrwtblocks)
		title('21. Thresholding of Stat Table of Noisy Blocks')
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
