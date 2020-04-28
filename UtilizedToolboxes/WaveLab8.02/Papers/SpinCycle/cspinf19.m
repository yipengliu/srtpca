% cspinf19 -- Unscrambling TI Table to Stat Table
%
% Here we display  unscrambled translation-invariant Wavelet Transform.  
% Unscrambling makes it a Continuous Wavelet Transform
% Object Noisy[Blocks]
% S8 Wavelet 
%
%  Remark: run CycleSpinInit and cspinf1[89] before this.
%
%  Agenda:  %
%
global tiwtblocks
%
%
		figure;
		Stat_Table = TI2Stat(tiwtblocks);
		PlotStatTable(Stat_Table)
		title('19. Stat Table (=Unscrambled TI Table) of Blocks')
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
