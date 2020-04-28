function ridges = Ridge_WindowFT(specgm)
% Ridge_WindowFT -- Find Ridges of Window Fourier Transform
%  Usage
%    ridges = Ridge_WindowFT(specgm);
%  Inputs
%    specgm   	output of window Fourier transform, from WindowFT
%  Outputs
%    ridges	ridges table of window Fourier transform;
%		A binary table having same size as specgm
%  Side Effects
%    
%  Description
%
%  Algorithm
%     
%  Examples
%     
%  See Also
%    WindowFT	
%  References
%    Mallat, "A Wavelet Tour of Signal Processing"
 
 ridges = Ridge_AWT(specgm,3);



%
% Copyright (c) 1996. Xiaoming Huo
% 
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
