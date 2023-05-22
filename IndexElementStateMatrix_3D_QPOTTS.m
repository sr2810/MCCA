function [IESM,IESMT] = IndexElementStateMatrix_3D_QPOTTS(caseis,state,i,j,k,dT)
I=60;J=120;K=100;IESMT=zeros(3,3,3);
if caseis==1 % BSV 1
        IESMT(:,:,1)=[dT(I,J,K) dT(I,1,K) dT(I,2,K);dT(1,J,K) dT(1,1,K) dT(1,2,K);dT(2,J,K) dT(2,1,K) dT(2,2,K)];
        IESMT(:,:,2)=[dT(I,J,1) dT(I,1,1) dT(I,2,1);dT(1,J,1) dT(1,1,1) dT(1,2,1);dT(2,J,1) dT(2,1,1) dT(2,2,1)];
        IESMT(:,:,3)=[dT(I,J,2) dT(I,1,2) dT(I,2,2);dT(1,J,2) dT(1,1,2) dT(1,2,2);dT(2,J,2) dT(2,1,2) dT(2,2,2)];
elseif caseis==3 % BSV 2
        IESMT(:,:,1)=[dT(I-1,J,K) dT(I-1,1,K) dT(I-1,2,K);dT(I,J,K) dT(I,1,K) dT(I,2,K);dT(1,J,K) dT(1,1,K) dT(1,2,K)];
        IESMT(:,:,2)=[dT(I-1,J,1) dT(I-1,1,1) dT(I-1,2,1);dT(I,J,1) dT(I,1,1) dT(I,2,1);dT(1,J,1) dT(1,1,1) dT(1,2,1)];
        IESMT(:,:,3)=[dT(I-1,J,2) dT(I-1,1,2) dT(I-1,2,2);dT(I,J,2) dT(I,1,2) dT(I,2,2);dT(1,J,2) dT(1,1,2) dT(1,2,2)];
elseif caseis==5 % BSV
        IESMT(:,:,1)=[dT(I-1,J-1,K) dT(I-1,J,K) dT(I-1,1,K);dT(I,J-1,K) dT(I,J,K) dT(I,1,K);dT(1,J-1,K) dT(1,J,K) dT(1,1,K)];
        IESMT(:,:,2)=[dT(I-1,J-1,1) dT(I-1,J,1) dT(I-1,1,1);dT(I,J-1,1) dT(I,J,1) dT(I,1,1);dT(1,J-1,1) dT(1,J,1) dT(1,1,1)];
        IESMT(:,:,3)=[dT(I-1,J-1,2) dT(I-1,J,2) dT(I-1,1,2);dT(I,J-1,2) dT(I,J,2) dT(I,1,2);dT(1,J-1,2) dT(1,J,2) dT(1,1,2)];
elseif caseis==7 % BSV 4
        IESMT(:,:,1)=[dT(I,J-1,K) dT(I,J,K) dT(I,1,K);dT(1,J-1,K) dT(1,J,K) dT(1,1,K);dT(2,J-1,K) dT(2,J,K) dT(2,1,K)];
        IESMT(:,:,2)=[dT(I,J-1,1) dT(I,J,1) dT(I,1,1);dT(1,J-1,1) dT(1,J,1) dT(1,1,1);dT(2,J-1,1) dT(2,J,1) dT(2,1,1)];
        IESMT(:,:,3)=[dT(I,J-1,2) dT(I,J,2) dT(I,1,2);dT(1,J-1,2) dT(1,J,2) dT(1,1,2);dT(2,J-1,2) dT(2,J,2) dT(2,1,2)];
elseif caseis==9 % BSV 5
        IESMT(:,:,1)=[dT(I,J,K-1) dT(I,1,K-1) dT(I,2,K-1);dT(1,J,K-1) dT(1,1,K-1) dT(1,2,K-1);dT(2,J,K-1) dT(2,1,K-1) dT(2,2,K-1)];
        IESMT(:,:,2)=[dT(I,J,K)   dT(I,1,K)   dT(I,2,K);  dT(1,J,K)   dT(1,1,K)   dT(1,2,K);  dT(2,J,K)   dT(2,1,K)   dT(2,2,K)];
        IESMT(:,:,3)=[dT(I,J,1)   dT(I,1,1)   dT(I,2,1);  dT(1,J,1)   dT(1,1,1)   dT(1,2,1);  dT(2,J,1)   dT(2,1,1)   dT(2,2,1)];
elseif caseis==11 % BSV 6
        IESMT(:,:,1)=[dT(I-1,J,K-1) dT(I-1,1,K-1) dT(I-1,2,K-1);dT(I,J,K-1) dT(I,1,K-1) dT(I,2,K-1);dT(1,J,K-1) dT(1,1,K-1) dT(1,2,K-1)];
        IESMT(:,:,2)=[dT(I-1,J,K)   dT(I-1,1,K)   dT(I-1,2,K);  dT(I,J,K)   dT(I,1,K)   dT(I,2,K);  dT(1,J,K)   dT(1,1,K)   dT(1,2,K)];
        IESMT(:,:,3)=[dT(I-1,J,1)   dT(I-1,1,1)   dT(I-1,2,1);  dT(I,J,1)   dT(I,1,1)   dT(I,2,1);  dT(1,J,1)   dT(1,1,1)   dT(1,2,1)];
elseif caseis==13 % BSV 7
        IESMT(:,:,1)=[dT(I-1,J-1,K-1) dT(I-1,J,K-1) dT(I-1,1,K-1);dT(I,J-1,K-1) dT(I,J,K-1) dT(I,1,K-1);dT(1,J-1,K-1) dT(1,J,K-1) dT(1,1,K-1)];
        IESMT(:,:,2)=[dT(I-1,J-1,K)   dT(I-1,J,K)   dT(I-1,1,K);  dT(I,J-1,K)   dT(I,J,K)   dT(I,1,K);  dT(1,J-1,K)   dT(1,J,K)   dT(1,1,K)];
        IESMT(:,:,3)=[dT(I-1,J-1,1)   dT(I-1,J,1)   dT(I-1,1,1);  dT(I,J-1,1)   dT(I,J,1)   dT(I,1,1);  dT(1,J-1,1)   dT(1,J,1)   dT(1,1,1)];
