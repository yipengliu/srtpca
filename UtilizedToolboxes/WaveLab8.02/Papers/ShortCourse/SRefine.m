function a2 = SRefine(a,D,Filter,EdgeFilter,Sfilter,k0,kk0)
% SRefine -- Perform refinment
%  Usage
%    a2 = SRefine(a,D,Filter,EdgeFilter,Sfilter,k0,kk0)
%
	n = length(a); n2 = 2*n; a2 = zeros(1,n2);
%
	ae = [ a; 0 .*a ]; ae = ae(:)'; 
	temp = conv(Filter,ae);
	a2((D+1):(n2-D)) = temp((2*D+1):(n2));
	a2(1:D) = EdgeFilter * (a(1:(D+1))');
	a2((n2-D+1):n2) = reverse(EdgeFilter * (reverse(a((n-D):n))'));
	a2((1+ 2*k0 - D):(1 + 2*k0 + D+1)) = Sfilter * (a((1+kk0-D-1):(1+kk0+D))');
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
