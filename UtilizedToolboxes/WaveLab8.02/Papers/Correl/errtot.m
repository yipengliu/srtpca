function  e = errtot( xhat, tru)
% errtot.m
% count errors that XHAT (thresholded at .5) makes in estimating TRU

ss = size(tru);
xhat = reshape(xhat, ss(1), ss(2));
e = sum( ( detect(xhat, .5) - tru ) .^ 2 );
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
