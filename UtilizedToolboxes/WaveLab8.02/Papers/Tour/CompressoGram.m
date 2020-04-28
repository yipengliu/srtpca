function CompressoGram(Sig,QMF)
% CompressoGram -- compare compress abilities of four transforms
%

% Haar Transform
	HaarQMF = MakeONFilter('Haar');
	hSig = FWT_PO(Sig,1,HaarQMF);
	epsilon = 1.e-16;  
	ehSig = reverse(cumsum(sort(hSig.^2)))/sum(hSig.^2) + epsilon;
% Cosine Transform
	fSig = dct_iv(Sig); 
	efSig = reverse(cumsum(sort(fSig.^2)))/sum(fSig.^2) + epsilon;
% Wavelet Transform
	wSig = FWT_PO(Sig,5,QMF);
	ewSig = reverse(cumsum(sort(wSig.^2)))/sum(wSig.^2) + epsilon;
	i = 1:length(ewSig);
%
	LockAxes([0 length(ewSig)/2 -8 0]);
	xlabel('n')
	ylabel('Log(c_n)')
	plot(i,log(ewSig),'-');
	plot(i,log(ehSig),'+');
	plot(i, log(efSig),'.')
	UnlockAxes
	
%	Revision History
%		09/29/99	DLD	added epsilon to avoid log(0)


    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
