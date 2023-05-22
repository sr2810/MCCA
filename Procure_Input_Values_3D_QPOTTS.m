function [NoLatticePoints,T0,Q,MonteCarloSteps,PrintToJPEG]=Procure_Input_Values_3D_QPOTTS()


NoLatticePoints=input('Lattice size. [Defaults to 25] = >> ');
if isempty(NoLatticePoints)
    NoLatticePoints = 250;
end

T0=input('No. of Temprature [Defaults to 1000] = >> ');
if isempty(T0)
    T0 = 2000;
end

MonteCarloSteps=input('No. of Monte-Carlo Steps [Defaults to 100] = >> ');
if isempty(MonteCarloSteps)
    MonteCarloSteps = 4000;
end

PrintToJPEG=input('PrintToJPEG ??  [ 0 | 1 ] (Default: 0) = >> ');
if isempty(PrintToJPEG)
    PrintToJPEG = 0;
end

Q=64;

% Trials=input('Number of simulations [defaults to 1] = >> ');
% if isempty(Trials)
%     Trials = 1;
% end