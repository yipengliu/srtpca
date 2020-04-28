% AsympDemo -- Show Asymptopia Figs with Point & Click Interface
%   To run, just type AsympDemo.
header = 'Asymptopia Figures';
labels = ['Change Settings' ; 'Run All Scripts' ; ...
          'Run One Script ' ; 'Clean Up       '];
callbacks = ['AsympFig(89)'; 'AsympFig(90)'; ...
             'AsympFig(91)'; 'AsympCleanup'];
global ASFIGNUM 
ASFIGNUM = 0;
clc; help('AsympIntro');
choices('Asymptopia',header,labels,callbacks);
clear header labels callbacks
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
