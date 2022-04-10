function [newparas] = train(err, dia, step)
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
    keff = importdata('kc.csv');
    
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

    factors = ones(1,7);

    fackh1 = factors(1, 1);
    fackh2 = factors(1, 2);
    fackc = factors(1, 3);
    facka = factors(1, 4);
    facHVH2O = factors(1, 5);
    facHVHAN = factors(1, 6);
    facHVEmim = factors(1, 7);

    data = importdata('data.csv');
    batch = size(data, 2) - 1;

    for i = 1:step
        i
        lr = 1;
        while  lr >= err
            lr
            disp('kh1');
            for j = 1:10
                j
                fp = fackh1 + lr;
                fm = fackh1 - lr;
                dev = 0;
                devp = 0;
                devm = 0;
                for k = 2:batch+1
                    dev = dev + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devp  = devp + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fp * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devm  = devm + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fm * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                end
                if devp < dev
                    fackh1 = fp;
                else
                    if devm < dev
                        fackh1 = fm;
                    else
                        break;
                    end
                end
            end

            disp('kh2');
            for j = 1:10
                j
                fp = fackh2 + lr;
                fm = fackh2 - lr;
                dev = 0;
                devp = 0;
                devm = 0;
                for k = 2:batch+1
                    dev = dev + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devp  = devp + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fp * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devm  = devm + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fm * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                end
                if devp < dev
                    fackh2 = fp;
                else
                    if devm < dev
                        fackh2 = fm;
                    else
                        break;
                    end
                end
            end

            disp('kc');
            for j = 1:10
                j
                fp = fackc + lr;
                fm = fackc - lr;
                dev = 0;
                devp = 0;
                devm = 0;
                for k = 2:batch+1
                    dev = dev + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devp  = devp + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fp * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devm  = devm + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fm * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                end
                if devp < dev
                    fackc = fp;
                else
                    if devm < dev
                        fackc = fm;
                    else
                        break;
                    end
                end
            end

            disp('ka');
            for j = 1:10
                j
                fp = facka + lr;
                fm = facka - lr;
                dev = 0;
                devp = 0;
                devm = 0;
                for k = 2:batch+1
                    dev = dev + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devp  = devp + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, fp * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devm  = devm + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, fm * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                end
                if devp < dev
                    facka = fp;
                else
                    if devm < dev
                        facka = fm;
                    else
                        break;
                    end
                end
            end

            disp('HVH2O');
            for j = 1:10
                j
                fp = facHVH2O + lr;
                fm = facHVH2O - lr;
                dev = 0;
                devp = 0;
                devm = 0;
                for k = 2:batch+1
                    dev = dev + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devp  = devp + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, fp * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devm  = devm + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, fm * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                end
                if devp < dev
                    facHVH2O = fp;
                else
                    if devm < dev
                        facHVH2O = fm;
                    else
                        break;
                    end
                end
            end

            disp('HVHAN');
            for j = 1:10
                j
                fp = facHVHAN + lr;
                fm = facHVHAN - lr;
                dev = 0;
                devp = 0;
                devm = 0;
                for k = 2:batch+1
                    dev = dev + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devp  = devp + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, fp * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devm  = devm + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, fm * HVHAN, facHVEmim * HVEmim, effini, keff);
                end
                if devp < dev
                    facHVHAN = fp;
                else
                    if devm < dev
                        facHVHAN = fm;
                    else
                        break;
                    end
                end
            end

            disp('HVEmim');
            for j = 1:10
                j
                fp = facHVEmim + lr;
                fm = facHVEmim - lr;
                dev = 0;
                devp = 0;
                devm = 0;
                for k = 2:batch+1
                    dev = dev + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, facHVEmim * HVEmim, effini, keff);
                    devp  = devp + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, fp * HVEmim, effini, keff);
                    devm  = devm + lossf(data(1,k), data(2:size(data,1), 1), data(2:size(data,1), k), xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVH2O * HVHAN, fm * HVEmim, effini, keff);
                end
                if devp < dev
                    facHVEmim = fp;
                else
                    if devm < dev
                        facHVEmim = fm;
                    else
                        break;
                    end
                end
            end

            lr = lr * 0.1;
        end
    end

    factors = [fackh1, fackh2, fackc, facka, facHVH2O, facHVHAN, facHVEmim];
    newparas = paras .* factors
    [~, ~, ~, ~, Tc, ~] = solver(xmesh, tmesh, vindex, Tinf, Troom, ttotal, xtotal, fackh1 * kh1, fackh2 * kh2, fackc * kc, facka * ka, facHVH2O * HVH2O, facHVHAN * HVHAN, facHVEmim * HVEmim, effini, keff);
    t = 0:ttotal/tmesh:ttotal-ttotal/tmesh;
    plotref(t, Tc);
    
end