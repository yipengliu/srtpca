function def_siglen(m)
% def_siglen -- Called by WLBrowser
%  Usage
%    def_siglen(m)
%
do_global; global h_sigmenu nsig
%
nm = 256;
for i=1:5,
  nm = 2*nm;
  if m==nm,
      set(h_sigmenu(i),'Checked','on');
   else 
       set(h_sigmenu(i),'Checked','off');
   end
end
%
nsig = m;
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
