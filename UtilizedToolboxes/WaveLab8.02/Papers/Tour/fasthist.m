function [bloc,count] = fasthist(w,M)
% FastHist -- fast histogram tool
	q = (max(w) - min(w))/ M ;
	lo = min(w);
	x = sort( [ (0:(M-1)) floor( (w -lo) / q )] );
	x(length(x)) = M-1;
	y = diff([(-1) x]) > .01 ;
	n = 1:length(x);
	cum = [n( y) (length(x)+1)];
	count = (diff(cum)-1);
	count = count(1:M);
	bloc = lo + (0:(M-1)).*q;
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
