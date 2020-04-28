% MakeAllFilters -- Create AI Filters and Edge Filters
global Fil2 Fil4 Fil6 Fil8
Fil2 = MakeAIFilter(2); Fil4 = MakeAIFilter(4);
Fil6 = MakeAIFilter(6); Fil8 = MakeAIFilter(8);
% MakeBdryFilters
global EdgeFil2 EdgeFil4 EdgeFil6 EdgeFil8
EdgeFil2 = MakeAIBdryFilter(2); 
EdgeFil4 = MakeAIBdryFilter(4);
EdgeFil6 = MakeAIBdryFilter(6); 
EdgeFil8 = MakeAIBdryFilter(8);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
