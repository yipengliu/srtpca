function y = FSSOSep(x,mask,mode)

[nx,ny,nt,nc] = size(mask);

if mode == 1   %  Forward operator
    x = reshape(x,[nx ny nt nc]);
    for i = 1:nc
        xsep = x(:,:,:,i);
        u = fft2(xsep);
        u = fftshift(fftshift(u,1),2);
        u = u/sqrt(nx*ny);
        yy = u(mask(:,:,:,i)>0);
        if i == 1
            y = zeros(nc,length(yy));
        end
        y(i,:) = yy;
    end
elseif mode == 2  %  Adjoint operator
    y = zeros(nx,ny,nt,nc);
    u = zeros(nx,ny,nt);
    for i = 1:nc
        u(mask(:,:,:,i)>0) = x(i,:);
        u = ifftshift(ifftshift(u,1),2);
        y(:,:,:,i) = sqrt(nx*ny)*ifft2(u);
    end
end
