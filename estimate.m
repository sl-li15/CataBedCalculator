function [] = estimate(dia)
    temperature = importdata('temperature.csv');
    Tinf = temperature(1,1);
    Troom = temperature(2,1);
    vinput = importdata('vinput.csv');
    ttotal = ceil(max(vinput(:,1)));
    tmesh = ttotal * 100;
    v = max(vinput(:,2)) * 0.51 / 2 * 10^2 / dia^2;
    tign = 10^8 / Tinf^3;
    xtotal = ceil(2 * tign * v);
    xmesh = xtotal * 5;
    csvwrite('mesh.csv',[xmesh,xtotal;tmesh,ttotal]);
    csvwrite('ecs.csv',ones(xmesh,1));
end

