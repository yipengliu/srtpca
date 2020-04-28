function dwtm = MM_DWT(dwt,threshold);

 [n,nscales] = size(dwt);
 D = nscales-1;
 J0 = D-1;
 m = dwt(:,2:nscales); 
 dwtm(:,2:nscales) = ModulusMaxima(m,1,1,threshold);
 dwtm(:,1) 	   = ones(n,1);

% Written by Maureen Clerc and Jerome Kalifa, 1997
% clerc@cmapx.polytechnique.fr, kalifa@cmapx.polytechnique.fr
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
