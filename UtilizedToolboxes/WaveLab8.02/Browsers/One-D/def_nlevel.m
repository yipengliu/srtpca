function def_nlevel(m)
% def_nlevel -- Called by WLBrowser
%  Usage
%    def_nlevel(m)
%
do_global; global h_nlvmenu

for i=1:3,
  set(h_nlvmenu(i),'Checked','off');
end
set(h_nlvmenu(m),'Checked','on');

if m==0,
   namp = 0.
elseif m==1,
   namp =1;
else
   namp = input('New Noise Level?');
end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
