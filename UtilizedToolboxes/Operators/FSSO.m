% function y = FSSO(x,mask,mode)
% %   Define forward/adjoint Fourier and Sparse Sampling Operator
% %
% %   Undersampled Fourier transform for 2D+time sequences
% %
% %   x: input sequence [nx ny nt]
% %   mask: sampling pattern [nx ny nt] 
% %
% %   B. Tr茅moulh茅ac
% %   b.tremoulheac@cs.ucl.ac.uk
% %   Jul 2013
% 
% [nx,ny,nt] = size(mask);
% 
% if mode == 1   %  Forward operator
%     x = reshape(x,[nx ny nt]);
%     u = fft2(x); 
%     u = fftshift(fftshift(u,1),2);
%     u = u/sqrt(nx*ny); 
% % u=fft2c(x);
% %u=u+noise;
%     y = u(mask>0); 
% elseif mode == 2  %  Adjoint operator
%     u = zeros(nx,ny,nt);
%     if size(x,1)==nx*ny*nt  %%输入为列向量
%        u=x;
%     else
%       u(mask>0) = x; 
%     end
%    u = ifftshift(ifftshift(u,1),2);
%     y = sqrt(nx*ny)*ifft2(u); 
% %     y=ifft2c(u);
% end
% y = y(:);




% noise addition
function y = FSSO(x,mask,mode,noise)

if nargin==3
    noise=0;
    
end
[nx,ny,nt] = size(mask);

if mode == 1   %  Forward operator
    x = reshape(x,[nx ny nt]);
    u = fft2(x); 
    u = fftshift(fftshift(u,1),2);
    u = u/sqrt(nx*ny); 
% u=fft2c(x);
u=u+noise;
    y = u(mask>0); 
elseif mode == 2  %  Adjoint operator
    u = zeros(nx,ny,nt);
    if size(x,1)==nx*ny*nt  %%输入为列向量
       u=x;
    else
      u(mask>0) = x; 
    end
   u = ifftshift(ifftshift(u,1),2);
    y = sqrt(nx*ny)*ifft2(u); 
%     y=ifft2c(u);
end
y = y(:);
