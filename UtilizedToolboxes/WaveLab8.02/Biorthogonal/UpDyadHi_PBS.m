function y = UpDyadHi_PBS(x,qmf)
% UpDyadHi_PBS -- Hi-Pass Upsampling operator; periodized
%  Usage
%    u = UpDyadHi_PBS(d,f)
%  Inputs
%    d    1-d signal at coarser scale
%    sf   symmetric filter
%  Outputs
%    u    1-d signal at finer scale
%
%  See Also
%    DownDyadLo_PBS, DownDyadHi_PBS, UpDyadLo_PBS, IWT_PBS, symm_aconv
%
	
	y = symm_aconv( MirrorSymmFilt(qmf), rshift( UpSample(x) ) );
	
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
    
