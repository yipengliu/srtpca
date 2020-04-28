function def_nonlin(m)
% def_nonlin -- Called by WLBrowser
%  Usage
%    def_nonlin
%
do_global; global h_nonmenu

for i=1:2
  set(h_nonmenu(i),'Checked','off');
end
set(h_nonmenu(m),'Checked','on');
nonlin_type = m;
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
