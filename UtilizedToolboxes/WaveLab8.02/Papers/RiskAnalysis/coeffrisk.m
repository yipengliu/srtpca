function risk = coeffrisk(mu,lambda,thresholdtype)
% coeffrisk --- This calculates single coefficient risks
%   Usage
%     risk = coeffrisk(mu,lambda,thresholdtype)
% Inputs
%   mu            : the single coefficient
%   lambda        : the threshold value
%   thresholdtype : 'Hard' or 'Soft' thresholding
% Outputs
%   Risk          : Computed according to Equations 2.3 & 2.4 of paper
%
%   Copyright --  Sudeshna Adak, Dept. of Statistics, 
%                 Stanford University


if nargin < 3,
  thresholdtype = 'Hard';
end
if nargin < 2,
  error('Threshod Value, lambda unknown');
end

if thresholdtype == 'Hard'
 risk = ((mu.^2).*(normcdf(lambda-mu) - normcdf(-lambda - mu))) + ...
        1 - normcdf(lambda-mu) + 1 - normcdf(lambda+mu) + ...
        ((lambda-mu).*normpdf(lambda-mu)) + ...
        ((lambda+mu).*normpdf(lambda+mu));
elseif thresholdtype == 'Soft'
 risk = 1 + (lambda.^2) + ...
        (((mu.^2) - (lambda.^2) - 1).*(normcdf(lambda-mu) - ...
                      normcdf(-lambda - mu))) - ... 
        ((lambda-mu).*normpdf(lambda-mu)) - ...
        ((lambda+mu).*normpdf(lambda+mu));
else
  disp('Do not know thresholdtype')
end
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
