function E1=Energy1_3D_QPOTTS(IESM)
%E1=26-...
E1=...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(1,1,1))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(1,2,1))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(1,3,1))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(2,1,1))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(2,2,1))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(2,3,1))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(3,1,1))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(3,2,1))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(3,3,1))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(1,1,2))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(1,2,2))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(1,3,2))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(2,1,2))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(2,3,2))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(3,1,2))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(3,2,2))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(3,3,2))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(1,1,3))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(1,2,3))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(1,3,3))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(2,1,3))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(2,2,3))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(2,3,3))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(3,1,3))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(3,2,3))+...
KDel_3D_QPOTTS(IESM(2,2,2),IESM(3,3,3))+...
Gb_change(IESM(2,2,2));