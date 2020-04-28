function update_plot(frac)
% update_plot -- Called by WLBrowser
%  Usage
%    update_plot(frac)
%
global PlotFig HC n signal_name
tmp = get(PlotFig,'UserData');
%n
%disp(tmp(1:10))
s = length(tmp);
x = tmp(4:s);
m = round(frac*n);
panel = tmp(3);
lo = m - panel + 1;
hi = m + panel ;
lo = max(1,min(lo,n-2*panel));
hi = min(n,max(hi,2*panel+1));
%[lo hi panel]
r = lo:hi;
plot(r,x(r));
axis([lo,hi,tmp(1),tmp(2)]);
grid
title(signal_name);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
