function MESFig(num)
% MESFig -- Callback implementing functions of MESDemo
%  Usage
%    MESFig(num)
%

global MESFIGNUM

if 2.01 <= num & num <=6.5 ,

	num = floor(100*num + .5);
    figname = FigNameString('mefig',num);
    clc; home; help(figname);
    eval(figname);
    RegisterPlot(figname,'{R}');
    drawnow;
    MESFIGNUM = num;

elseif num==89,   % change default settings

    disp('In this release there are no settings which can be changed')
	
elseif num==90,   %  All Figures of MinEntSegPaper

    MESInit
	%  section 2
	for ifig = 1:14,
	   figname = FigNameString('mefig2',ifig);
       clc; home; help(figname);
	   eval(figname)
	   RegisterPlot(figname,'{R}')
	   drawnow; 
	end
	%  section 3
	for ifig = 2:6,
	   figname = FigNameString('mefig3',ifig);
	   clc; home; help(figname);
		clf;
	   eval(figname)
	   RegisterPlot(figname,'{R}')
	   drawnow; 
	end
	%  section 4
	for ifig = 1:2,
	   figname = FigNameString('mefig4',ifig);
	   clc; home; help(figname);
		clf;
	   eval(figname)
	   RegisterPlot(figname,'{R}')
	   drawnow; 
	end

	%  section 6
	for ifig = 1:5,
	   figname = FigNameString('mefig6',ifig);
	   clc; home; help(figname);
	   clf;
	   eval(figname)
	   RegisterPlot(figname,'{R}')
	   drawnow
	end

elseif num == 91,

    num = input('Figure to display (2.01 <= # <= 6.50)?');
    disp(num) 
    if 2.01 <= num & num <= 6.50,
		nihil = isempty(MESFIGNUM);
		if ~nihil,
		   empty = isempty(MESFIGNUM);
		else 
		   empty = 1;
		end
		if ~empty,
		   nil   = MESFIGNUM == 0;
		else
		   nil   = 1;
		end
		if nil,
			   MESInit
		end

		num = floor(100*num + .5);
		figname = FigNameString('mefig',num);
		clc; home; help(figname);
		eval(figname);
		RegisterPlot(figname,'{R}');
		drawnow;
		MESFIGNUM = num;
    end

elseif num==92, %   figure;
    disp('ONLY JOKING')

elseif num==93, %   print adapt.ps
    disp('ONLY JOKING')
else

    disp('Bizarre argument in MESFig') 
    disp(sprintf('num =%g',num))

end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
