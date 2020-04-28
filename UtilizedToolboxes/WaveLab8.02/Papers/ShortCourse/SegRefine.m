function a2 = SegRefine(a,D,Filter,EdgeFilter,t,j)
% SegRefine -- Perform refinement
%  Usage
%    a2 = SegRefine(a,D,Filter,EdgeFilter,t,j)
%
k0 = floor(2^j * t); kk0 = k0;
eta0 = (2^j * t) - k0;
if eta0 > .5,
   kk0 = k0+1;
   %fprintf('flipping: [eta0,k0,j,t]= '), disp([eta0,k0,j,t])
end
SegFilter = MakeAISegmentFilter(D,eta0);
a2 = SRefine(a,D,Filter,EdgeFilter,SegFilter,k0,kk0);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
