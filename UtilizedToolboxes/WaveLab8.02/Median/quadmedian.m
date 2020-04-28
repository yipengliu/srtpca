function m = quadmedian(a,b,c,x1,x2)
% quadmedian -- find the median value of a quadratic polynomial on an interval
%
%
        quad = (x2-x1)/4;
	mid = (x1+x2)/2;
	
	if c == 0,
	  m = a+b*mid;
	  return;
	end
	
        xstar = -b/(2*c);
	if xstar <= x1+quad | xstar >= x2-quad,
	  m = a + b*mid + c*mid^2;
	elseif x1+quad <= xstar & xstar <= mid,
	  m = a + b*(xstar+quad) + c*(xstar+quad)^2;
	elseif mid <= xstar & xstar <= mid+quad,
	  m = a + b*(xstar-quad) + c*(xstar-quad)^2;
	end
	
% 
% Copyright (c) 1995. David L. Donoho and Thomas P.Y.Yu
%    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
