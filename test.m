xmesh = 200;
tmesh = 200000;
vindex = zeros(1, tmesh) + 0.51;
Tinf = 130;
Troom = 30;
ttotal = 2000.0;
xtotal = 40.0;
paras = importdata('paras.csv');

kh1 = paras(1,1);
kh2 = paras(1,2);
kc = paras(1,3);
ka = paras(1,4);
HVH2O = paras(1,5);
HVHAN = paras(1,6);
HVEmim = paras(1,7);

effini = ones(xmesh, 1);
keff = 1 * 10^(-6);

[alphaH2O, alphaHAN, alphaEmim, T, Tc, eff] = solver(xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, kh1, kh2, kc, ka, HVH2O, HVHAN, HVEmim, effini, keff);

t = 0:ttotal/tmesh:ttotal-ttotal/tmesh;
plotpics(Tc, eff);
% plotref(t, alphaH2O, alphaHAN, alphaEmim, T, Tc, eff);
% plot(eff);