elseif caseis==15 % BSV 8
        IESMT(:,:,1)=[dT(I,J-1,K-1) dT(I,J,K-1) dT(I,1,K-1);dT(1,J-1,K-1) dT(1,J,K-1) dT(1,1,K-1);dT(2,J-1,K-1) dT(2,J,K-1) dT(2,1,K-1)];
        IESMT(:,:,2)=[dT(I,J-1,K)   dT(I,J,K)   dT(I,1,K);  dT(1,J-1,K)   dT(1,J,K)   dT(1,1,K);  dT(2,J-1,K)   dT(2,J,K)   dT(2,1,K)];
        IESMT(:,:,3)=[dT(I,J-1,1)   dT(I,J,1)   dT(I,1,1);  dT(1,J-1,1)   dT(1,J,1)   dT(1,1,1);  dT(2,J-1,1)   dT(2,J,1)   dT(2,1,1)];
elseif caseis==2 % BSL 1 [ 1<i<I ]
        IESMT(:,:,1)=[dT(i-1,J,K) dT(i-1,1,K) dT(i-1,2,K);dT(i,J,K) dT(i,1,K) dT(i,2,K);dT(i+1,J,K) dT(i+1,1,K) dT(i+1,2,K)];
        IESMT(:,:,2)=[dT(i-1,J,1) dT(i-1,1,1) dT(i-1,2,1);dT(i,J,1) dT(i,1,1) dT(i,2,1);dT(i+1,J,1) dT(i+1,1,1) dT(i+1,2,1)];
        IESMT(:,:,3)=[dT(i-1,J,2) dT(i-1,1,2) dT(i-1,2,2);dT(i,J,2) dT(i,1,2) dT(i,2,2);dT(i+1,J,2) dT(i+1,1,2) dT(i+1,2,2)];
elseif caseis==6 % BSL 3 [ 1<i<I ]
        IESMT(:,:,1)=[dT(i-1,J-1,K) dT(i-1,J,K) dT(i-1,1,K);dT(i,J-1,K) dT(i,J,K) dT(i,1,K);dT(i+1,J-1,K) dT(i+1,J,K) dT(i+1,1,K)];
        IESMT(:,:,2)=[dT(i-1,J-1,1) dT(i-1,J,1) dT(i-1,1,1);dT(i,J-1,1) dT(i,J,1) dT(i,1,1);dT(i+1,J-1,1) dT(i+1,J,1) dT(i+1,1,1)];
        IESMT(:,:,3)=[dT(i-1,J-1,2) dT(i-1,J,2) dT(i-1,1,2);dT(i,J-1,2) dT(i,J,2) dT(i,1,2);dT(i+1,J-1,2) dT(i+1,J,2) dT(i+1,1,2)];
elseif caseis==10 % BSL 5 [ 1<i<I ]
        IESMT(:,:,1)=[dT(i-1,J,K-1) dT(i-1,1,K-1) dT(i-1,2,K-1);dT(i,J,K-1) dT(i,1,K-1) dT(i,2,K-1);dT(i+1,J,K-1) dT(i+1,1,K-1) dT(i+1,2,K-1)];
        IESMT(:,:,2)=[dT(i-1,J,K)   dT(i-1,1,K)   dT(i-1,2,K);  dT(i,J,K)   dT(i,1,K)   dT(i,2,K);  dT(i+1,J,K)   dT(i+1,1,K)   dT(i+1,2,K)];
        IESMT(:,:,3)=[dT(i-1,J,1)   dT(i-1,1,1)   dT(i-1,2,1);  dT(i,J,1)   dT(i,1,1)   dT(i,2,1);  dT(i+1,J,1)   dT(i+1,1,1)   dT(i+1,2,1)];
elseif caseis==14 % BSL 7 [ 1<i<I ]
        IESMT(:,:,1)=[dT(i-1,J-1,K-1) dT(i-1,J,K-1) dT(i-1,1,K-1);dT(i,J-1,K-1) dT(i,J,K-1) dT(i,1,K-1);dT(i+1,J-1,K-1) dT(i+1,J,K-1) dT(i+1,1,K-1)];
        IESMT(:,:,2)=[dT(i-1,J-1,K)   dT(i-1,J,K)   dT(i-1,1,K);  dT(i,J-1,K)   dT(i,J,K)   dT(i,1,K);  dT(i+1,J-1,K)   dT(i+1,J,K)   dT(i+1,1,K)];
        IESMT(:,:,3)=[dT(i-1,J-1,1)   dT(i-1,J,1)   dT(i-1,1,1);  dT(i,J-1,1)   dT(i,J,1)   dT(i,1,1);  dT(i+1,J-1,1)   dT(i+1,J,1)   dT(i+1,1,1)];
elseif caseis==17 % BSL 9 [ 1<k<K ]
        IESMT(:,:,1)=[dT(I,J,k-1) dT(I,1,k-1) dT(I,2,k-1);dT(1,J,k-1) dT(1,1,k-1) dT(1,2,k-1);dT(2,J,k-1) dT(2,1,k-1) dT(2,2,k-1)];
        IESMT(:,:,2)=[dT(I,J,k)   dT(I,1,k)   dT(I,2,k);  dT(1,J,k)   dT(1,1,k)   dT(1,2,k);  dT(2,J,k)   dT(2,1,k)   dT(2,2,k)];
        IESMT(:,:,3)=[dT(I,J,k+1) dT(I,1,k+1) dT(I,2,k+1);dT(1,J,k+1) dT(1,1,k+1) dT(1,2,k+1);dT(2,J,k+1) dT(2,1,k+1) dT(2,2,k+1)];
elseif caseis==18 % BSL 10 [ 1<k<K ]
        IESMT(:,:,1)=[dT(I-1,J,k-1) dT(I-1,1,k-1) dT(I-1,2,k-1);dT(I,J,k-1) dT(I,1,k-1) dT(I,2,k-1);dT(1,J,k-1) dT(1,1,k-1) dT(1,2,k-1)];
        IESMT(:,:,2)=[dT(I-1,J,k)   dT(I-1,1,k)   dT(I-1,2,k);  dT(I,J,k)   dT(I,1,k)   dT(I,2,k);  dT(1,J,k)   dT(1,1,k)   dT(1,2,k)];
        IESMT(:,:,3)=[dT(I-1,J,k+1) dT(I-1,1,k+1) dT(I-1,2,k+1);dT(I,J,k+1) dT(I,1,k+1) dT(I,2,k+1);dT(1,J,k+1) dT(1,1,k+1) dT(1,2,k+1)];
