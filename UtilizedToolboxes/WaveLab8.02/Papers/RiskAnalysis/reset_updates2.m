global upd_never upd_ever

   set(upd_never,'Value',1 - get(upd_ever,'Value'));

if get(upd_never,'Value') == 1,
  Update = 'Never';
else 
  Update = 'ever';
end;
  
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
