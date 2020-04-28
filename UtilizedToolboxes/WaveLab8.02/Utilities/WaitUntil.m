function WaitUntil(oldclock,sec)
% WaitUntil -- Burn up CPU cycles until sec seconds elapse from oldclock
%  Usage
%    WaitUntil(oldclock,sec)
%  Inputs
%    oldclock    old clock value
%    sec         number of seconds to wait
%
%  Side Effects
%    A pause of sec will be effected
%

while etime(clock,oldclock) < sec
   for i=1:1000, x = zeros(1,100); end
   etime(clock,oldclock);
end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
