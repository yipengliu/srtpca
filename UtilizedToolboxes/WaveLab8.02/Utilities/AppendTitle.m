function titl = AppendTitle(Default,Extra)
% AppendTitle -- Utility to Build Title String
%  Usage
%    titl = AppendTitle(Default,Extra)
%  Inputs
%    Default    string. Default value of title
%    Extra      string. Extra piece to add
%  Output
%    titl       title string
%  Description
%    if Extra begins '+', titl is the concatenation
%    of Default and the remainder of Extra
%    Otherwise titl is Extra (if Extra is nonempty) or
%    Default (if Extra is empty).
%
%     Default          Extra         titl
%    'Spectrogram'     []            'Spectrogram'
%    'Spectrogram'    '+: w=20'      'Spectrogram: w=20'
%    'Spectrogram'    'New Data'     'New Data'
%
%
	n = length(Extra);
	if n==0,
		titl = Default;
	elseif Extra(1) == '+' & n>1,
		titl = [Default ' ' Extra(2:n)];
	else
		titl = Extra;
	end

%
% Copyright (c) 1995, David Donoho
%
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
