function state_new=nuclear(dT,trun,dTc,state)

state_new1=(dT>=0 & trun==1 &dTc<2350  & state<2001);%dTc<2350 2650
A=rand(60,240,100);
% state_new2=(dT>=100&dTc>2200&A>0.5 & trun==1);
% state_new=state_new1|state_new2;
state_new1=double(state_new1);
state_new1=(2+floor(rand(60,240,100)*63)).*state_new1;

A=zeros(60,240,100);
A(30,:,:)=state(29,:,:);
A(29,:,:)=state(28,:,:);
A(28,:,:)=state(27,:,:);
A(27,:,:)=state(26,:,:);
A(26,:,:)=state(25,:,:);
A(31,:,:)=state(32,:,:);
A(32,:,:)=state(33,:,:);
A(33,:,:)=state(34,:,:);
A(34,:,:)=state(35,:,:);
A(35,:,:)=state(36,:,:);
A(A>100)=0;
A(A>0)=1;
B=state;B(B<2000)=0;B(B==2000)=1;
state_new2=double(A);
state_new2=(2+floor(rand(60,240,100)*63)).*state_new2.*B;
state_new=state_new1+state_new2;