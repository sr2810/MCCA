function state = AssignRandomInitialStateMatrix_3D_QPOTTS(x,Q)
Sx = size(x,1);
state=zeros(80,400,40);
state(:,:,:)=1;%2000
state(71:80,:,:)=2;

%state=floor(1+Q*rand(Sx,Sx,Sx));
