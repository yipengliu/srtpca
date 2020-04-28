function d = detect(xfit, level)
% detect.m
% thresholds XFIT to 0 or 1 using threshold LEVEL
% d = 0 if xfit < level; = 1 if xfit > level,  = .5 if xfit = level

d = ( sign( xfit - level ) + 1)./ 2;

    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