elseif caseis==19 % BSL 11 [ 1<k<K ]
        IESMT(:,:,1)=[dT(I-1,J-1,k-1) dT(I-1,J,k-1) dT(I-1,1,k-1);dT(I,J-1,k-1) dT(I,J,k-1) dT(I,1,k-1);dT(1,J-1,k-1) dT(1,J,k-1) dT(1,1,k-1)];
        IESMT(:,:,2)=[dT(I-1,J-1,k)   dT(I-1,J,k)   dT(I-1,1,k);  dT(I,J-1,k)   dT(I,J,k)   dT(I,1,k);  dT(1,J-1,k)   dT(1,J,k)   dT(1,1,k)];
        IESMT(:,:,3)=[dT(I-1,J-1,k+1) dT(I-1,J,k+1) dT(I-1,1,k+1);dT(I,J-1,k+1) dT(I,J,k+1) dT(I,1,k+1);dT(1,J-1,k+1) dT(1,J,k+1) dT(1,1,k+1)];
elseif caseis==20 % BSL 12 [ 1<k<K ]
        IESMT(:,:,1)=[dT(I,J-1,k-1) dT(I,J,k-1) dT(I,1,k-1);dT(1,J-1,k-1) dT(1,J,k-1) dT(1,1,k-1);dT(2,J-1,k-1) dT(2,J,k-1) dT(2,1,k-1)];
        IESMT(:,:,2)=[dT(I,J-1,k)   dT(I,J,k)   dT(I,1,k);  dT(1,J-1,k)   dT(1,J,k)   dT(1,1,k);  dT(2,J-1,k)   dT(2,J,k)   dT(2,1,k)];
        IESMT(:,:,3)=[dT(I,J-1,k+1) dT(I,J,k+1) dT(I,1,k+1);dT(1,J-1,k+1) dT(1,J,k+1) dT(1,1,k+1);dT(2,J-1,k+1) dT(2,J,k+1) dT(2,1,k+1)];
elseif caseis==4 % BSL 2 [ 1<j<J ]
        IESMT(:,:,1)=[dT(I-1,j-1,K) dT(I-1,j,K) dT(I-1,j+1,K);dT(I,j-1,K) dT(I,j,K) dT(I,j+1,K);dT(1,j-1,K) dT(1,j,K) dT(1,j+1,K)];
        IESMT(:,:,2)=[dT(I-1,j-1,1) dT(I-1,j,1) dT(I-1,j+1,1);dT(I,j-1,1) dT(I,j,1) dT(I,j+1,1);dT(1,j-1,1) dT(1,j,1) dT(1,j+1,1)];
        IESMT(:,:,3)=[dT(I-1,j-1,2) dT(I-1,j,2) dT(I-1,j+1,2);dT(I,j-1,2) dT(I,j,2) dT(I,j+1,2);dT(1,j-1,2) dT(1,j,2) dT(1,j+1,2)];
elseif caseis==8 % BSL 4 [ 1<j<J ]
        IESMT(:,:,1)=[dT(I,j-1,K) dT(I,j,K) dT(I,j+1,K);dT(1,j-1,K) dT(1,j,K) dT(1,j+1,K);dT(2,j-1,K) dT(2,j,K) dT(2,j+1,K)];
        IESMT(:,:,2)=[dT(I,j-1,1) dT(I,j,1) dT(I,j+1,1);dT(1,j-1,1) dT(1,j,1) dT(1,j+1,1);dT(2,j-1,1) dT(2,j,1) dT(2,j+1,1)];
        IESMT(:,:,3)=[dT(I,j-1,2) dT(I,j,2) dT(I,j+1,2);dT(1,j-1,2) dT(1,j,2) dT(1,j+1,2);dT(2,j-1,2) dT(2,j,2) dT(2,j+1,2)];
elseif caseis==12 % BSL 6 [ 1<j<J ]
        IESMT(:,:,1)=[dT(I-1,j-1,K-1) dT(I-1,j,K-1) dT(I-1,j+1,K-1);dT(I,j-1,K-1) dT(I,j,K-1) dT(I,j+1,K-1);dT(1,j-1,K-1) dT(1,j,K-1) dT(1,j+1,K-1)];
        IESMT(:,:,2)=[dT(I-1,j-1,K)   dT(I-1,j,K)   dT(I-1,j+1,K);  dT(I,j-1,K)   dT(I,j,K)   dT(I,j+1,K);  dT(1,j-1,K)   dT(1,j,K)   dT(1,j+1,K)];
        IESMT(:,:,3)=[dT(I-1,j-1,1)   dT(I-1,j,1)   dT(I-1,j+1,1);  dT(I,j-1,1)   dT(I,j,1)   dT(I,j+1,1);  dT(1,j-1,1)   dT(1,j,1)   dT(1,j+1,1)];
elseif caseis==16 % BSL 8 [ 1<j<J ]
        IESMT(:,:,1)=[dT(I,j-1,K-1) dT(I,j,K-1) dT(I,j+1,K-1);dT(1,j-1,K-1) dT(1,j,K-1) dT(1,j+1,K-1);dT(2,j-1,K-1) dT(2,j,K-1) dT(2,j+1,K-1)];
        IESMT(:,:,2)=[dT(I,j-1,K)   dT(I,j,K)   dT(I,j+1,K);  dT(1,j-1,K)   dT(1,j,K)   dT(1,j+1,K);  dT(2,j-1,K)   dT(2,j,K)   dT(2,j+1,K)];
        IESMT(:,:,3)=[dT(I,j-1,1)   dT(I,j,1)   dT(I,j+1,1);  dT(1,j-1,1)   dT(1,j,1)   dT(1,j+1,1);  dT(2,j-1,1)   dT(2,j,1)   dT(2,j+1,1)];
