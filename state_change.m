function state_c=state_change(trun2,T,Xu)

B=(T>400);
A=(trun2&B&Xu);
A=double(A);
k=find(A==1);
%state_c=zero(length(kkk),3);
state_c(:,1)=rem(rem((k-1),60*240),60)+1;
state_c(:,2)=fix(rem((k-1),(60*240))/60)+1;
state_c(:,3)=fix((k-1)/(60*240))+1;

% AA=state_c;
% AA(AA(:,1)<26)=[];
% AA(AA(:,1)>35)=[];
 count=1;
for u=1:size(state_c,1)
    if state_c(u,1)>25 && state_c(u,1)<36
        AA(count,:)=state_c(u,:);
        count=count+1;
    end
end
for uu=1:2
    state_c=[state_c;AA];
end



