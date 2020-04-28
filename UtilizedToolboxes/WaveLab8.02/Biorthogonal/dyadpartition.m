function dp = dyadpartition(n)
% dyadpartition -- determine dyadic partition in wavelet transform of 
%                  nondyadic signals

        J = ceil(log2(n));
	
	m = n;
	for j=J-1:-1:0;
	  if rem(m,2)==0,
	    dps(j+1) = m/2;
	    m = m/2;
	  else
	    dps(j+1) = (m-1)/2;
	    m = (m+1)/2;
	  end
	end
	
	dp = cumsum([1 dps]);
	
% 
% Copyright (c) 1996. Thomas P.Y. Yu
%  
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