elseif caseis==21 % BSA 1 [ (1<i<I) & (1<j<J) ]
        IESMT(:,:,1)=[dT(i-1,j-1,K) dT(i-1,j,K) dT(i-1,j+1,K);dT(i,j-1,K) dT(i,j,K) dT(i,j+1,K);dT(i+1,j-1,K) dT(i+1,j,K) dT(i+1,j+1,K)];
        IESMT(:,:,2)=[dT(i-1,j-1,1) dT(i-1,j,1) dT(i-1,j+1,1);dT(i,j-1,1) dT(i,j,1) dT(i,j+1,1);dT(i+1,j-1,1) dT(i+1,j,1) dT(i+1,j+1,1)];
        IESMT(:,:,3)=[dT(i-1,j-1,2) dT(i-1,j,2) dT(i-1,j+1,2);dT(i,j-1,2) dT(i,j,2) dT(i,j+1,2);dT(i+1,j-1,2) dT(i+1,j,2) dT(i+1,j+1,2)];
elseif caseis==22 % BSA 2 [ (1<i<I) & (1<k<K) ]
        IESMT(:,:,1)=[dT(i-1,J-1,k-1) dT(i-1,J,k-1) dT(i-1,1,k-1);dT(i,J-1,k-1) dT(i,J,k-1) dT(i,1,k-1);dT(i+1,J-1,k-1) dT(i+1,J,k-1) dT(i+1,1,k-1)];
        IESMT(:,:,2)=[dT(i-1,J-1,k)   dT(i-1,J,k)   dT(i-1,1,k);  dT(i,J-1,k)   dT(i,J,k)   dT(i,1,k);  dT(i+1,J-1,k)   dT(i+1,J,k)   dT(i+1,1,k)];
        IESMT(:,:,3)=[dT(i-1,J-1,k+1) dT(i-1,J,k+1) dT(i-1,1,k+1);dT(i,J-1,k+1) dT(i,J,k+1) dT(i,1,k+1);dT(i+1,J-1,k+1) dT(i+1,J,k+1) dT(i+1,1,k+1)];
elseif caseis==23 % BSA 3 [ (1<i<I) & (1<j<J) ]
        IESMT(:,:,1)=[dT(i-1,j-1,K-1) dT(i-1,j,K-1) dT(i-1,j+1,K-1);dT(i,j-1,K-1) dT(i,j,K-1) dT(i,j+1,K-1);dT(i+1,j-1,K-1) dT(i+1,j,K-1) dT(i+1,j+1,K-1)];
        IESMT(:,:,2)=[dT(i-1,j-1,K)   dT(i-1,j,K)   dT(i-1,j+1,K);  dT(i,j-1,K)   dT(i,j,K)   dT(i,j+1,K);  dT(i+1,j-1,K)   dT(i+1,j,K)   dT(i+1,j+1,K)];
        IESMT(:,:,3)=[dT(i-1,j-1,1)   dT(i-1,j,1)   dT(i-1,j+1,1);  dT(i,j-1,1)   dT(i,j,1)   dT(i,j+1,1);  dT(i+1,j-1,1)   dT(i+1,j,1)   dT(i+1,j+1,1)];
elseif caseis==24 % BSA 4 [ (1<j<J) & (1<k<K) ]
        IESMT(:,:,1)=[dT(i-1,J,k-1) dT(i-1,1,k-1) dT(i-1,2,k-1);dT(i,J,k-1) dT(i,1,k-1) dT(i,2,k-1);dT(i+1,J,k-1) dT(i+1,1,k-1) dT(i+1,2,k-1)];
        IESMT(:,:,2)=[dT(i-1,J,k)   dT(i-1,1,k)   dT(i-1,2,k);  dT(i,J,k)   dT(i,1,k)   dT(i,2,k);  dT(i+1,J,k)   dT(i+1,1,k)   dT(i+1,2,k)];
        IESMT(:,:,3)=[dT(i-1,J,k+1) dT(i-1,1,k+1) dT(i-1,2,k+1);dT(i,J,k+1) dT(i,1,k+1) dT(i,2,k+1);dT(i+1,J,k+1) dT(i+1,1,k+1) dT(i+1,2,k+1)];
elseif caseis==25 % BSA 5 [ (1<j<J) & (1<k<K) ]
        IESMT(:,:,1)=[dT(I,j-1,k-1) dT(I,j,k-1) dT(I,j+1,k-1);dT(1,j-1,k-1) dT(1,j,k-1) dT(1,j+1,k-1);dT(2,j-1,k-1) dT(2,j,k-1) dT(2,j+1,k-1)];
        IESMT(:,:,2)=[dT(I,j-1,k)   dT(I,j,k)   dT(I,j+1,k);  dT(1,j-1,k)   dT(1,j,k)   dT(1,j+1,k);  dT(2,j-1,k)   dT(2,j,k)   dT(2,j+1,k)];
        IESMT(:,:,3)=[dT(I,j-1,k+1) dT(I,j,k+1) dT(I,j+1,k+1);dT(1,j-1,k+1) dT(1,j,k+1) dT(1,j+1,k+1);dT(2,j-1,k+1) dT(2,j,k+1) dT(2,j+1,k+1)];
elseif caseis==26 % BSA 6 [ (1<j<J) & (1<k<K) ]
        IESMT(:,:,1)=[dT(I-1,j-1,k-1) dT(I-1,j,k-1) dT(I-1,j+1,k-1);dT(I,j-1,k-1) dT(I,j,k-1) dT(I,j+1,k-1);dT(1,j-1,k-1) dT(1,j,k-1) dT(1,j+1,k-1)];
        IESMT(:,:,2)=[dT(I-1,j-1,k)   dT(I-1,j,k)   dT(I-1,j+1,k);  dT(I,j-1,k)   dT(I,j,k)   dT(I,j+1,k);  dT(1,j-1,k)   dT(1,j,k)   dT(1,j+1,k)];
        IESMT(:,:,3)=[dT(I-1,j-1,k+1) dT(I-1,j,k+1) dT(I-1,j+1,k+1);dT(I,j-1,k+1) dT(I,j,k+1) dT(I,j+1,k+1);dT(1,j-1,k+1) dT(1,j,k+1) dT(1,j+1,k+1)];
