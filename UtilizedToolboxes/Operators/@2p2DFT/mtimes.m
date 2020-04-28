function res = mtimes(a,b)
% res = mtimes(FT, x)
%
[nx,ny,nt] = size(a.mask);

if a.adjoint  %% Äæ²Ù×÷
%     bb = reshape(b,a.dataSize(1),a.dataSize(2));
%     res = zpad(bb.*a.mask,a.imSize(1),a.imSize(2));%% mask size ´óĞ¡
    u = zeros(nx,ny,nt);
    u(a.mask>0) = b; 
   u = ifftshift(ifftshift(u,1),2);
    y = sqrt(nx*ny)*ifft2(u); 
%     y=ifft2c(u);
%     switch a.mode
%     	case 0
% 		res = real(res); 
%    	case 1
% 		res = real(res);
%     end



else
    x = reshape(b,[nx ny nt]);
    u = fft2(x); 
    u = fftshift(fftshift(u,1),2);
    u = u/sqrt(nx*ny); 
% u=fft2c(x);
    y = u(a.mask>0); 
end


    res = y;
end



    


