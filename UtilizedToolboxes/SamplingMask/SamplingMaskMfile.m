if SamplingMethod == 1
    mask =  SamplingMasks_Cartesian(nx,ny,nt,SR);
elseif SamplingMethod == 2
    mask = zeros(size(XFull));
    for jj = 1:nt;
        Theta = pi*(jj-1)/(SR*nx*nt);
        M2 = RadialMask_BCS_fcn(SR*nx,nx,Theta);
        mask(:,:,jj) = M2;
    end
end
RealSR = nnz(mask)/length(mask(:))