elseif caseis==27 % Inside volume [ (1<i<I) & (1<j<J) & (1<k<K) ]
        IESMT(:,:,1)=[dT(i-1,j-1,k-1) dT(i-1,j,k-1) dT(i-1,j+1,k-1);dT(i,j-1,k-1) dT(i,j,k-1) dT(i,j+1,k-1);dT(i+1,j-1,k-1) dT(i+1,j,k-1) dT(i+1,j+1,k-1)];
        IESMT(:,:,2)=[dT(i-1,j-1,k)   dT(i-1,j,k)   dT(i-1,j+1,k);  dT(i,j-1,k)   dT(i,j,k)   dT(i,j+1,k);  dT(i+1,j-1,k)   dT(i+1,j,k)   dT(i+1,j+1,k)];
        IESMT(:,:,3)=[dT(i-1,j-1,k+1) dT(i-1,j,k+1) dT(i-1,j+1,k+1);dT(i,j-1,k+1) dT(i,j,k+1) dT(i,j+1,k+1);dT(i+1,j-1,k+1) dT(i+1,j,k+1) dT(i+1,j+1,k+1)];
end

if caseis==1 % BSV 1
        IESM(:,:,1)=[state(I,J,K) state(I,1,K) state(I,2,K);state(1,J,K) state(1,1,K) state(1,2,K);state(2,J,K) state(2,1,K) state(2,2,K)];
        IESM(:,:,2)=[state(I,J,1) state(I,1,1) state(I,2,1);state(1,J,1) state(1,1,1) state(1,2,1);state(2,J,1) state(2,1,1) state(2,2,1)];
        IESM(:,:,3)=[state(I,J,2) state(I,1,2) state(I,2,2);state(1,J,2) state(1,1,2) state(1,2,2);state(2,J,2) state(2,1,2) state(2,2,2)];
elseif caseis==3 % BSV 2
        IESM(:,:,1)=[state(I-1,J,K) state(I-1,1,K) state(I-1,2,K);state(I,J,K) state(I,1,K) state(I,2,K);state(1,J,K) state(1,1,K) state(1,2,K)];
        IESM(:,:,2)=[state(I-1,J,1) state(I-1,1,1) state(I-1,2,1);state(I,J,1) state(I,1,1) state(I,2,1);state(1,J,1) state(1,1,1) state(1,2,1)];
        IESM(:,:,3)=[state(I-1,J,2) state(I-1,1,2) state(I-1,2,2);state(I,J,2) state(I,1,2) state(I,2,2);state(1,J,2) state(1,1,2) state(1,2,2)];
elseif caseis==5 % BSV
        IESM(:,:,1)=[state(I-1,J-1,K) state(I-1,J,K) state(I-1,1,K);state(I,J-1,K) state(I,J,K) state(I,1,K);state(1,J-1,K) state(1,J,K) state(1,1,K)];
        IESM(:,:,2)=[state(I-1,J-1,1) state(I-1,J,1) state(I-1,1,1);state(I,J-1,1) state(I,J,1) state(I,1,1);state(1,J-1,1) state(1,J,1) state(1,1,1)];
        IESM(:,:,3)=[state(I-1,J-1,2) state(I-1,J,2) state(I-1,1,2);state(I,J-1,2) state(I,J,2) state(I,1,2);state(1,J-1,2) state(1,J,2) state(1,1,2)];
elseif caseis==7 % BSV 4
        IESM(:,:,1)=[state(I,J-1,K) state(I,J,K) state(I,1,K);state(1,J-1,K) state(1,J,K) state(1,1,K);state(2,J-1,K) state(2,J,K) state(2,1,K)];
        IESM(:,:,2)=[state(I,J-1,1) state(I,J,1) state(I,1,1);state(1,J-1,1) state(1,J,1) state(1,1,1);state(2,J-1,1) state(2,J,1) state(2,1,1)];
        IESM(:,:,3)=[state(I,J-1,2) state(I,J,2) state(I,1,2);state(1,J-1,2) state(1,J,2) state(1,1,2);state(2,J-1,2) state(2,J,2) state(2,1,2)];
elseif caseis==9 % BSV 5
        IESM(:,:,1)=[state(I,J,K-1) state(I,1,K-1) state(I,2,K-1);state(1,J,K-1) state(1,1,K-1) state(1,2,K-1);state(2,J,K-1) state(2,1,K-1) state(2,2,K-1)];
        IESM(:,:,2)=[state(I,J,K)   state(I,1,K)   state(I,2,K);  state(1,J,K)   state(1,1,K)   state(1,2,K);  state(2,J,K)   state(2,1,K)   state(2,2,K)];
        IESM(:,:,3)=[state(I,J,1)   state(I,1,1)   state(I,2,1);  state(1,J,1)   state(1,1,1)   state(1,2,1);  state(2,J,1)   state(2,1,1)   state(2,2,1)];
elseif caseis==11 % BSV 6
        IESM(:,:,1)=[state(I-1,J,K-1) state(I-1,1,K-1) state(I-1,2,K-1);state(I,J,K-1) state(I,1,K-1) state(I,2,K-1);state(1,J,K-1) state(1,1,K-1) state(1,2,K-1)];
        IESM(:,:,2)=[state(I-1,J,K)   state(I-1,1,K)   state(I-1,2,K);  state(I,J,K)   state(I,1,K)   state(I,2,K);  state(1,J,K)   state(1,1,K)   state(1,2,K)];
        IESM(:,:,3)=[state(I-1,J,1)   state(I-1,1,1)   state(I-1,2,1);  state(I,J,1)   state(I,1,1)   state(I,2,1);  state(1,J,1)   state(1,1,1)   state(1,2,1)];
elseif caseis==13 % BSV 7
        IESM(:,:,1)=[state(I-1,J-1,K-1) state(I-1,J,K-1) state(I-1,1,K-1);state(I,J-1,K-1) state(I,J,K-1) state(I,1,K-1);state(1,J-1,K-1) state(1,J,K-1) state(1,1,K-1)];
        IESM(:,:,2)=[state(I-1,J-1,K)   state(I-1,J,K)   state(I-1,1,K);  state(I,J-1,K)   state(I,J,K)   state(I,1,K);  state(1,J-1,K)   state(1,J,K)   state(1,1,K)];
        IESM(:,:,3)=[state(I-1,J-1,1)   state(I-1,J,1)   state(I-1,1,1);  state(I,J-1,1)   state(I,J,1)   state(I,1,1);  state(1,J-1,1)   state(1,J,1)   state(1,1,1)];
