function y = UpDyadLo_PBS(x,qmf)
% UpDyadLo_PBS -- Lo-Pass Upsampling operator; periodized
%  Usage
%    u = UpDyadLo_PBS(d,sf)
%  Inputs
%    d    1-d signal at coarser scale
%    sf   symmetric filter
%  Outputs
%    u    1-d signal at finer scale
%
%  See Also
%    DownDyadLo_PBS , DownDyadHi_PBS , UpDyadHi_PBS, IWT_PBS, symm_iconv
%
	y =  symm_iconv(qmf, UpSample(x) );

%
% Copyright (c) 1995. David L. Donoho
%     
    
    
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
