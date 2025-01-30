load neg_scatters2

for c = 1:1:1
    for exp = 1:1:1
        figure('Position',[100 100 800 760]);% roughly the same height and width for scatter plot on my laptop
        scatter(neg_scatters.x,squeeze(neg_scatters.ys(c,exp,:)),80,[1 1 1],'filled')
        set(gca,'xticklabel',[] );
        set(gca,'yticklabel',[] );
        set(gca,'xtick',[] );
        set(gca,'ytick',[] );
        filename = ['empty_scatter'];

        saveas(gcf,filename,'png')
        close all

    end
end