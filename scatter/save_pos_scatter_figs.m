load pos_scatters.mat

for c = 1:1:length(pos_scatters.target_corr_values)
    for exp = 1:1:size(pos_scatters.ys,2)
        figure('Position',[100 100 800 760]);% roughly the same height and width for scatter plot on my laptop
        scatter(pos_scatters.x,squeeze(pos_scatters.ys(c,exp,:)),80,[0 0 0],'filled')
        set(gca,'xticklabel',[] );
        set(gca,'yticklabel',[] );
        set(gca,'xtick',[] );
        set(gca,'ytick',[] );
        filename = ['pos_scatter_',num2str(c),'_',num2str(exp)];

        saveas(gcf,filename,'png')
        close all

    end
end
clear pos_scatters

