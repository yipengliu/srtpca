function wc = FWT_SegAI(x,L,D,F,EF,t)
% FWT_SegAI -- Forward Segmented Transform
%  Usage
%    wc = FWT_SegAI(x,L,D,F,EF,t)
%

[n,J] = dyadlength(x);
wc = zeros(1,n);
sig = x;
for j=(J-1):-1:L ,
   [beta,alfa] = SAIDyadUp(sig,D,F,EF,t,j);
   wc(dyad(j)) = alfa;
   sig = beta;
end
wc(1:2^L) = sig;
%

   
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
