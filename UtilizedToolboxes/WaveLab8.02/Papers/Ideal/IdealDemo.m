% IdealDemo -- Show Ideal Figs with Point & Click Interface
%
header = 'Ideal Figures';
labels = ['Change Settings' ; 'Run All Scripts' ; ...
          'Run One Script ' ; 'Clean Up       '];
callbacks = ['IdealFig(19)'; 'IdealFig(20)';'IdealFig(21)'; ...     
             'IdealCleanup'];
global IDEALFIGNUM 
IDEALFIGNUM = 0;
clc; help('IdealIntro')
choices('IDEAL',header,labels,callbacks);
clear header labels callbacks
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
