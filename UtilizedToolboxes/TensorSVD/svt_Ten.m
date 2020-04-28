function B = svt_Ten(A,ThLZ,ThLXY,DimVec,ThreshDisplay,delta)

r = 1:3;
ATemp = A;
ThL = [ThLXY,ThLXY,ThLZ]/delta;
for i = 1:3
    if DimVec(i) == 1
        mr = r(r ~= i);
        mc = i;
        AUnfold = tens2mat(ATemp,mr,mc);
        
        try
            [U,S,V] = svd(AUnfold,0);
        catch
            break;
        end
        if (ThreshDisplay == 1)
            subplot(2,3,i);
            plot(diag(S));
            hold on
            plot(ThL(i)*ones(length(S),1),'r')
        end

        S2 = SoftThresh(S,ThL(i));
        AUnfold2 = U*S2*V';
        ATemp = mat2tens(AUnfold2,size(A),mr,mc);
    end
end
B = ATemp;


