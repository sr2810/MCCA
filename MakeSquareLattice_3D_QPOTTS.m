function [x,y,z] = MakeSquareLattice_3D_QPOTTS(NoLatticePoints)

X=linspace(0,5,60);
Y=linspace(0,20,240);
[xt,yt]=meshgrid(Y,X);
x=repmat(xt,[1 1 100]);
y=repmat(yt,[1 1 100]);
for count=1:100
    z(:,:,count)=(count-1)*ones(60,240)/(20-1);
end