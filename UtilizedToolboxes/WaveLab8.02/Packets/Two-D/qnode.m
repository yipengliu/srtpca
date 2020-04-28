function ix = qnode(d,bx,by)
% qnode -- Quad tree indexing
%  Usage
%    ix = qnode(d,bx,by)
%  Inputs
%    d       depth in splitting
%    bx,by   box coordinates at that depth
%  Outputs
%    ix      index of that node in tree
%
%  Description
%    ix = 4^(d) + by + bx*2^(d)
%
    ix = 4^(d) + by + bx*2^(d);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
