function y = rnshift(x,t)
% rnshift -- t circular right shift of 1-d signal
%  Usage
%    r = rnshift(x,t)
%  Inputs
%    x   1-d signal
%  Outputs
%    r   1-d signal 
%        r(i) = x(i-t) for i > t
%	 r(i) = x(n+i-t) else
%

	n = length(x);
	y = [ x( (n-t+1) :n ) x( 1: (n-t) )];
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
