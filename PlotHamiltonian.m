figure
plot([1:MonteCarloSteps],(TotalEnergy1MCS/(NoLatticePoints^3)),'b',...
    [1:MonteCarloSteps],(TotalEnergy1MCS/(NoLatticePoints^3)),'ro',...
    'MarkerFaceColor','k','MarkerSize',5),hold on,axis square,grid on,box on
xlabel('Monte-Carlo Steps')
ylabel('E/(JN)')
title('Hamiltonian variation with M.C.Steps')