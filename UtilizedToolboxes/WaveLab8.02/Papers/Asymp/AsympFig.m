function AsympFig(num)
% AsympFig -- callback implementing functions of AsympDemo
global ASFIGNUM
global N rho 
if 1 <= num & num <=28 ,
    figname = FigNameString('asfig',num);
    clc; home; help(figname);
    eval(figname);
    RegisterPlot(figname,'{R}');
    drawnow;
    ASFIGNUM = num;
elseif num==89,   % change default settings
    N = input('sample size for figures 2-6, default 2048, must be power of 2?');
    rho = input('signal-to-noise ratio, default 7?');
    ASFIGNUM = 0;
elseif num==90,
    AsympInit
    for num=1:10,
       figname = FigNameString('asfig',num);
       eval(figname); 
       RegisterPlot(figname,'{R}');
       clc; home; help(figname);
       drawnow;
       ASFIGNUM = num;
    end
elseif num == 91,
    num = input('Figure to display (1 <= # <= 10)?');
    disp(num) 
    if 1 <= num & num <=10 ,
       nihil = ~exist('ASFIGNUM');
       if ~nihil,
           empty = isempty(ASFIGNUM);
       else 
           empty = 1;
       end
       if ~empty,
           nil   = ASFIGNUM == 0;
       else
           nil   = 1;
       end
       if nil,
               AsympInit
       end
       figname = FigNameString('asfig',num);
       clc; home; help(figname);
       eval(figname);
       RegisterPlot(figname,'{R}');
       drawnow;
       ASFIGNUM = num;
    end
elseif num==92,
%   figure;
    disp('ONLY JOKING')
elseif num==93,
%   print adapt.ps
    disp('ONLY JOKING')
else
    disp('Bizarre argument in AsympFig') 
    disp(sprintf('num =%g',num))
end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