elseif caseis==15 % BSV 8
        IESM(:,:,1)=[state(I,J-1,K-1) state(I,J,K-1) state(I,1,K-1);state(1,J-1,K-1) state(1,J,K-1) state(1,1,K-1);state(2,J-1,K-1) state(2,J,K-1) state(2,1,K-1)];
        IESM(:,:,2)=[state(I,J-1,K)   state(I,J,K)   state(I,1,K);  state(1,J-1,K)   state(1,J,K)   state(1,1,K);  state(2,J-1,K)   state(2,J,K)   state(2,1,K)];
        IESM(:,:,3)=[state(I,J-1,1)   state(I,J,1)   state(I,1,1);  state(1,J-1,1)   state(1,J,1)   state(1,1,1);  state(2,J-1,1)   state(2,J,1)   state(2,1,1)];
elseif caseis==2 % BSL 1 [ 1<i<I ]
        IESM(:,:,1)=[state(i-1,J,K) state(i-1,1,K) state(i-1,2,K);state(i,J,K) state(i,1,K) state(i,2,K);state(i+1,J,K) state(i+1,1,K) state(i+1,2,K)];
        IESM(:,:,2)=[state(i-1,J,1) state(i-1,1,1) state(i-1,2,1);state(i,J,1) state(i,1,1) state(i,2,1);state(i+1,J,1) state(i+1,1,1) state(i+1,2,1)];
        IESM(:,:,3)=[state(i-1,J,2) state(i-1,1,2) state(i-1,2,2);state(i,J,2) state(i,1,2) state(i,2,2);state(i+1,J,2) state(i+1,1,2) state(i+1,2,2)];
elseif caseis==6 % BSL 3 [ 1<i<I ]
        IESM(:,:,1)=[state(i-1,J-1,K) state(i-1,J,K) state(i-1,1,K);state(i,J-1,K) state(i,J,K) state(i,1,K);state(i+1,J-1,K) state(i+1,J,K) state(i+1,1,K)];
        IESM(:,:,2)=[state(i-1,J-1,1) state(i-1,J,1) state(i-1,1,1);state(i,J-1,1) state(i,J,1) state(i,1,1);state(i+1,J-1,1) state(i+1,J,1) state(i+1,1,1)];
        IESM(:,:,3)=[state(i-1,J-1,2) state(i-1,J,2) state(i-1,1,2);state(i,J-1,2) state(i,J,2) state(i,1,2);state(i+1,J-1,2) state(i+1,J,2) state(i+1,1,2)];
elseif caseis==10 % BSL 5 [ 1<i<I ]
        IESM(:,:,1)=[state(i-1,J,K-1) state(i-1,1,K-1) state(i-1,2,K-1);state(i,J,K-1) state(i,1,K-1) state(i,2,K-1);state(i+1,J,K-1) state(i+1,1,K-1) state(i+1,2,K-1)];
        IESM(:,:,2)=[state(i-1,J,K)   state(i-1,1,K)   state(i-1,2,K);  state(i,J,K)   state(i,1,K)   state(i,2,K);  state(i+1,J,K)   state(i+1,1,K)   state(i+1,2,K)];
        IESM(:,:,3)=[state(i-1,J,1)   state(i-1,1,1)   state(i-1,2,1);  state(i,J,1)   state(i,1,1)   state(i,2,1);  state(i+1,J,1)   state(i+1,1,1)   state(i+1,2,1)];
elseif caseis==14 % BSL 7 [ 1<i<I ]
        IESM(:,:,1)=[state(i-1,J-1,K-1) state(i-1,J,K-1) state(i-1,1,K-1);state(i,J-1,K-1) state(i,J,K-1) state(i,1,K-1);state(i+1,J-1,K-1) state(i+1,J,K-1) state(i+1,1,K-1)];
        IESM(:,:,2)=[state(i-1,J-1,K)   state(i-1,J,K)   state(i-1,1,K);  state(i,J-1,K)   state(i,J,K)   state(i,1,K);  state(i+1,J-1,K)   state(i+1,J,K)   state(i+1,1,K)];
        IESM(:,:,3)=[state(i-1,J-1,1)   state(i-1,J,1)   state(i-1,1,1);  state(i,J-1,1)   state(i,J,1)   state(i,1,1);  state(i+1,J-1,1)   state(i+1,J,1)   state(i+1,1,1)];
elseif caseis==17 % BSL 9 [ 1<k<K ]
        IESM(:,:,1)=[state(I,J,k-1) state(I,1,k-1) state(I,2,k-1);state(1,J,k-1) state(1,1,k-1) state(1,2,k-1);state(2,J,k-1) state(2,1,k-1) state(2,2,k-1)];
        IESM(:,:,2)=[state(I,J,k)   state(I,1,k)   state(I,2,k);  state(1,J,k)   state(1,1,k)   state(1,2,k);  state(2,J,k)   state(2,1,k)   state(2,2,k)];
        IESM(:,:,3)=[state(I,J,k+1) state(I,1,k+1) state(I,2,k+1);state(1,J,k+1) state(1,1,k+1) state(1,2,k+1);state(2,J,k+1) state(2,1,k+1) state(2,2,k+1)];
elseif caseis==18 % BSL 10 [ 1<k<K ]
        IESM(:,:,1)=[state(I-1,J,k-1) state(I-1,1,k-1) state(I-1,2,k-1);state(I,J,k-1) state(I,1,k-1) state(I,2,k-1);state(1,J,k-1) state(1,1,k-1) state(1,2,k-1)];
        IESM(:,:,2)=[state(I-1,J,k)   state(I-1,1,k)   state(I-1,2,k);  state(I,J,k)   state(I,1,k)   state(I,2,k);  state(1,J,k)   state(1,1,k)   state(1,2,k)];
        IESM(:,:,3)=[state(I-1,J,k+1) state(I-1,1,k+1) state(I-1,2,k+1);state(I,J,k+1) state(I,1,k+1) state(I,2,k+1);state(1,J,k+1) state(1,1,k+1) state(1,2,k+1)];
