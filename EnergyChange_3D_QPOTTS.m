function [E1,IESM_NewSpin,E2,DelE] = EnergyChange_3D_QPOTTS(IESM,Tc,i)

E1 = Energy1_3D_QPOTTS(IESM);
IESM_NewSpin = Solid_Annex(IESM,Tc);
E2 = Energy2_3D_QPOTTS(IESM_NewSpin);
DelE = E2-E1;