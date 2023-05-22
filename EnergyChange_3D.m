function [E1,IESM_NewSpin,E2,DelE] = EnergyChange_3D(IESM)

E1 = Energy1_3D_QPOTTS(IESM);
IESM_NewSpin=IESM;
for count=1:10000
    IESM_NewSpin(2,2,2)=floor(2+63*rand);
      if IESM_NewSpin(2,2,2)~=IESM(2,2,2)
          break
      end
end
E2 = Energy2_3D_QPOTTS(IESM_NewSpin);
DelE = E2-E1;

