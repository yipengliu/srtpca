function do_scalogram
% do_scalogram -- Called by WLBrowser
%  Usage
%    do_scalogram
%  Inputs
%    none 
%  Outputs
%    none
%
%  Description
%    Compute the log (base 10) of the wavelet coefficients
%    and plot the results as an image.
%
%  Side Effects
%    Scalogram is computed and plotted.

m=2;st='Scalogram';setfigure;
[ ndum, L ] = dyadlength( QMF );
[   nx, J ] = dyadlength( x_use );

wc = FWT_PO( x_use, L, QMF );
clear sgmat

for i = L:J-1
  wt = wc( dyad(i) );
  nnn = fix( nx / length(wt ) );
  tem = [];
  for mm = 1:nnn
    tem = [ tem; wt ];
  end
  sgmat(J-i, : ) = 2*log10( ...
    abs( reshape(tem,1,nx) ) / length(wt) ...
                          );
end
pcolor(sgmat);shading('interp');colormap(hsv);
title([ 'Scalogram of: ' signal_name]  )
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
