clear all;close all
rand('state', 0.2);
[NoLatticePoints,T0,Q,MonteCarloSteps,PrintToJPEG] = Procure_Input_Values_3D_QPOTTS();
[Energy,TotalEnergy1MCS,ColorMatrix] = InitializeMatrices_3D_QPOTTS(NoLatticePoints,Q,MonteCarloSteps);
[x,y,z] = MakeSquareLattice_3D_QPOTTS(NoLatticePoints);
state=ones(60,240,100)*3000;
T=repmat(298,60,240,100);
Tr=repmat(300,60,100);
dTc=zeros(60,240,100);
% load 1C
Xu=wuliao();state(Xu<21 & state>65)=3000;
state_implicit=state;
for mcs=1:1500%MonteCarloSteps
    tic
    [Tr,u,v,w,X]=remp_move(mcs,MonteCarloSteps);
    T_new= temperature(Tr,T,u,v,w,state);
  %  T=Tr;
    T=T_new;
%   state(:,200,:)=state(:,199,:);
    dT=1996-T;
    dTc=max(T,dTc);
     state(T>1996 & Xu<20)=2000;
     state_implicit(T<=1996)=2000;
     state_implicit(T>1996)=0;
     trun=(state==2000&state_implicit==2000);
     trun2=(state>1&state_implicit==2000);
     trun=double(trun);
     trun2=double(trun2);
     state_c=state_change(trun2,T,Xu);
     U1=find(state_c(:,3)>19);
     state_c(U1,:)=[];
     state_new=nuclear(dT,trun,dTc,state);
     state(state_new~=0)=state_new(state_new~=0);
     for n=1:size(state_c,1)
        [i,j,k] = PickRandomLatticeSite_3D_QPOTTS(state_c);
        caseis = EdgeBoundaryWrap_3D_QPOTTS(i,j,k);
        [IESM,IESMT] = IndexElementStateMatrix_3D_QPOTTS(caseis,state,i,j,k,dT);
            if IESM(2,2,2)==2000  %&& dTc(i,j,k)<2400 
                  [E1,IESM_NewSpin,E2,DelE]=liqud_grain(IESM,Q,IESMT,i);
             elseif IESM(2,2,2)~=2000 %&& dTc(i,j,k)<1966 
                 if i>25 && i<36
                     [E1,IESM_NewSpin,E2,DelE] = EnergyChange_3D(IESM);
                     if DelE <= 0 
                        state(i,j,k)=IESM_NewSpin(2,2,2);
                        Energy(i,j,k)=E2;
                     else
                           Energy(i,j,k)=E1;
                     end 
                 else
                   Tc=T(i,j,k);
                   [E1,IESM_NewSpin,E2,DelE] = EnergyChange_3D_QPOTTS(IESM,Tc,i);
                 end
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
         if mod(0.05*n,NoLatticePoints^3)==0
             fprintf('... . . %d completed',n*100/NoLatticePoints^3)
         end
     end
     TotalEnergy1MCS(1,mcs)=sum(sum(sum(Energy)));
     fprintf('Status:  [mcs / MCS, %% Comp, Q, N] = [(%d / %d), %2.4f%%, %d, %d]\n',mcs,MonteCarloSteps,mcs*100/MonteCarloSteps,Q,NoLatticePoints);
%     run PlotMicrostructure_3D_QPOTTS,%pause(0.001)
toc
end
beifen=state;
state(:,1:20,:)=3000;
