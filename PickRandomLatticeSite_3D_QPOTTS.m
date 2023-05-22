function [i,j,k] = PickRandomLatticeSite_3D_QPOTTS(state_c)

Sx = size(state_c,1);
count=floor(1+rand*Sx);
i=state_c(count,1);
j=state_c(count,2);
k=state_c(count,3);

% i=floor(11+rand*39);
% j=floor(21+rand*100);
% k=floor(1+rand*19);
%i=K(n,1);j=K(n,2);k=K(n,3);