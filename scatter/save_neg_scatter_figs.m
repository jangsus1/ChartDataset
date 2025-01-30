load neg_scatters.mat

for c = 1:1:length(neg_scatters.target_corr_values)
    for exp = 1:1:size(neg_scatters.ys,2)
        figure('Position',[100 100 800 760]);% roughly the same height and width for scatter plot on my laptop
        scatter(neg_scatters.x,squeeze(neg_scatters.ys(c,exp,:)),80,[0 0 0],'filled')
        set(gca,'xticklabel',[] );
        set(gca,'yticklabel',[] );
        set(gca,'xtick',[] );
        set(gca,'ytick',[] );
        filename = ['neg_scatter_',num2str(c),'_',num2str(exp)];

        saveas(gcf,filename,'png')
        close all

    end
end
clear neg_scatters

