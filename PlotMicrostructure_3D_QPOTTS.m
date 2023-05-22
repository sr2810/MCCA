%- - - - - - -  - - - - - - - -  - - - - - - -  - - - - - - - 
if mcs==1
    [xyzQ,stateindex] = ExtractQ_XYZQ_3D_POTTS(state,x,y,z,Q);
    display('Plotting the evolving microstructure');
    figure
    for q = 1:Q
        if prod(size(xyzQ{1,q}))~=0
                plot3(xyzQ{1,q}(:,1),xyzQ{1,q}(:,2),xyzQ{1,q}(:,3),'s','MarkerFaceColor',...
                    ColorMatrix(q,:),'MarkerEdgeColor',ColorMatrix(q,:))
               box on, axis equal, hold on;%PlotBoxEdges
            xlabel('X - axis'),ylabel('Y - axis'),zlabel('Z - axis')
            axesLabelsAlign3D,title('Grain Structure')%,pause(0.05)
        end
    end
end
%- - - - - - -  - - - - - - - -  - - - - - - -  - - - - - - -     
if mod(mcs,20)==0
      [xyzQ,stateindex] = ExtractQ_XYZQ_3D_POTTS(state,x,y,z,Q);
    display('Plotting the evolving microstructure');
    figure
    for q = 1:Q
        if prod(size(xyzQ{1,q}))~=0
                plot3(xyzQ{1,q}(:,1),xyzQ{1,q}(:,2),xyzQ{1,q}(:,3),'s','MarkerFaceColor',...
                    ColorMatrix(q,:),'MarkerEdgeColor',ColorMatrix(q,:))
               box on, axis equal, hold on;%PlotBoxEdges
            xlabel('X - axis'),ylabel('Y - axis'),zlabel('Z - axis')
            axesLabelsAlign3D,title('Grain Structure')%,pause(0.05)
        end
    end
end

%- - - - - - -  - - - - - - - -  - - - - - - -  - - - - - - - 

clear SqSz CloseAftPrint PrintSqBox PlotQGrains q
%- - - - - - -  - - - - - - - -  - - - - - - -  - - - - - - - 
%- - - - - - -  - - - - - - - -  - - - - - - -  - - - - - - - 