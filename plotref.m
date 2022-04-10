function [] = plotref(t, Tc)
    data = importdata('data.csv');    
    mesh = importdata('mesh.csv');
    xmesh = mesh(1,1);
    tmesh = mesh(2,1);
    xtotal = mesh(1,2);
    ttotal = mesh(2,2);
    win = 800;
    subplot(2,2,2);
    imagesc(Tc);
    colorbar;
    xlabel('tmesh');
    ylabel('xmesh');
    subplot(2,2,4);
    for i = 2:size(data,2)
        plot(t,smoothdata(Tc(floor(data(1,i)*xmesh/xtotal)+1,:),'movmean',win));
        hold on;
        plot(t,smoothdata(Tc(floor(data(1,i)*xmesh/xtotal)+1,:),'movmean',win));
        hold on;
        plot(t,smoothdata(Tc(floor(data(1,i)*xmesh/xtotal)+1,:),'movmean',win));
        hold on;
        plot(t,smoothdata(Tc(floor(data(1,i)*xmesh/xtotal)+1,:),'movmean',win));
    end
    
    data = data(2:size(data,1),:);
    for i=2:size(data,2)
        plot(data(:,1),data(:,i));
    end
    xlabel('t /s');
    ylabel('T /¡æ');
end

