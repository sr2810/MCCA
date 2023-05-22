function T_new=temperature(Tr,T,u,v,w,state)

T_new=T;
s1=ones(60,240,120);
s1(state~=2000)=0.2;
s1(state==2000)=0.1;
s2=0.08;
for i=1:1380400
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
T_new(60,:,:)=max(T_new(59,:,:)-5,298);
T_new(:,240,:)=max(T_new(:,239,:)-5,298);
T_new(:,1,:)=max(T_new(:,2,:)-5,298);
