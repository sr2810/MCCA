function IESM_NewSpin = IndexElementStateMatrix_3D_QPOTTS_NewSpin(IESM,IESMT,i)


IESM_NewSpin=IESM;
A=IESM(:);
B=IESMT(:);
if i>35 || i<26
if i>35
     if rand>0.5
         A(28:35)=A(15);
         B(15)=200;
     else
          A(28:35)=A(18);
          B(18)=200;
     end
     if rand>0.5
     A(36:43)=A(6);
     B(6)=200;
     else
     A(36:43)=A(5);
     B(5)=200;
     end
end
if i<26
     if rand>0.5
         A(28:35)=A(13);
         B(13)=200;
     else
         A(28:35)=A(16);
         B(16)=200;
     end
     if rand>0.5
     A(36:43)=A(4);
     B(4)=200;
     else
     A(36:43)=A(5);
     B(5)=200;
     end     
end
%  A(B>250)=1;
A(find(A==2000))=[];
A(find(A==1))=[];
A(find(A==3000))=[];
if isempty(A)
else
table=tabulate(A);
F=max(table(:,2));
I=find(table(:,2)==F);
result=table(I,1);
IESM_NewSpin=IESM;
IESM_NewSpin(2,2,2)=I(randi([1 size(result,1)],1,1));
end
end
