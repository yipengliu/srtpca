% AdaptDemo -- Show Adapt Figs with Point & Click Interface
%   To run, just type AdaptDemo.
%   Figure12 takes a LONG time to run -- 30 minutes etc.
header = 'Adapt Figures';
labels = ['Change Settings' ; 'Run All Scripts' ; ...
          'Run One Script ' ; 'Clean Up       '];
callbacks = ['AdaptFig(19)'; 'AdaptFig(20)'; ...
             'AdaptFig(21)'; 'AdaptCleanup'];
global ADAPTFIGNUM 
ADAPTFIGNUM = 0;
clc; help('AdaptIntro')
choices('ADAPT',header,labels,callbacks);
clear labels callbacks header
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
