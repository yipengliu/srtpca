% TourDemo -- Show Tour Figs with Point & Click Interface
%   To run, just type TourDemo.
%
header = 'Tour Figures';
labels = ['Change Settings' ; 'Run All Scripts' ; ...
          'Run One Script ' ; 'Clean Up       '];
callbacks = ['TourFig(19)'; 'TourFig(20)';'TourFig(21)'; ...     
             'TourCleanup'];
global TOURFIGNUM 
TOURFIGNUM = 0;
clc; help('TourIntro')
choices('Tour',header,labels,callbacks);
clear header labels callbacks
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
