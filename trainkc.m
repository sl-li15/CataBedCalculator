function [keff] = trainkc(dia, err)
    mesh = importdata('mesh.csv');
    xmesh = mesh(1,1);
    tmesh = mesh(2,1);
    xtotal = mesh(1,2);
    ttotal = mesh(2,2);
    
    effini = ones(xmesh, 1);
    vindex = zeros(1, tmesh);
    vinput = importdata('vinput.csv');
    
    for i=1:tmesh
        for j=1:size(vinput,1)-1
            t = i * ttotal/tmesh;
            if t>=vinput(j,1)&&t<vinput(j+1,1)
                vindex(1,i)=vinput(j,2)+(vinput(j+1,2)-vinput(j,2))/((vinput(j+1,1)-vinput(j,1)))*(t-vinput(j,1));
            end
        end
    end
    vindex = vindex * 0.51 / 2 * 10^2 / dia^2;
    keff = 0;
    
    temperature = importdata('temperature.csv');
    Tinf = temperature(1,1);
    Troom = temperature(2,1);

    paras = importdata('paras.csv');
    kh1 = paras(1,1);
    kh2 = paras(1,2);
    kc = paras(1,3);
    ka = paras(1,4);
    HVH2O = paras(1,5);
    HVHAN = paras(1,6);
    HVEmim = paras(1,7);
    
    while true
        keff = keff + err
        [~, ~, ~, ~, Tc, eff] = solver(xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, kh1, kh2, kc, ka, HVH2O, HVHAN, HVEmim, effini, keff);
        if max(Tc(:,tmesh))<200
            break;
        end
    end
    
    plotpics(Tc, eff);
    
end

