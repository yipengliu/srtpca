function [i,j] = StretchMatrix(ie,je,n,L)
% StretchMatrix -- Stretch matrix into BCR nonstandard form
%  Usage
%    [i,j] = StretchMatrix(ie,je,n,L)
%  Inputs
%    ie,je    row/col indices of nonxero elements of matrix
%    n        size of matrix
%    L        number of resolution levels
%  Outputs
%    i,j      row/col indices of elements in nonstandard form
%             of matrix
%
%  Description
%    To construct the nonstandard form of a matrix, do something
%    like this:
%       [ie,je,s] = find(StdForm)
%       [i,j]     = StretchMatrix(ie,je,n,L)
%       NonStd    = sparse(i,j,s,2*n,2*n)
%

	J = floor(log2(n+1));
	for l=(J-1):-1:L,
	  cond = (ie > 2^l | je > 2^l) & (ie <= 2^(l+1) & je <= 2^(l+1) );
	  inx = find(cond);
	  if ~isempty(inx),
	    ie(inx) = ie(inx) + 2^(l+1);
	    je(inx) = je(inx) + 2^(l+1);
	  end
	end
	i = ie;
	j = je;

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
    
