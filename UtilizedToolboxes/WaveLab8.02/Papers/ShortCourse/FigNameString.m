function figname = FigNameString(Prefix,num)
% FigNameString -- Append two-digit number to string
%  Usage
%    figname = FigNameString(Prefix,num)
%

	numstr  = sprintf('%2.0f',num); 
	if numstr(1) == ' ', 
	    numstr(1) = '0'; 
    end
    figname = [Prefix numstr];
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
