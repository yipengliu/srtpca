function c = HCoarsen(r,L)
% HCoarsen -- Coarsen object
%  Usage
%    c = HCoarsen(r,L)
%

n = length(r);
b = r;
ni = n;
for h=1:L,
    ni = ni/2;
    b(1:ni) = (b(1:2:(2*ni-1)) + b(2:2:(2*ni)))/2;
end
c = zeros(1,ni);
c = b(1:ni);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
