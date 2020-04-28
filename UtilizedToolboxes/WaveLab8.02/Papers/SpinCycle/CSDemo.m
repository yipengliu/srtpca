% SpinDemo -- Show Cycle Spin Figs with Point & Click Interface
%   To run, just type SpinDemo.
header = 'Cycle Spin Figures';
labels = ['Change Settings' ; 'Run All Scripts' ; ...
          'Run One Script ' ; 'Clean Up       '];
callbacks = ['CSFig(89)'; 'CSFig(90)'; ...
             'CSFig(91)'; 'CSCleanup'];
global CSFIGNUM 
CSFIGNUM = 0;
clc; help('CSIntro');
choices('CycleSpin',header,labels,callbacks);
clear header labels callbacks
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
