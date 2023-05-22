function Gb=Gbbis(state)

fG=@(state)(state==100)*2+(state~=100)*1;

Gb=arrayfun(fG,state);