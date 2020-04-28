function fine = MultiLMIRefine(coarse,D,j)

fine = coarse;
for i=1:j,
  fine = LMIRefineSeq(fine,D);
end    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
