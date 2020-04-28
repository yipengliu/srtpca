function MedianFig(num)
% MedianFig -- callback implementing functions of MedianDemo

global MEDFIGNUM
global N rho 
if 21 <= num & num <=52 ,
  figname = FigNameString('mifig',num);
  clc; home; help(figname);
  if exist(figname), 
    eval(figname); 
    RegisterPlot(figname,'{R}');
    drawnow;
    MEDFIGNUM = num;
  end
elseif num==89,   % change default settings
  N = input('sample size for figures 2-6, default 2048, must be power of 2?');
  rho = input('signal-to-noise ratio, default 7?');
  MEDFIGNUM = 0;
elseif num==90,
  MIPTInit
  for num=21:52,
    figname = FigNameString('mifig',num);
    if exist(figname), 
      eval(figname); 
      RegisterPlot(figname,'{R}');
      clc; home; help(figname);
      drawnow;
      MEDFIGNUM = num;
    end
    clf
  end
elseif num == 91,
  num = input('Figure to display (21,22,23,24,31,41,42,51,52)?');
  disp(num) 
  if 21 <= num & num <=52 ,
    nihil = ~exist('MEDFIGNUM');
    if ~nihil,
      empty = isempty(MEDFIGNUM);
    else 
      empty = 1;
    end
    if ~empty,
      nil   = MEDFIGNUM == 0;
    else
      nil   = 1;
    end
    if nil,
      MIPTInit
    end
    figname = FigNameString('mifig',num);
    clc; home; help(figname);
    eval(figname);
    RegisterPlot(figname,'{R}');
    drawnow;
    MEDFIGNUM = num;
  end
elseif num==92,
  % figure;
  disp('ONLY JOKING')
elseif num==93,
  disp('ONLY JOKING')
else
  disp('Bizarre argument in MIPTFig') 
  disp(sprintf('num =%g',num))
end

%	Revision History
%		09/29/99	MRD	modified prompt for figure #

    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
