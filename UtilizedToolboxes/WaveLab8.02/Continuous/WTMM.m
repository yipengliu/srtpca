function maxmap = WTMM(cwt,par)
% WTMM -- Wavelet Transform Maximum Modulus
%  Usage
%    maxmap = WTMM(cwt,par)
%  Inputs
%    cwt    Output of CWT
%    par    optional. If present, keep thresholds only
%           above a certain value. UNUSED AT MOMENT
%  Outputs
%    maxmap binary array indicating presence of max or not
%
%  Description
%    Used to calculate fractal exponents etc. 
%
	
	sz = size(cwt);
	nscale = sz(2);
	n = sz(1);
	
	maxmap = zeros(sz);

	t      = 1:n;
	tplus  = rshift(t);
	tminus = lshift(t);
	cwt    = abs(cwt);
		
	for k=1:nscale,
	     localmax =  cwt(t,k) > cwt(tplus,k) & cwt(t,k) > cwt(tminus,k) ;
		 maxmap(t,k) = localmax(t);
	end
	
	
	
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
