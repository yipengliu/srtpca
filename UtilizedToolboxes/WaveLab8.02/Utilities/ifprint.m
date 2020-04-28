function ifprint(fig,file)
% ifprint -- Conditional printing to postscript file
%  Usage
%    ifprint(fig,file)
%  Inputs
%    fig     handle of figure to print
%    file    name of file to print to
%
%  Description
%    Global variables affect the conditional printing:
%
%       PRINTING  if ==1, printing is done, if ==0 printing
%                 is skipped
%
%       FOOTNOTE  if ==1, a footnote with the filename and
%                 date is added to the plot, if ==0, no 
%                 footnote is added
%
%  Side Effects
%    If PRINTING or FOOTNOTE are not defined, prompts are
%    generated to set these global variables.
%

global PRINTING
global FOOTNOTE

    if ~exist('PRINTING'),
        PRINTING = input('PRINTING?');
    end
    
    if ~exist('FOOTNOTE'),
        FOOTNOTE = input('FOOTNOTE?');
    end

    figure(fig);

    if FOOTNOTE,            
        RegisterPlot(file,'R')
    end

    if PRINTING,
        cmd =  ['print ' file]
        eval(cmd);
    end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
