function index = node(d,b)
% node -- Tree indexing function
%  Usage
%    index = node(d,b)
%  Inputs
%    d        depth from root of tree
%    b        index among the 2^d possibilities
%             in a left-right scan at that depth
%  Outputs
%    index    linear index of node in tree structure
%
	index =  2^d + b;

%
% Copyright (c) 1993. David L. Donoho
%     
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
