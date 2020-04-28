function s = cyclespin(x,k)
n = length(x);
if k > 0,
	s = [x((n+1-k):n) x(1:(n-k))];
else
	s = [x((-k+1):n) x(1:(-k)) ];
end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
