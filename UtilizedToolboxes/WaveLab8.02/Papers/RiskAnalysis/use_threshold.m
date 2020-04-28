function use_threshold(m)
global h_thrmenu threshtype

for i=1:3,
  set(h_thrmenu(i),'Checked','off');
end
set(h_thrmenu(m),'Checked','on');

if m==1,
  threshtype = 'Hard';
elseif m == 2
  threshtype = 'Soft';
else 
  threshtype = 'SoftMO';
end

    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
