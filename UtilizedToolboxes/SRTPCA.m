function out = SRTPCA(y,opts,XFull,mask,PSNR_ZF)

tol = opts.tol;
maxIter = opts.maxIter;
E = opts.E;
Eh = opts.Eh;
EhE = opts.EhE;
T = opts.T;
Th = opts.Th;
TXY = opts.TXY;
ThXY = opts.ThXY;

nx = opts.datasize(1);
ny = opts.datasize(2);
nt = opts.datasize(3);
quiet = opts.quiet;
ThreshLZ = opts.ThreshLZ;
ThreshLXY = opts.ThreshLXY;
ThreshSXY = opts.ThreshSXY;
ThreshS = opts.ThreshS;
delta1 = opts.delta1;
delta2 = opts.delta2;
delta3 = opts.delta3;
ThreshDisplay = 0;


Dx= opts.Dx;
Dy= opts.Dy;
Dt= opts.Dt;
reg=opts.reg;
delta=opts.delta;
tau=opts.tau;

% --------------- Initial Values -----------------
X = reshape(Eh(y),[nx,ny,nt]);
S = zeros(nx,ny,nt);
L=X;
Z1X = zeros(nx,ny,nt);
Z1Y = zeros(nx,ny,nt);
Z1t = zeros(nx,ny,nt);
Z2t = zeros(nx,ny,nt);
Z2XY = zeros(nx,ny,nt);
Z3 = zeros(nx,ny,nt);
p=zeros(nx,ny,nt);
q=zeros(nx,ny,nt);
m=zeros(nx,ny,nt);
r=zeros(nx,ny,nt);

dim=[nx,ny,nt];

disp(' ')
fprintf(' ---------------- SRTPCA reconstruction -------------------\n');
if quiet == false
    fprintf('It.\tStop criterion\tPSNR\n');
end

it = 0;
converged = false;

figure
PSNRX=[];

while (~converged && it < maxIter)
    tic;
    Xp = X;
    
    if (ThreshDisplay == 1)
        figure(1000);
        clf;
    end
    
    % ~~~~~~~~~~~~ Low Rank ~~~~~~~~~~~~~
    Temp1X = L+(1/delta1)*Z1X;
    PX = svt_Ten(Temp1X,ThreshLZ,ThreshLXY,[1,0,0],ThreshDisplay,delta1);
    Temp1Y = L+(1/delta1)*Z1Y;
    PY = svt_Ten(Temp1Y,ThreshLZ,ThreshLXY,[0,1,0],ThreshDisplay,delta1);
    Temp1t =L+(1/delta1)*Z1t;
    Pt = svt_Ten(Temp1t,ThreshLZ,ThreshLXY,[0,0,1],ThreshDisplay,delta1);
    
    % ~~~~~~~~~~~~ Sparse ~~~~~~~~~~~~~~~
    Temp2tVec = T(S) + (1/delta2)*Z2t(:);
    Temp2t = reshape(Temp2tVec,[nx,ny,nt]);
    Qt = SoftThresh(Temp2t,ThreshS);
    
    Temp2XYVec = TXY(S) + (1/delta2)*Z2XY(:);
    Temp2XY = reshape(Temp2XYVec,[nx,ny,nt]);
    QXY = SoftThresh(Temp2XY,ThreshSXY);
    
    % ---------------------------------- Calculate L ----------------------
    
    
    temp1=reshape((delta1*PX(:) - Z1X(:)) + (delta1*PY(:) - Z1Y(:))...
        + (delta1*Pt(:) - Z1t(:)),[nx,ny,nt]);
    L=1/(3*delta1+delta3)*(temp1+delta3*(X-S)-Z3);
    
    
    % ---------------------------------- Calculate S ----------------------
    temp2=reshape(Th(delta2*Qt(:) - Z2t(:)) + ThXY(delta2*QXY(:) ...
        - Z2XY(:)),[nx,ny,nt]);
    S=1/(delta3+2*delta2)*(temp2+delta3*(X-L)-Z3);
    
    % ---------------------------------- Calculate X ----------------------
    
    
    W=@(z)EhE(z)+delta3*z(:);
    WT=@(z)FSSO2(z,mask)+delta3*z(:);
    b=reshape(Eh(y),[nx,ny,nt])+delta3*(L+S)+Z3;
    b=b(:);
    p=project(p+delta*Fold(Dx*(Unfold(X, dim, 1)), dim, 1),reg(1));
    q=project(q+delta*Fold(Dy*(Unfold(X, dim, 2)), dim, 2),reg(2));
    m=project(m+delta*Fold(Dt*(Unfold(X, dim, 3)), dim, 3),reg(3));
    r=(r(:)+delta*(W(X)-b))./(1+delta);
    %Dual Updata
    X_old=X;
    X_new=X_old-tau*(Fold(Dx'*(Unfold(p, dim, 1)),dim,1)+Fold(Dy'*(Unfold(q, dim, 1)),dim,2)+Fold(Dt'*(Unfold(m, dim, 3)),dim,3)+reshape(WT(r),[nx,ny,nt]));
    X=2*X_new-X_old;
    
    
    % ---------------------------------- Calculate dual variables Z ----------------------
    it = it+1;
    Z1X = Z1X + delta1*(L-PX);
    Z1Y = Z1Y + delta1*(L-PY);
    Z1t = Z1t + delta1*(L-Pt);
    TS = reshape(T(S),[nx,ny,nt]);
    TSXY = reshape(TXY(S),[nx,ny,nt]);
    Z2t = Z2t + delta2*(TS-Qt);
    Z2XY = Z2XY + delta2*(TSXY-QXY);
    Z3=0;
    out.stopCriterion(it) = norm(X(:)-Xp(:))/norm(Xp(:));
    PSNR = evaluatePSNR(XFull,X);
    
    
    
% ---------------------------------- draw the result----------------------
    subplot 221;
    imagesc(abs(X(:,:,25)));title('X');drawnow;
    PSNRX(it) =  PSNR;
    subplot 222;plot(PSNRX);title(num2str(it));
    
    subplot 223;
    imagesc(abs( L (:,:,25)));title('L');drawnow;
    subplot 224;
    imagesc(abs( S (:,:,25)));title('S');drawnow;
    
    if quiet == false
        fprintf('%g\t%e\t%e\n',it,out.stopCriterion(it),PSNR);
    end
    
    if  (it >= 25) && (PSNR <= (PSNR_ZF + 0.5))
        disp('No Needed to Continue');
        break;
    end
    
    if it == maxIter
        fprintf('Stopped because maximum of iterations (%g) reached\n',maxIter);
    end
    
    if out.stopCriterion <= tol
        converged = true;
        if quiet == false
            fprintf('Stopped because TOL=%.1e achieved\n',tol);
        end
    end
  
end
out.recon = X;
out.L = L;
out.S = S;
out.nb_iter = it;
end



function r=project(r,alpha)
denom=max(1,abs(r)/alpha);
r=r./denom;
end

