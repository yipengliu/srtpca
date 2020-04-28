% BlockyDemo -- Show Blocky Figs with Point & Click Interface
%  To run, type BlockyDemo
header = 'Blocky Figures';
labels = ['Change Settings' ; 'Run All Scripts' ; ...
          'Run One Script ' ; 'Clean Up       '];
callbacks = ['BlockyFig(19)'; 'BlockyFig(20)'; ...
             'BlockyFig(21)'; 'BlockyCleanup'];
global BLOCKYFIGNUM 
BLOCKYFIGNUM = 0;
clc; help('BlockyIntro');
choices('Blocky',header,labels,callbacks);
clear header labels callbacks    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
