function PIC256(x,header);

% PIC256  PIC256(x,header) shows image 'x' of 256 graylevels. 
%         'header' is an optional title.


figure
image(x+1)
colormap(gray(256))
axis('square')
axis('off')

if nargin == 2
  title(header)
end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
