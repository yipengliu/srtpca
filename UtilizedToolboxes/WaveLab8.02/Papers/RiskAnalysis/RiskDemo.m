close all;echo;

% RiskDemo -- Demonstrate the Figures (Figure 1:13) of the paper 
%            EXACT RISK ANALYSIS OF WAVELET REGRESSION
%                            BY
%            J.S. MARRON, S. ADAK, I.M. JOHNSTONE,
%                M.H. NEUMANN, and P. PATIL


%    Wavelets have motivated development of a host of new ideas in
% nonparametric regression smoothing. Here we apply the tool of exact
% risk analysis, to understand the small sample behavior of wavelet
% estimators, and thus to check directly the conclusion suggested by
% asymptotics. Comparisons between some wavelet bases, and also between
% hard and soft thresholding are given from several viewpoints. Our
% results provide insight as to why the viewpoints and conclusions of
% Donoho and Johnstone differ from those of Hall and Patil.

% ------------------------------------------------------------------

echo off;

header = ['EXACT RISK ANALYSIS OF WAVELET REGRESSION FIGURES'];
buttonlabels = ...
         ['Make All Figures                                 '; ...
          'Make A Single Figure                             '; ...
          'Print Figures running in Demo                    '; ...
          'Clean Up                                         '];
callbacks = ['RiskFig(15)      '; ...
             'RiskFig(20)      '; ...
             'RiskFig(25)      ';...
             'clear_risk_global'];
RiskInit;
global RISKFIGNUM
RISKFIGNUM = 0;
choices('Mydemo',header,buttonlabels,callbacks); h = gcf; 
set(h,'units','normal','position',[0.05,0.6,0.5,0.3]);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
