function StatWT = TI2Stat(TIWT)
% TI2Stat -- Convert Translation-Invariant Transform to Stationary Wavelet Transform
%  Usage
%    StatWT = TI2Stat(TIWT)
%  Inputs
%    TIWT     translation invariant table from FWT_TI
%  Outputs
%    StatWT   stationary wavelet transform table table as FWT_Stat
%
%  See Also
%    Stat2TI, FWT_TI, FWT_Stat
%
	StatWT = TIWT; 
	[n,D1] = size(StatWT); 
	D = D1-1;
	J = log2(n);
	L = J-D;
%
	index = 1;
	
	for d=1:D,
		nb = 2^d;
		nk = n/nb;
		
		index = [ (index+nb/2); index];
		index = index(:)';
		
		for b= 0:(nb-1),
			StatWT(d*n + (index(b+1):nb:n)) = TIWT(d*n + packet(d,b,n));
		end
	end
	
	for b= 0:(nb-1),
		StatWT((index(b+1):nb:n)) = TIWT(packet(d,b,n));
	end

%
% Copyright (c) 1994. Shaobing Chen
%

	
	
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
