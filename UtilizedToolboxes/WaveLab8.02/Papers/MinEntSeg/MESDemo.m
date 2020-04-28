function MESDemo
% MESDemo -- Show MinEntSeg Figs with Point & Click Interface
%  Usage
%    MESDemo
%

	header = 'MinEntSeg Figures';
	labels = ['Change Settings' ; 'Run All Scripts' ; ...
			  'Run One Script ' ; 'Clean Up       '];
	callbacks = ['MESFig(89)'; 'MESFig(90)'; ...
				 'MESFig(91)'; 'MESCleanup'];
%
	global MESFIGNUM 
	MESFIGNUM = 0;
%
	clc; help('MESIntro');
	choices('MinEntSeg',header,labels,callbacks);
	clear header labels callbacks
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
