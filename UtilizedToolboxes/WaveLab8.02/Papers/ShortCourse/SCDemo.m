% SCDemo -- Show Short Course Figs with Point & Click Interface
%   To run, just type SCDemo.
%   Due to Figure 12, requires >> 8 Mb to run all scripts
%
header = 'Short Course Figures';
labels = ['Change Settings' ; 'Run All Scripts' ; ...
          'Run One Script ' ; 'Clean Up       '];
callbacks = ['SCFig(89)'; 'SCFig(90)'; ...
             'SCFig(91)'; 'SCCleanup'];
global SCFIGNUM 
SCFIGNUM = 0;
clc; help('SCIntro');
choices('ShortCourse',header,labels,callbacks);
clear header labels callbacks
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
