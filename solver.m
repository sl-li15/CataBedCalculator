function [alphaH2O, alphaHAN, alphaEmim, T, Tc, eff] = solver(xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, kh1, kh2, kc, ka, HVH2O, HVHAN, HVEmim, effini, keff)
% paras
    eff = effini;
    cH2O = 0.1;
    cHAN = 0.5;
    cEmim = 0.4;
    kH2O = HVH2O * cH2O;
    kHAN = HVHAN * cHAN;
    kEmim = HVEmim * cEmim;
    AH2O = 8.871 * 10^16;
    EH2O = 113000.85;
    AHAN = 1.675 * 10^10;
    EHAN = 85359.8;
    AEmim = 1046468.8;
    EEmim = 69268.1;
    R = 8.315;

    % meshing
    alphaH2O = zeros(xmesh, tmesh);
    alphaHAN = zeros(xmesh, tmesh);
    alphaEmim = zeros(xmesh, tmesh);
    T = zeros(xmesh, tmesh);
    Tc = zeros(xmesh, tmesh);
    t = zeros(xmesh, tmesh);
    deltax = xtotal / xmesh;
    deltat = ttotal / tmesh;

    % initial conditions
    T(2:xmesh, 1) = Tinf;
    Tc(:, 1) = Tinf;
    alphaH2O(1, :) = 1;
    alphaHAN(1, :) = 1;
    alphaEmim(1, :) = 1;
    % boudary conditions
    T(1, :) = Troom;
    Tc(1, :) = Tinf;

    % solve
    for i = 1:tmesh - 1
        %update t
        t(1,i+1) = i * deltat;
        v = vindex(i+1);
        %update alpha and T
        for j = 2:xmesh
            omegaH2O = AH2O * exp(-EH2O / R / (T(j,i) + 273.15)) * alphaH2O(j,i) * eff(j,1);
            omegaHAN = AHAN * exp(-EHAN / R / (T(j,i) + 273.15)) * alphaHAN(j,i) * eff(j,1);
            omegaEmim = AEmim * exp(-EEmim / R / (T(j,i) + 273.15)) * alphaEmim(j,i) * eff(j,1);

            alphaH2O(j,i+1) = deltat * (v / deltax * (alphaH2O(j-1,i) - alphaH2O(j,i)) - omegaH2O) + alphaH2O(j,i);
            alphaHAN(j,i+1) = deltat * (v / deltax * (alphaHAN(j-1,i) - alphaHAN(j,i)) - omegaHAN) + alphaHAN(j,i);
            alphaEmim(j,i+1) = deltat * (v / deltax * (alphaEmim(j-1,i) - alphaEmim(j,i)) - omegaEmim) + alphaEmim(j,i);

            if alphaH2O(j,i+1) < 0
                alphaH2O(j,i+1) = 0;
            end
            if alphaHAN(j,i+1) < 0
                alphaHAN(j,i+1) = 0;
            end
            if alphaEmim(j,i+1) < 0
                alphaEmim(j,i+1) = 0;
            end

            if alphaH2O(j,i) - deltat * omegaH2O < 0
                omegaH2O = alphaH2O(j,i) / deltat;
            end
            if alphaHAN(j,i) - deltat * omegaHAN < 0
                omegaHAN = alphaHAN(j,i) / deltat;
            end
            if alphaEmim(j,i) - deltat * omegaEmim < 0
                omegaEmim = alphaEmim(j,i) / deltat;
            end
            temp = v / deltax * (T(j-1,i) - T(j,i)) + kH2O * omegaH2O + kHAN * omegaHAN + kEmim * omegaEmim + kh1 * (Tc(j,i) - T(j,i));
            T(j,i+1) = T(j,i) + deltat * temp;
        end

        %update Tc
        for j = 2:xmesh - 1
            temp = kh2 * (T(j,i) - Tc(j,i)) + kc * (Tinf - Tc(j,i)) + ka / deltax / deltax * (Tc(j-1,i) - 2 * Tc(j,i) + Tc(j+1,i));
            Tc(j,i+1) = Tc(j,i) + deltat * temp;
        end
        j = xmesh;
        temp = kh2 * (T(j,i) - Tc(j,i)) + kc * (Tinf - Tc(j,i)) + ka / deltax / deltax * (Tc(j-1,i) - Tc(j,i));
        Tc(j,i+1) = Tc(j,i)+deltat*temp;
        
        %update eff
        for j = 1:xmesh
            Tchis = deltat * (Tc(j,i)-Troom);
            eff(j,1) = eff(j,1) * exp(-keff * Tchis);
        end
        
    end
end


