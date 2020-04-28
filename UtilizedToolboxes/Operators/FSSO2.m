
function y = FSSO2(x,mask)
%   Define forward/adjoint Fourier and Sparse Sampling Operator
%
%   Undersampled Fourier transform for 2D+time sequences
%
%   x: input sequence [nx ny nt]
%   mask: sampling pattern [nx ny nt] 
%
%   B. Trémoulhéac
%   b.tremoulheac@cs.ucl.ac.uk
%   Jul 2013

[nx,ny,nt] = size(mask);


    x = reshape(x,[nx ny nt]);
   
    u =ifftshift(ifftshift(x,1),2);
     u = ifft2(u); 
    u = u*sqrt(nx*ny); 
    % u=fft2c(x);
    y = u(mask>0); 

    u = zeros(nx,ny,nt); 
      u(mask>0) = y; 
  u= ifft2(u);
   u = fftshift(fftshift(u,1),2);
    y =u /sqrt(nx*ny); 
%     y=ifft2c(u);

y = y(:);

