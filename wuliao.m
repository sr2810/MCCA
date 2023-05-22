function Xu=wuliao()

for i=1:60
     for j=1:240
        for k=1:100
            Xu(i,j,k)=((i-30)^2+1.08*(k-1)^2)^0.5;%1 16
        end
    end
end
% Xu(40:-1:1,:,:)=Xu(41:80,:,:);

