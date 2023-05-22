function caseis = EdgeBoundaryWrap_3D_QPOTTS(i,j,k)
I=60;J=240;K=100;
caseis=28;BSA=99;
if i~=1 && i~=I
    if j~=1 && j~=J
        if k~=1 && k~=K
            caseis=27;
            BSA=0;
        end
    end
end
if caseis==28
    if i==1
        BSA=5;
    elseif i==I
        BSA=6;
    end
    if j==1
        BSA=4;
    elseif j==J
        BSA=2;
    end
    if k==1
        BSA=1;
    elseif k==K
        BSA=3;
    end
end
%----------------------------------------------------------------------
BSL=0;
if BSA==1
    if j==1
        BSL=1;
    elseif j==J
        BSL=3;
    end
    if i==1
        BSL=4;
    elseif i==I
        BSL=2;
    end
end
if BSL==0
    if BSA==2
        if i==1
            BSL=12;
        elseif i==I
            BSL=11;
        end
        if k==1
            BSL=3;
        elseif k==K
            BSL=7;
        end
    end
end
if BSL==0
    if BSA==3
        if j==1
            BSL=5;
        elseif j==J
            BSL=7;
        end
        if i==1
            BSL=8;
        elseif i==I  
            BSL=6;
        end
    end
end
if BSL==0
    if BSA==4
        if i==1
            BSL=9;
        elseif i==I 
            BSL=10;
        end
        if k==1
            BSL=1;
        elseif k==K
            BSL=5;
        end
    end
end
if BSL==0
    if BSA==5
        if j==1
            BSL=9;
        elseif j==J
            BSL=12;
        end
        if k==1
            BSL=4;
        elseif k==K
            BSL=8;
        end
    end
end
if BSL==0
    if BSA==6
        if j==1
            BSL=10;
        elseif j==J
            BSL=11;
        end
        if k==1
            BSL=2;
        elseif k==K
            BSL=6;
        end
    end
end
%-------------------------------------------------------
if BSL==1
    if i==1
        caseis=1;
    elseif i==I
        caseis=3;
    else
        caseis=2;
    end
end
if BSL==2
    if j==1
        caseis=3;
    elseif j==J
        caseis=5;
    else
        caseis=4;
    end
end
if BSL==3
    if i==1
        caseis=7;
    elseif i==I
        caseis=5;
    else
        caseis=6;
    end
end
if BSL==4
    if j==1
        caseis=1;
    elseif j==J
        caseis=7;
    else
        caseis=8;
    end
end
if BSL==5
    if i==1
        caseis=9;
    elseif i==I
        caseis=11;
    else
        caseis=10;
    end
end
if BSL==6
    if j==1
        caseis=11;
    elseif j==J
        caseis=13;
    else
        caseis=12;
    end
end
if BSL==7
    if i==1
        caseis=15;
    elseif i==I
        caseis=13;
    else
        caseis=14;
    end
end
if BSL==8
    if j==1
        caseis=9;
    elseif j==J
        caseis=15;
    else
        caseis=16;
    end
end
if BSL==9
    if k==1
        caseis=1;
    elseif k==K
        caseis=9;
    else
        caseis=17;
    end
end
if BSL==10
    if k==1
        caseis=3;
    elseif k==K
        caseis=11;
    else
        caseis=18;
    end
end
if BSL==11
    if k==1
        caseis=5;
    elseif k==K
        caseis=13;
    else
        caseis=19;
    end
end
if BSL==12
    if k==1
        caseis=7;
    elseif k==K
        caseis=15;
    else
        caseis=20;
    end
end
if BSA==1 && i~=1 && i~=I && j~=1 && j~=J   
    caseis=21;
end
if BSA==2 && i~=1 && i~=I && k~=1 && k~=K
    caseis=22;
end
if BSA==3 && i~=1 && i~=I && j~=1 && j~=J
    caseis=23;
end
if BSA==4 && i~=1 && i~=I && k~=1 && k~=K
    caseis=24;
end
if BSA==5 && j~=1 && j~=J && k~=1 && k~=K
    caseis=25;
end
if BSA==6 && j~=1 && j~=J && k~=1 && k~=K
    caseis=26;
end