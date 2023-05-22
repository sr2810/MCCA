function [Tr,u,v,w]=remp_moveceshi(mcs,MonteCarloSteps)

X=abs(floor(401-(mcs/MonteCarloSteps*400)));
T_x=zeros(80,400,40);
for i=41:80
    for j=1:400
        for k=1:40
            T_x(i,j,k)=((i-41)^2+(j-X)^2+(k-20)^2)^0.5;
        end
    end
end
T1=T_x(:,:,:)/50;
T2=2500*(exp(1)).^(-((T1).^2)/0.5);
T3=2500*(exp(1)).^(-((T1).^2)/0.2);
T2=T2+298;T3=T3+298;
Tr(:,1:X,:)=T2(:,1:X,:);Tr(:,X+1:400,:)=T3(:,X+1:400,:);
Tr(40:-1:1,:,:)=Tr(41:80,:,:);
a=reshape(T_x(41:79,2:399,:),1,620880);
[b,id]=sort(a);
w=ceil(id/15522);
id1=id-(w-1)*15522;
v=ceil(id1/39);
u=id1-(v-1)*39;
v=v+1;
u=40+u;

% for u=1
%     c(u)=T_x(i(u),j(u),k(u));
% end