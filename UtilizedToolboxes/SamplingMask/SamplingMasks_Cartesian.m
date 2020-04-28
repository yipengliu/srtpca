function [Mask1st] =  SamplingMasks_Cartesian(nx,ny,nz,SR)

Mask1st =zeros(nx,ny,nz);

% ---------------- 1st Slice -----------------------------
for i=1:nz
%[pdf,val] = genPDF(nx,3,SR,2);
[pdf,val] = genPDF(nx,10,SR,2,0,0);
[Mask,stat,NN] = genSampling(pdf,100,10);


Mask1st(:,(Mask==1),i) = 1;
Mask1st(:,ny/2-5:ny/2+5,:)=1;
%Mask1st(:,:,i) = fftshift(Mask1st(:,:,i));

end