function cospkt = MakeCosinePacket(d,b,k,Bell,D,n)
% MakeCosinePacket -- Make Cosine Packet signal
%  Usage
%    cospkt = MakeCosinePacket(d,b,k[,Bell,D,n])
%  Inputs
%    d,b,k    1-d packet index
%    Bell     bellname  e.g. 'Sine'
%    D        D >= d; default =d.
%    n        signal length (n >> 2^d; default 2^(d+5))
%  Outputs
%    cospkt   1-d signal; the requested cosine packet
%
%  Description
%    This function returns the cosine packet basis element
%    corresponding to position (d,b,k) in the CP table.
%
%  See Also
%    CPAnalysis, CPSynthesis, CPImpulse
%

	if nargin < 6,
	   n = 2^(d+5);
	end
	if nargin < 5,
	   D=d;
	end
	if nargin < 4,
	   Bell = 'Sine';
	end
	%
	L = D+1;
	cp = zeros(n,L);
	cp = CPImpulse(cp,d,b,k,Bell);
	cospkt = dct_iv(cp(:,1)');

%
% Copyright (c) 1993-1994. David L. Donoho
% 
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
