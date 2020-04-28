function IMJPlotMultiRes(wavecoef,L,scal,QMF)
% IMJPlotMultiRes -- Mallat-Style MRA plot -- IJ version with changed axis labelling
%
if scal==0, 
    scal = 1. / max(abs(wavecoef)); 
end
[n,J] = dyadlength(wavecoef); 
LockAxes([0 1 (L-2) J]);
t = (.5:(n-.5))/n;
%
	for j=(J-1):-1:L
	   w = zeros(1,n);
	   w(dyad(j)) = wavecoef(dyad(j));
	   x = IWT_PO(w,j,QMF);
	   plot(t, j + scal.*x);
	end
	w = zeros(1,n);
	w(1:2^(L)) = wavecoef(1:2^(L));
	x = IWT_PO(w,L,QMF);
	plot(t,(L-1) + scal.*x);
%xlabel('Spatial Var.'); ylabel('Dyadic Resolution Level');
%title('Multi-Resolution Decomposition');
UnlockAxes;

    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
