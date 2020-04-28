% VdLDemo -- Show Villard Figs with Point & Click Interface
%  To run, type VdLDemo
header = 'Villard de Lans Figures';
labels = ['Change Settings' ; 'Run All Scripts' ; ...
          'Run One Script ' ; 'Clean Up       '];
callbacks = ['VdLFig(19)'; 'VdLFig(20)'; ...
             'VdLFig(21)'; 'VdLCleanup'];
global VDLFIGNUM 
VDLFIGNUM = 0;
clc; help('VdLIntro');
choices('Villard de Lans',header,labels,callbacks);
clear header labels callbacks
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
