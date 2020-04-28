global x_tmp x_use x_length x_name sigchoice  fig_hand4 x_noise noiseamp
global signal_name n
if (sum(sigchoice == 1) == 1),
       b = 1:10; 
b = b(sigchoice == 1);
       Gen_signal(b,'Yes');
else
disp('**** This produces Fig 1 of paper   ****');
figure(fig_hand4);clg;orient landscape;
nplot = sum(sigchoice);
b = 1:10; b = b(sigchoice == 1);
  for i = 1:nplot,
    Gen_signal(b(i),'No');
figure(fig_hand4);
subplot(ceil(nplot/4),4,i)
       plot((0:(x_length-1))/x_length,x_tmp);
       axis([0 1 0 1]);
       grid on;
       titlestr = ['#' num2str(b(i)) '  ' signal_name]; 
       title(titlestr);
    end
 end

    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
