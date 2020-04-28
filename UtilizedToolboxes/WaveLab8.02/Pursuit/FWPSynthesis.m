function sig = FWPSynthesis(wp,qmf)
% FWPSynthesis -- Synthesize signal from full wavelet packet table
%  Usage
%    sig = FWPSynthesis(wp,qmf)
%  Inputs
%    wp       Wavelet Packet Table 
%    qmf      Wavelet orthonormal qmf
%  Outputs
%    sig      the synthesized signal
% 
	[n,L] = size(wp);
	D = L-1;
%
	sig = wp(:,L)';
	for d= (D-1):-1:0,
		for b=0:(2^d-1)
			 odd = rem(b,2);
			 rson = 2*b + 1 - odd;
			 lson = 2*b + odd;
			 sig(packet(d,b,n)) = ...
				 UpDyadLo(sig(packet(d+1,lson,n)),qmf) + ...
				 UpDyadHi(sig(packet(d+1,rson,n)),qmf) + ...
				 wp(packet(d,b,n),d+1)';
		end
	end
	sig = sig';
	
%
%  Copyright 1994 (c) David L. Donoho
%
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
