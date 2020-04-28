function Compare2(x,y,L,tit)
% Compare2 -- Compare two compression curves, semilog plot
%  Usage
%    Compare2(x,y,L,tit)
%  Inputs
%    x      transform 1
%    y      transform 2
%    L      coarsest resolution level
%    tit    title for plot
%  Outputs
%    None
%
%  Side Effects
%    A plot is created showing two curves of compression
%    numbers. The first 2^L numbers in each array are ignored.
%    the remaining numbers are sorted in decreasing order, and
%    it is the logarithms of the tail sums that are compared.
%
	cox = reverse(cumsum(sort(x((2^L+1):length(x)).^2)));
	coy = reverse(cumsum(sort(y((2^L+1):length(x)).^2)));
	LockAxes([ 0 100 log(coy(100)) log(coy(1))]);
	plot(log(coy)); hold on; plot(log(cox),'--'); hold off
	title(tit); UnlockAxes; 
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
