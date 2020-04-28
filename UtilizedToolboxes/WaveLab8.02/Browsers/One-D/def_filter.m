function def_filter(m)
% def_filter -- Called by WLBrowser
%  Usage
%    def_filter(m)
%

do_global; global h_wavemenu

for i=1:5,
   set(h_wavemenu(i),'Checked','off')
end
set(h_wavemenu(m),'Checked','on')

filter_type = m;
if filter_type == 1
  % 'Haar'
 QMF = MakeONFilter('Haar', 1);

elseif filter_type == 4
  %'Coiflet';
  Par = 2;
   QMF = MakeONFilter('Coiflet',Par);

elseif filter_type == 5
  %'Symmlet';
  Par = 6;
  QMF = MakeONFilter('Symmlet',Par);
end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
