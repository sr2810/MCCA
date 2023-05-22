function [Tr,u,v,w,X]=remp_move(mcs,MonteCarloSteps)

X=abs(floor(241-(mcs/MonteCarloSteps*400)));
T_x=zeros(60,240,100);
for i=1:60
    for j=1:240
        for k=1:100
            T_x(i,j,k)=(0.1*(i-30)^2+(j-X)^2+0.7*(k-19)^2)^0.5;%0.1 0.7 19 34
        end
    end
end
T1=T_x(:,:,:)/50;
T2=2500*(exp(1)).^(-((T1).^2)/0.5);
T3=2500*(exp(1)).^(-((T1).^2)/0.4);
T2=T2+298;T3=T3+298;
Tr(:,1:X,:)=T2(:,1:X,:);Tr(:,X+1:240,:)=T3(:,X+1:240,:);
% Tr(31:60,:,:)=Tr(30:-1:1,:,:);
% Tr(61:80,:,:)=ones(20,400,20)*298;
a=reshape(T_x(2:59,2:239,:),1,1380400);
[b,id]=sort(a);
w=ceil(id/13804);
id1=id-(w-1)*13804;
v=ceil(id1/58);
u=id1-(v-1)*58;
v=v+1;u=u+1;
% u=20+u;

% for u=1
%     c(u)=T_x(i(u),j(u),k(u));
% end