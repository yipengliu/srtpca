function StatWT = FWT_Stat(x,L,qmf)
% FWT_Stat -- stationary wavelet transform
%  Usage
%    StatWT = FWT_Stat(x,D,qmf) 
%  Inputs
%    x        array of dyadic length n=2^J
%    L        degree of coarsest scale
%    qmf      orthonormal quadrature mirror filter 
%  Outputs
%    StatWT   stationary wavelet transform table
%             formally same data structure as packet table
%             log_2(n)-D scales by n elements 
%
%  See Also
%    IWT_Stat, FWT_TI
%

	TIWT    = FWT_TI(x,L,qmf);
	StatWT  = TI2Stat(TIWT);

%
% Copyright (c) 1994. David Donoho and Shaobing Chen
% 
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
