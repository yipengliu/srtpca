% idfig06 -- Ideal Figure 06: Ideal Damping in Wavelet Domain
%
% The ideal reconstructions of figure 5 depicted in 
% the wavelet domain.  The reconstructions have a sparse
% wavelet transform.
%
global whblocks whbumps whheavi whDoppler
global L
%
clf; claxis
%
   subplot(221)
   IMJPlotWaveCoeff(whblocks,L,0.05);
   title(' 6 (a) Ideal[Blocks] ')
%
   subplot(222)
   IMJPlotWaveCoeff(whbumps,L,0.05);
   title(' 6 (b) Ideal[Bumps] ')
%
   subplot(223)
   IMJPlotWaveCoeff(whheavi,L,0.05);
   title(' 6 (c) Ideal[HeaviSine] ')
%
   subplot(224)
   IMJPlotWaveCoeff(whDoppler,L,0.05);
   title(' 6 (d) Ideal[Doppler] ')
%
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
