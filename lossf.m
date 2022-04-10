function [devval] = lossf(position, tref, Tcref, xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, kh1, kh2, kc, ka, HVH2O, HVHAN, HVEmim, effini, keff)
    [~, ~, ~, ~, Tc, ~] = solver(xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, kh1, kh2, kc, ka, HVH2O, HVHAN, HVEmim, effini, keff);
    devval = 0;
    if ttotal < max(tref)
        print('error: simulation time is not enough');
        return ;
    end
    simposition = floor(position * xmesh / xtotal);
    Tcused = Tc(simposition, :); 
    tref = tref';
    Tcref = Tcref';
    
    for i = 1:size(tref,2)
        if tref(1, i) > 0
            simt = tref(1, i) * tmesh / ttotal;
            devval = devval + (Tcref(1, i) - Tcused(1, simt))^2;
        end
    end
    
    devval = devval / size(tref,2);
    
end

