% MIPTDemo -- Show MIPT Figs with Point & Click Interface
%   To run, just type MIPTDemo.
header = 'MIPT Figures';
labels = ['Change Settings' ; 'Run All Scripts' ; ...
          'Run One Script ' ; 'Clean Up       '];
callbacks = ['MIPTFig(89)'; 'MIPTFig(90)'; ...
             'MIPTFig(91)'; 'MIPTCleanup'];
global MEDFIGNUM 
MEDFIGNUM = 0;
clc; help('MIPTIntro');
choices('MIPT',header,labels,callbacks);
clear header labels callbacks    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
