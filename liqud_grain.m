function [E1,IESM_NewSpin,E2,DelE]=liqud_grain(IESM,Q,IESMT,i)

E1 = Energy1_3D_QPOTTS(IESM);
IESM_NewSpin = IndexElementStateMatrix_3D_QPOTTS_NewSpin(IESM,IESMT,i);
E2 = Energy2_3D_QPOTTS(IESM_NewSpin);
DelE = E2-E1;