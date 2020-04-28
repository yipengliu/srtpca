function PSNR = evaluatePSNR(x1,x2)
% PSNR = evaluatePSNR(x1,x2)
%
% Calculate PSNR between ground truth and test data.
%
% INPUTS
%   x1...           Ground truth.
%   x2...           Test data of same dimensions as x1.
%
% OUTPUTS
%   PSNR...         PSNR metric.

%  Jose Caballero
%  Department of Computing
%  Imperial College London
%  jose.caballero06@gmail.com
%
%  May 2014

MSE = mean(abs(x1(:)-x2(:)).^2);
PSNR = 10*log10(max(abs(x1(:)))^2/MSE);

end