elseif caseis==19 % BSL 11 [ 1<k<K ]
        IESM(:,:,1)=[state(I-1,J-1,k-1) state(I-1,J,k-1) state(I-1,1,k-1);state(I,J-1,k-1) state(I,J,k-1) state(I,1,k-1);state(1,J-1,k-1) state(1,J,k-1) state(1,1,k-1)];
        IESM(:,:,2)=[state(I-1,J-1,k)   state(I-1,J,k)   state(I-1,1,k);  state(I,J-1,k)   state(I,J,k)   state(I,1,k);  state(1,J-1,k)   state(1,J,k)   state(1,1,k)];
        IESM(:,:,3)=[state(I-1,J-1,k+1) state(I-1,J,k+1) state(I-1,1,k+1);state(I,J-1,k+1) state(I,J,k+1) state(I,1,k+1);state(1,J-1,k+1) state(1,J,k+1) state(1,1,k+1)];
elseif caseis==20 % BSL 12 [ 1<k<K ]
        IESM(:,:,1)=[state(I,J-1,k-1) state(I,J,k-1) state(I,1,k-1);state(1,J-1,k-1) state(1,J,k-1) state(1,1,k-1);state(2,J-1,k-1) state(2,J,k-1) state(2,1,k-1)];
        IESM(:,:,2)=[state(I,J-1,k)   state(I,J,k)   state(I,1,k);  state(1,J-1,k)   state(1,J,k)   state(1,1,k);  state(2,J-1,k)   state(2,J,k)   state(2,1,k)];
        IESM(:,:,3)=[state(I,J-1,k+1) state(I,J,k+1) state(I,1,k+1);state(1,J-1,k+1) state(1,J,k+1) state(1,1,k+1);state(2,J-1,k+1) state(2,J,k+1) state(2,1,k+1)];
elseif caseis==4 % BSL 2 [ 1<j<J ]
        IESM(:,:,1)=[state(I-1,j-1,K) state(I-1,j,K) state(I-1,j+1,K);state(I,j-1,K) state(I,j,K) state(I,j+1,K);state(1,j-1,K) state(1,j,K) state(1,j+1,K)];
        IESM(:,:,2)=[state(I-1,j-1,1) state(I-1,j,1) state(I-1,j+1,1);state(I,j-1,1) state(I,j,1) state(I,j+1,1);state(1,j-1,1) state(1,j,1) state(1,j+1,1)];
        IESM(:,:,3)=[state(I-1,j-1,2) state(I-1,j,2) state(I-1,j+1,2);state(I,j-1,2) state(I,j,2) state(I,j+1,2);state(1,j-1,2) state(1,j,2) state(1,j+1,2)];
elseif caseis==8 % BSL 4 [ 1<j<J ]
        IESM(:,:,1)=[state(I,j-1,K) state(I,j,K) state(I,j+1,K);state(1,j-1,K) state(1,j,K) state(1,j+1,K);state(2,j-1,K) state(2,j,K) state(2,j+1,K)];
        IESM(:,:,2)=[state(I,j-1,1) state(I,j,1) state(I,j+1,1);state(1,j-1,1) state(1,j,1) state(1,j+1,1);state(2,j-1,1) state(2,j,1) state(2,j+1,1)];
        IESM(:,:,3)=[state(I,j-1,2) state(I,j,2) state(I,j+1,2);state(1,j-1,2) state(1,j,2) state(1,j+1,2);state(2,j-1,2) state(2,j,2) state(2,j+1,2)];
elseif caseis==12 % BSL 6 [ 1<j<J ]
        IESM(:,:,1)=[state(I-1,j-1,K-1) state(I-1,j,K-1) state(I-1,j+1,K-1);state(I,j-1,K-1) state(I,j,K-1) state(I,j+1,K-1);state(1,j-1,K-1) state(1,j,K-1) state(1,j+1,K-1)];
        IESM(:,:,2)=[state(I-1,j-1,K)   state(I-1,j,K)   state(I-1,j+1,K);  state(I,j-1,K)   state(I,j,K)   state(I,j+1,K);  state(1,j-1,K)   state(1,j,K)   state(1,j+1,K)];
        IESM(:,:,3)=[state(I-1,j-1,1)   state(I-1,j,1)   state(I-1,j+1,1);  state(I,j-1,1)   state(I,j,1)   state(I,j+1,1);  state(1,j-1,1)   state(1,j,1)   state(1,j+1,1)];
elseif caseis==16 % BSL 8 [ 1<j<J ]
        IESM(:,:,1)=[state(I,j-1,K-1) state(I,j,K-1) state(I,j+1,K-1);state(1,j-1,K-1) state(1,j,K-1) state(1,j+1,K-1);state(2,j-1,K-1) state(2,j,K-1) state(2,j+1,K-1)];
        IESM(:,:,2)=[state(I,j-1,K)   state(I,j,K)   state(I,j+1,K);  state(1,j-1,K)   state(1,j,K)   state(1,j+1,K);  state(2,j-1,K)   state(2,j,K)   state(2,j+1,K)];
        IESM(:,:,3)=[state(I,j-1,1)   state(I,j,1)   state(I,j+1,1);  state(1,j-1,1)   state(1,j,1)   state(1,j+1,1);  state(2,j-1,1)   state(2,j,1)   state(2,j+1,1)];
elseif caseis==21 % BSA 1 [ (1<i<I) & (1<j<J) ]
        IESM(:,:,1)=[state(i-1,j-1,K) state(i-1,j,K) state(i-1,j+1,K);state(i,j-1,K) state(i,j,K) state(i,j+1,K);state(i+1,j-1,K) state(i+1,j,K) state(i+1,j+1,K)];
        IESM(:,:,2)=[state(i-1,j-1,1) state(i-1,j,1) state(i-1,j+1,1);state(i,j-1,1) state(i,j,1) state(i,j+1,1);state(i+1,j-1,1) state(i+1,j,1) state(i+1,j+1,1)];
        IESM(:,:,3)=[state(i-1,j-1,2) state(i-1,j,2) state(i-1,j+1,2);state(i,j-1,2) state(i,j,2) state(i,j+1,2);state(i+1,j-1,2) state(i+1,j,2) state(i+1,j+1,2)];
