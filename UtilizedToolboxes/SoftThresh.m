function x = SoftThresh(y,t)
    
if t ~= 0
    x = max(abs(y)-t,0)./(max(abs(y)-t,0)+t).*y;
else
    x = y;
end
    


