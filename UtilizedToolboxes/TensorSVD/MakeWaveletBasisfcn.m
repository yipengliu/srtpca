function W = MakeWaveletBasisfcn(I,WO,L2)
U1 = eye(I(1));
W = zeros(I(1),I(1));
qmf = MakeONFilter('Daubechies',WO);

for j = 1:I(1)
    W(:,j) = FWT_PO(U1(:,j),L2,qmf);
end

