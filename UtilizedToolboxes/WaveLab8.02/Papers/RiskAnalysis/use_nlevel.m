function use_nlevel(m)
global h_nlvmenu noiseamp noisetype

for i=1:3,
  set(h_nlvmenu(i),'Checked','off');
end
set(h_nlvmenu(m),'Checked','on');

if m==1,
disp('*********************************************************');
disp('*    This sets sigma = 0.02 for Gaussian Noise          *');
disp('*    This sets a = 0.02 for Uniform [-a/2,a/2] Noise    *');
disp('*    This sets lambda = 0.02 for Poisson(lambda) Noise  *');
disp('*********************************************************');
   noiseamp = 0.02;
elseif m==2,
disp('*    This sets sigma = 0.1 for Gaussian Noise          *');
disp('*    This sets a = 0.1 for Uniform [-a/2,a/2] Noise    *');
disp('*    This sets lambda = 0.1 for Poisson(lambda) Noise  *');
   noiseamp = 0.01;
else
   disp('Input sigma, for Gaussian Noise')
   disp('Input a, for Uniform [-a/2,a/2]')
   disp('Input lambda, the mean of the Poisson distn')
   noiseamp = input('New Noise Level?');
   disp(['You have chosen the noise level:' num2str(noiseamp)]); 
end

    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
