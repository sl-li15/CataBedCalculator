function [] = plotpics(Tc, eff)
%     alpha=0.1*alphaH2O+0.5*alphaHAN+0.4*alphaEmim;
% 
%     subplot(2,2,1);
%     imagesc(alpha);
%     colorbar;
% 
%     subplot(2,2,2);
%     imagesc(alphaEmim);
%     colorbar;
%     
    subplot(2,2,2);
    imagesc(Tc);
    colorbar;
    xlabel('tmesh');
    ylabel('xmesh');
    
    subplot(2,2,4);
    plot(eff);
    xlabel('xmesh');
    ylabel('e_c');

%     subplot(2,2,4);
%     imagesc(T);
%     colorbar;

end

