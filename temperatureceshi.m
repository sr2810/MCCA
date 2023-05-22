function T_new=temperatureceshi(Tr,T,u,v,w,state)

T_new=T;
s1=ones(80,400,40);
s1(state~=2000)=0.2;
s1(state==2000)=0.1;
s2=0.08;
s3=zeros(80,400,40);
s3(state~=2000)=0;
s3(state==2000)=0.2;
for i=1:310440
    if w(i)~=1
        T_new(u(i),v(i),w(i))=s1(u(i),v(i)+1,w(i))*(T_new(u(i),v(i)+1,w(i))-T_new(u(i),v(i),w(i)))+...
                              s1(u(i),v(i)-1,w(i))*(T_new(u(i),v(i)-1,w(i))-T_new(u(i),v(i),w(i)))+...
                              s1(u(i)+1,v(i),w(i))*(T_new(u(i)+1,v(i),w(i))-T_new(u(i),v(i),w(i)))+...
                              s1(u(i)-1,v(i),w(i))*(T_new(u(i)-1,v(i),w(i))-T_new(u(i),v(i),w(i)))+...
                              s1(u(i),v(i),w(i)-1)*(T_new(u(i),v(i),w(i)-1)-T_new(u(i),v(i),w(i)))+...
                              s2*(Tr(u(i),v(i),w(i))-T_new(u(i),v(i),w(i)))+...
                              T_new(u(i),v(i),w(i));%+s2*Tr(u(i),v(i));
    end
end

T_new(:,:,1)=T_new(:,:,2);
T_new(80,:,:)=max(T_new(79,:,:)-10,298);
T_new(:,400,:)=max(T_new(:,399,:)-10,298);
T_new(:,1,:)=max(T_new(:,2,:)-10,298);

% 
 T_new(40:-1:1,:,:)=T_new(41:80,:,:);