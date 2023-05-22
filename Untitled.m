clear all;close all
rand('state', 0.2);
[NoLatticePoints,T0,Q,MonteCarloSteps,PrintToJPEG] = Procure_Input_Values_3D_QPOTTS();
Energy=zeros(80,400,40);
TotalEnergy1MCS=zeros(1,MonteCarloSteps);
ColorMatrix=rand(Q,3);
X=linspace(0,2,80);
Y=linspace(0,10,400);
[xt,yt]=meshgrid(Y,X);
x=repmat(xt,[1 1 40]);
y=repmat(yt,[1 1 40]);
for count=1:40
    z(:,:,count)=(count-1)*ones(80,400)/(40-1);
end
state=ones(80,400,40);
state_implicit=state;
T=repmat(298,80,400,40);
A=(1:80);B=(1:400);
[AA,BB]=meshgrid(B,A);
Tr=repmat(300,80,400);
dTc=zeros(80,400,40);
for mcs=1:500%MonteCarloSteps
    tic
    [Tr,u,v,w]=remp_moveceshi(mcs,MonteCarloSteps);
    T_new= temperatureceshi(Tr,T,u,v,w,state);
  %  T=Tr;
    T=T_new;
    dT=1996-T;
    dTc=max(T,dTc);
 %   dT=dT_new;
    state(T>1996)=2000;
    state_implicit(T<=1996)=2000;
    state_implicit(T>1996)=0;
    trun=(state==2000&state_implicit==2000);
    trun2=(state>1&state_implicit==2000);
    trun=double(trun);
    trun2=double(trun2);
    state_c=state_change(trun2,dT,T,dTc);
    T_sc(mcs,1)=sum(sum(sum(trun2==1)));
     state_new=nuclear(dT,Q,trun,dTc);
     state(state_new~=0)=state_new(state_new~=0);
     for n=1:1*size(state_c,1)
        [i,j,k] = PickRandomLatticeSite_3D_QPOTTS(state_c);
        caseis = EdgeBoundaryWrap_3D_QPOTTS(i,j,k,x,y,z);
        [IESM,IESMT] = IndexElementStateMatrix_3D_QPOTTS(x,caseis,state,i,j,k,dT);
            if IESM(2,2,2)==2000  %&& dTc(i,j,k)<2400 
                  [E1,IESM_NewSpin,E2,DelE]=liqud_grain(IESM,Q,IESMT,i);
            elseif IESM(2,2,2)~=2000 && dTc(i,j,k)<1966
                Tc=T(i,j,k);
                  [E1,IESM_NewSpin,E2,DelE] = EnergyChange_3D_QPOTTS(IESM,Tc,i);
           else
               E1 = Energy1_3D_QPOTTS(IESM);
               IESM_NewSpin=IESM;
               E2=E1;
               DelE=E2-E1;
           end
           if DelE <= 0 
               state(i,j,k)=IESM_NewSpin(2,2,2);
               Energy(i,j,k)=E2;
           else
               Energy(i,j,k)=E1;
           end
%          if mod(0.05*n,NoLatticePoints^3)==0
%              fprintf('... . . %d completed',n*100/NoLatticePoints^3)
%          end
     end
%      TotalEnergy1MCS(1,mcs)=sum(sum(sum(Energy)));
     fprintf('Status:  [mcs / MCS, %% Comp, Q, N] = [(%d / %d), %2.4f%%, %d, %d]\n',mcs,MonteCarloSteps,mcs*100/MonteCarloSteps,Q,NoLatticePoints);
%     run PlotMicrostructure_3D_QPOTTS,%pause(0.001)
toc
end