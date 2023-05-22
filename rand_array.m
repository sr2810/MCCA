function K=rand_array(x)

Sx=size(x,1);
a=1:Sx;b=(1:Sx)';c=1:Sx;
A=repmat(a,Sx,1);B=repmat(b,1,Sx);C=repmat(c,Sx*Sx,1);
A=A(:);A=repmat(A,1,Sx);A=A(:);
B=B(:);B=repmat(B,Sx,1);B=B(:);
C=C(:);
K=[A B C];
U=randperm(size(A,1));
K=K(U,:);
