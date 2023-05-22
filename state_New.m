function New_state=state_New(x,state,Q,T)

New_state=state;
Sx = size(x,1);
P=exp(-100./T);
for n=1:Sx
    i=floor(1+rand*100);
    j=floor(1+rand*100);
    k=floor(1+rand*100);
    if state(i,j,k)==2000
        if rand > P
            New_state(i,j,k)=1+floor(Q*rand);
        end
    end
end

