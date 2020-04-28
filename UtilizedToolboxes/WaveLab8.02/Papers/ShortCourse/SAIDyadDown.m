function afine = SAIDyadDown(beta,alfa,D,F,EF,t,j)
% SAIDyadDown -- SAI Dyad Down
%  Usage
%    afine = SAIDyadDown(beta,alfa,D,F,EF,t,j)
%

n = length(beta);
ahat = SegRefine(beta,D,F,EF,t,j);
adif =  [(-alfa) ; alfa ];
adif = adif(:)';
afine = ahat + adif;
afine = afine ./sqrt(2);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
