function [lox,hix,loy,hiy] = quadbounds(d,bx,by,n)
% quadbounds -- x,y bounds of quadlet
%  Usage
%    [lox,hix,loy,hiy] = quadbounds(d,bx,by,n)
%  Inputs
%    d       depth in splitting
%    bx,by   box coordinates at that depth
%    n       extent of image
%  Outputs
%    lox     lower x-index of quadlet
%    loy     lower y-index of quadlet
%    hix     upper x-index of quadlet
%    hiy     upper y-index of quadlet
%
%  Description
%    This routine is called by other, higher-level Wavelab functions
%    and is not intended to be useful for most users.
%
    boxsize = n/(2^d);
    lox = bx*boxsize+1;
    loy = by*boxsize+1;
    hix = (bx+1)*boxsize;
    hiy = (by+1)*boxsize;
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
