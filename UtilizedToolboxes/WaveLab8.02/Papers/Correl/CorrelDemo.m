% CorrelDemo -- Show Correl Figs with Point & Click Interface
%   To run, just type CorrelDemo.
%   
header = 'Correl Figures';
labels = ['Change Settings' ; 'Run All Scripts' ; ...
          'Run One Script ' ; 'Clean Up       '];
callbacks = ['CorrelFig(19)'; 'CorrelFig(20)'; ...
             'CorrelFig(21)'; 'CorrelCleanup'];
global CORRELFIGNUM 
CORRELFIGNUM = 0;
clc; help('CorrelIntro')

if ~(exist('spectrum') & exist('xcorr'))
  disp('This demo requires the signal processing toolbox to run.');
  disp('If you see this message, it means that the signal processing');
  disp('toolbox is not installed at your system, or that this matlab');
  disp('session is not seeing the toolbox in its search path.');
  disp(' ');
  return
end

choices('CORREL',header,labels,callbacks);
clear labels callbacks header

    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
