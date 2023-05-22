A1=reshape(AA,1,1280000);
B1=reshape(BB,1,1280000);
C1=reshape(CC,1,1280000);
D1=reshape(T_new,1,1280000);
x=A1';
y=B1';
z=C1';
T=D1';
H_FIG=figure('position',[200,200,800,550]);
H_AXES=axes;
hold on;
colormap(jet(1000));
my_colormap=H_FIG.Colormap;

idexu=floor(max(max(max(T))));
idexl=floor(min(min(min(T))));
xyz=cell(1,idexu-idexl);
QA=[x y z T];
for n=1:idexu-idexl
    QB=QA;
    count=idexl+n-1;
    id=find(floor(T)~=count)';
    color_idx=1+round((length(my_colormap(:,1))-1)*(T(count)-min(T))/(max(T)-min(T)));
    QB(id,:)=[];
    QB(:,4)=color_idx;
    xyz{n}=QB;
end

tic
for n=1:size(xyz,2)
    for idnex=1:size(xyz{n},1)
	 plot3(xyz{n}(idnex,1),xyz{n}(idnex,2),xyz{n}(idnex,3),'s',...
     'MarkerFaceColor',my_colormap(xyz{n}(idnex,4),:),'MarkerEdgeColor',my_colormap(xyz{n}(idnex,4),:));
    end
end
toc
%view([-1,-1,1]);
%set(H_AXES,'XGrid','on','YGrid','on','ZGrid','on','FontSize',10);
H_colorbar=colorbar;
H_colorbar.Label.String = 'ÎÂ¶ÈT';
TicksLabel=cell(1,11);
for m=1:11
	TicksLabel{m}=(m-1)/10*(max(T)-min(T))+min(T);
end
set(H_colorbar,'Ticks',0:0.1:1,'TickLabels',TicksLabel);