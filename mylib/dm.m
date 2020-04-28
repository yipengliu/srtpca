

function D = dm( nx,ny,nt )
% It is used to generate differential matrices 

% TTL written  
D={};
D1=sparse(nx,nx);D1(1,1)=1;
D2=sparse(ny,ny);D2(1,1)=1;
D3=sparse(nt,nt);D3(1,1)=1;
for i=2:nx
    D1(i,i)=1;
    D1(i,i-1)=-1;
end
for i=2:ny
    D2(i,i)=1;
    D2(i,i-1)=-1;
end
for i=2:nt
    D3(i,i)=1;
    D3(i,i-1)=-1;
end
D{1}=D1;
D{2}=D2;
D{3}=D3;
end

