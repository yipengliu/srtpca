function sol=RMSE(M,F)  %求均方根误差

M = abs(M(:));
F = abs(F(:));
[n,m]=size(F);
D=(M-F).^2;
sol=sqrt(sum(D)/(n*m));
