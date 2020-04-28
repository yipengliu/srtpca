clc
clear;
close all;
warning off;

% -------------------------- Adding Paths ---------------------------------
Path = cd;
Str1 = [Path,'/Dataset'];
addpath(genpath(Str1))
Str3 = [Path,'/UtilizedFunctions'];
addpath(genpath(Str3))
Str5 = [Path,'/UtilizedToolboxes'];
addpath(genpath(Str5))
Str7 = [Path,'/mylib'];
addpath(genpath(Str7))

% -------------------------- Reading Dataset ------------------------------
SaveFile = 0;
load('perf_128_40')
DataName = 'perf_128';
load  D_perf_128_40 ;
[nx,ny,nt] = size(image);
XFull = image;
% -------------------------- General Parameters ---------------------------
SamplingMethod = 2;             % 1- Cartesian       % 2- Radial
SR=0.28;
randn('state',0)
rand('state',0)

% ------------------------- Define SaveFileName ---------------------------
if SaveFile == 1
    SaveName = [];
    SaveName = [SaveName,DataName,'SRTPCA'];
    if SamplingMethod == 1
        SaveName = [SaveName,'_Car'];
    elseif SamplingMethod == 2
        SaveName = [SaveName,'_Rad'];
    end
end



% -------------------------- Main -----------------------------------------
SamplingMaskMfile;
disp(' ')
DispStr = ['*********** SampleRate: ',num2str(SR),' ***********'];
disp(DispStr);

% ------------------------- Define operators --------------------------
E = @(Z) FSSO(Z,mask,1);
Eh = @(Z) FSSO(Z,mask,2);
EhE = @(Z) Eh(E(Z));

T = @(Z) tempFT(Z,[nx ny nt],1);
Th = @(Z) tempFT(Z,[nx ny nt],2);
TXY = @(Z) tempWXY(Z,[nx ny nt],1);
ThXY = @(Z) tempWXY(Z,[nx ny nt],2);
TXYT = @(Z) tempWXYT(Z,[nx ny nt],1,T,Th);
ThXYT = @(Z) tempWXYT(Z,[nx ny nt],2,T,Th);

% ------------------------- Measurements, ZF-IDFT reconstruction ------

y = E(XFull);
recZF = reshape(Eh(y),[nx ny nt]);
PSNR_ZF_Vec = evaluatePSNR(XFull,recZF);
fprintf('ZF-IDFT = %g dB\n',PSNR_ZF_Vec);

% -------------------------- SRTPCA Parameters ---------------------------

muZ =4;
muXY =0.1;
lambda1 =0.1;
lambda2 =0.001;
lambda3=0.001;

opts.quiet = false;
opts.tol = 10e-7;
opts.maxIter =300;
opts.datasize = [nx ny nt];
opts.E = E;
opts.Eh = Eh;
opts.EhE = EhE;
opts.Dx = D{1};
opts.Dy = D{2};
opts.Dt = D{3};
opts.T = T;
opts.Th = Th;
opts.TXY = TXY;
opts.ThXY = ThXY;
opts.TXYT = TXYT;
opts.ThXYT = ThXYT;
opts.ThreshLZ = muZ*lambda1;
opts.ThreshLXY = muXY*lambda1;
opts.ThreshSXY = muXY*lambda2;
opts.ThreshS = muZ*lambda2;
opts.reg =[muXY, muXY, muZ]*lambda3;   %% parameter for TTV(total variation)
opts.delta1 =1;
opts.delta2 =1;
opts.delta3= 1;
opts.delta=1/sqrt(12);  %% step length for primal and dual variables
opts.tau=1/sqrt(12);

t1=clock;
result = SRTPCA(y,opts,XFull,mask,PSNR_ZF_Vec);
time=etime(clock,t1);

L=result.L;
S=result.S;
SRTPCA_rec = result.recon;


SRTPCA_PSNR = evaluatePSNR(XFull,SRTPCA_rec);
fprintf('SRTPCA = %g dB\n',SRTPCA_PSNR);


for i=1:length(SR)
    for j=1:size( SRTPCA_rec,3)
        temp(i,j)=RMSE(SRTPCA_rec(:,:,j,i),image(:,:,j));
    end
end
SRTPCA_RMSE=sum(temp,2)./size(temp,2);

if SaveFile == 1
    save(SaveName,'SR','SRTPCA_rec','SRTPCA_PSNR','SRTPCA_RMSE','SRTPCA_time');
end

% ------------------------- Result-----------------------------
figure
SRInd = 1;
psnrTenLS2D = zeros(1,nt);
for k = 1:nt
    psnrTenLS2D(k) = evaluatePSNR(XFull(:,:,k),SRTPCA_rec(:,:,k,SRInd));
end
plot(1:nt,psnrTenLS2D(1:nt),'-b*','LineWidth',2,'MarkerSize',8);
xlabel('t','FontSize',14)
ylabel('PSNR','FontSize',14)
legend('SRTPCA')
set(gca,'FontSize',14);
grid;



