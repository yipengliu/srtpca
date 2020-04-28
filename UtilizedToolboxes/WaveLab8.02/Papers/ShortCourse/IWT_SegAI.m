function beta = IWT_SegAI(w,L,D,F,EF,t)
% IWT_SegAI -- Inverse Segmented Transform
%  Usage
%    beta = IWT_SegAI(w,L,D,F,EF,t)
%

[n,J] = dyadlength(w);
beta = w(1:(2^L));
for j=L:(J-1) ,
   beta = SAIDyadDown(beta,w(dyad(j)),D,F,EF,t,j);
end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
