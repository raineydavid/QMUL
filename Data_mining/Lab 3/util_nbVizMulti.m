function util_nbVizMulti(lx,LX,nb,data,labels,VIZ)
 
Y = nb.posterior(LX); 
[~,Y] = max(Y,[],2);

sfigure(2); clf; 
if(nargin>5 && VIZ==2)
    imagesc(lx,lx,reshape(Y,numel(lx),numel(lx))); colorbar; axis xy; hold on; colormap jet; caxis([0,max(Y)]);
%else
    %contour(lx,lx,reshape(abs(Y-0.5),numel(lx),numel(lx))); axis xy; hold on; colormap jet; caxis([0,0.5]);
end
if(nargin>3)
    plot(data(labels==1,1),data(labels==1,2),'mx','linewidth',2.0);
    plot(data(labels==2,1),data(labels==2,2),'bo','linewidth',2.0);
    plot(data(labels==3,1),data(labels==3,2),'gd','linewidth',2.0);
end