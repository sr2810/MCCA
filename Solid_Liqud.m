function S_L = Solid_Liqud(IESM)

A=size(find(IESM<65&IESM>1),1);
if A>9&&A<19
    S_L=0.5;
elseif A>3
    S_L=1;
else
    S_L=0;
end
