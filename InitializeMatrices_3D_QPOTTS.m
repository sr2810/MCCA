function [Energy,TotalEnergy1MCS,ColorMatrix] = InitializeMatrices_3D_QPOTTS(NoLatticePoints,Q,MonteCarloSteps)

Energy=zeros(80,400,20);
TotalEnergy1MCS=zeros(1,MonteCarloSteps);
ColorMatrix=rand(Q,3);