elseif caseis==22 % BSA 2 [ (1<i<I) & (1<k<K) ]
        IESM(:,:,1)=[state(i-1,J-1,k-1) state(i-1,J,k-1) state(i-1,1,k-1);state(i,J-1,k-1) state(i,J,k-1) state(i,1,k-1);state(i+1,J-1,k-1) state(i+1,J,k-1) state(i+1,1,k-1)];
        IESM(:,:,2)=[state(i-1,J-1,k)   state(i-1,J,k)   state(i-1,1,k);  state(i,J-1,k)   state(i,J,k)   state(i,1,k);  state(i+1,J-1,k)   state(i+1,J,k)   state(i+1,1,k)];
        IESM(:,:,3)=[state(i-1,J-1,k+1) state(i-1,J,k+1) state(i-1,1,k+1);state(i,J-1,k+1) state(i,J,k+1) state(i,1,k+1);state(i+1,J-1,k+1) state(i+1,J,k+1) state(i+1,1,k+1)];
elseif caseis==23 % BSA 3 [ (1<i<I) & (1<j<J) ]
        IESM(:,:,1)=[state(i-1,j-1,K-1) state(i-1,j,K-1) state(i-1,j+1,K-1);state(i,j-1,K-1) state(i,j,K-1) state(i,j+1,K-1);state(i+1,j-1,K-1) state(i+1,j,K-1) state(i+1,j+1,K-1)];
        IESM(:,:,2)=[state(i-1,j-1,K)   state(i-1,j,K)   state(i-1,j+1,K);  state(i,j-1,K)   state(i,j,K)   state(i,j+1,K);  state(i+1,j-1,K)   state(i+1,j,K)   state(i+1,j+1,K)];
        IESM(:,:,3)=[state(i-1,j-1,1)   state(i-1,j,1)   state(i-1,j+1,1);  state(i,j-1,1)   state(i,j,1)   state(i,j+1,1);  state(i+1,j-1,1)   state(i+1,j,1)   state(i+1,j+1,1)];
elseif caseis==24 % BSA 4 [ (1<j<J) & (1<k<K) ]
        IESM(:,:,1)=[state(i-1,J,k-1) state(i-1,1,k-1) state(i-1,2,k-1);state(i,J,k-1) state(i,1,k-1) state(i,2,k-1);state(i+1,J,k-1) state(i+1,1,k-1) state(i+1,2,k-1)];
        IESM(:,:,2)=[state(i-1,J,k)   state(i-1,1,k)   state(i-1,2,k);  state(i,J,k)   state(i,1,k)   state(i,2,k);  state(i+1,J,k)   state(i+1,1,k)   state(i+1,2,k)];
        IESM(:,:,3)=[state(i-1,J,k+1) state(i-1,1,k+1) state(i-1,2,k+1);state(i,J,k+1) state(i,1,k+1) state(i,2,k+1);state(i+1,J,k+1) state(i+1,1,k+1) state(i+1,2,k+1)];
elseif caseis==25 % BSA 5 [ (1<j<J) & (1<k<K) ]
        IESM(:,:,1)=[state(I,j-1,k-1) state(I,j,k-1) state(I,j+1,k-1);state(1,j-1,k-1) state(1,j,k-1) state(1,j+1,k-1);state(2,j-1,k-1) state(2,j,k-1) state(2,j+1,k-1)];
        IESM(:,:,2)=[state(I,j-1,k)   state(I,j,k)   state(I,j+1,k);  state(1,j-1,k)   state(1,j,k)   state(1,j+1,k);  state(2,j-1,k)   state(2,j,k)   state(2,j+1,k)];
        IESM(:,:,3)=[state(I,j-1,k+1) state(I,j,k+1) state(I,j+1,k+1);state(1,j-1,k+1) state(1,j,k+1) state(1,j+1,k+1);state(2,j-1,k+1) state(2,j,k+1) state(2,j+1,k+1)];
elseif caseis==26 % BSA 6 [ (1<j<J) & (1<k<K) ]
        IESM(:,:,1)=[state(I-1,j-1,k-1) state(I-1,j,k-1) state(I-1,j+1,k-1);state(I,j-1,k-1) state(I,j,k-1) state(I,j+1,k-1);state(1,j-1,k-1) state(1,j,k-1) state(1,j+1,k-1)];
        IESM(:,:,2)=[state(I-1,j-1,k)   state(I-1,j,k)   state(I-1,j+1,k);  state(I,j-1,k)   state(I,j,k)   state(I,j+1,k);  state(1,j-1,k)   state(1,j,k)   state(1,j+1,k)];
        IESM(:,:,3)=[state(I-1,j-1,k+1) state(I-1,j,k+1) state(I-1,j+1,k+1);state(I,j-1,k+1) state(I,j,k+1) state(I,j+1,k+1);state(1,j-1,k+1) state(1,j,k+1) state(1,j+1,k+1)];
elseif caseis==27 % Inside volume [ (1<i<I) & (1<j<J) & (1<k<K) ]
        IESM(:,:,1)=[state(i-1,j-1,k-1) state(i-1,j,k-1) state(i-1,j+1,k-1);state(i,j-1,k-1) state(i,j,k-1) state(i,j+1,k-1);state(i+1,j-1,k-1) state(i+1,j,k-1) state(i+1,j+1,k-1)];
        IESM(:,:,2)=[state(i-1,j-1,k)   state(i-1,j,k)   state(i-1,j+1,k);  state(i,j-1,k)   state(i,j,k)   state(i,j+1,k);  state(i+1,j-1,k)   state(i+1,j,k)   state(i+1,j+1,k)];
        IESM(:,:,3)=[state(i-1,j-1,k+1) state(i-1,j,k+1) state(i-1,j+1,k+1);state(i,j-1,k+1) state(i,j,k+1) state(i,j+1,k+1);state(i+1,j-1,k+1) state(i+1,j,k+1) state(i+1,j+1,k+1)];
end