function VdLFig(num)
% VdLFig -- callback implementing functions of VdLDemo
global VDLFIGNUM
if 1 <= num & num <=11 ,
    figname = FigNameString('vdlfig',num);
    clc; home; help(figname);
    clf; eval(figname);
    RegisterPlot(figname,'{R}');
    drawnow;
    VDLFIGNUM = num;
elseif num==19,   % change default settings
    clc; home
    disp('There Are No Defaults to CHANGE');
elseif num==20,   % run all figures
    BlockyInit
    for num=1:11,
       figname = FigNameString('vdlfig',num);
       clf; eval(figname); 
       RegisterPlot(figname,'{R}');
       clc; home; help(figname);
       drawnow;
       VDLFIGNUM = num;
       HitAnyKey;
    end
elseif num == 21,
    num = input('Figure to display (1 <= # <= 11)?');
    disp(num) 
    if 1 <= num & num <= 11 ,
       nihil = isempty(VDLFIGNUM);
       if ~nihil,
           empty = isempty(VDLFIGNUM);
       else 
           empty = 1;
       end
       if ~empty,
           nil   = VDLFIGNUM == 0;
       else
           nil   = 1;
       end
       if nil,
               VdLInit
       end
       figname = FigNameString('vdlfig',num);
       clc; home; help(figname);
       clf; eval(figname);
       RegisterPlot(figname,'{R}');
       drawnow;
       VDLFIGNUM = num;
    end
else
    disp('Bizarre argument in VdLFig') 
    disp(sprintf('num =%g',num))
end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
