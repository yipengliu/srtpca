function dyad_sig = PadDyad(sig)
% PadDyad -- Zero-fill signal to Dyadic length
%  Usage
%    dyad_sig = PadDyad(sig)
%  Inputs
%    sig        a row or column vector
%  Outputs
%    dyad_sig   a vector of dyadic length
%               with contents taken from sig
%
%  See Also
%    CutDyad
%
	ss = size(sig);
	n = length(sig) ;
    J = ceil(log(n)/log(2));
	n1 = round(2^J);
    if n1 ~= n ,
      if ss(1) == n,
	  	dyad_sig = zeros(n1,1) ;
	  else
	    dyad_sig = zeros(1,n1) ;
	  end
	  dyad_sig(1:n) = sig(1:n);
    else
		dyad_sig = sig;
	end
    
%    
% Copyright (c) 1995, David L. Donoho
%
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
