function d = DownDyadHi_PBS(x,qmf)
% DownDyadHi_PBS -- Hi-Pass Downsampling operator (periodized,symmetric)
%  Usage
%    d = DownDyadHi_PBS(x,sqmf)
%  Inputs
%    x    1-d signal at fine scale
%    sqmf symmetric filter
%  Outputs
%    y    1-d signal at coarse scale
%
%  See Also
%    DownDyadLo_PBS, UpDyadHi_PBS, UpDyadLo_PBS, FWT_PBS, symm_iconv
%
	d = symm_iconv( MirrorSymmFilt(qmf),lshift(x));
	n = length(d);
	d = d(1:2:(n-1));

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
    
