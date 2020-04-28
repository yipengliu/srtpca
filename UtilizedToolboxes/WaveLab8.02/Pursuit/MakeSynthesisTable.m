function spkt = MakeSynthesisTable(atomic,pkt)
% MakeSynthesisTable -- Convert atom list to packet table
%  Usage
%    spkt = MakeSynthesisTable(atomic,pkt)
%  Inputs
%    atomic     atoms from wavelet packet or cosine packet table
%    pkt        packet table (only the shape is used)
%  Outputs
%    spkt       packet table filled with coefficients from atom list  
%
    spkt = zeros(size(pkt));
    [n,L] = size(pkt);
    D = L-1;
%
%
    [natom,ncharm] = size(atomic);
    for j=1:natom,
        a = atomic(j,1); d = atomic(j,2); 
        b = atomic(j,3); k = atomic(j,4);
        if a ~= 0,
           spkt(pkt2ix(d,b,k,D,n),d+1) = a;
        end    
    end
%

%
% Copyright (c) 1994. David L. Donoho
%
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
