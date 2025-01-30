%% pos1
for c = 1:1:10
    for exp = 1:1:10
        img_name = ['pos_scatter_',num2str(c),'_',num2str(exp),'.png'];
        pos_scatter_matrix(:,:,:,c,exp)=imread(img_name); 
    end
end
save('pos_scatter_matrix.mat','pos_scatter_matrix')
clear all

%% neg
for c = 1:1:10
    for exp = 1:1:10
        img_name = ['neg_scatter_',num2str(c),'_',num2str(exp),'.png'];
        neg_scatter_matrix(:,:,:,c,exp)=imread(img_name); 
    end
end
save('neg_scatter_matrix.mat','neg_scatter_matrix')
clear all

%% empty
for c = 1:1:1
    for exp = 1:1:1
        img_name = ['empty_scatter.png'];
        empty_scatter_matrix(:,:,:)=imread(img_name); 
    end
end
save('empty_scatter_matrix.mat','empty_scatter_matrix')
clear all