for b = 1:1:2
    for exp = 1:1:4
        img_name = ['x',num2str(b),num2str(exp),'.png'];
        x_label_matrix(:,:,:,b,exp)=imread(img_name); 
    end
end
save('x_label_matrix.mat','x_label_matrix')

for b = 1:1:2
    for exp = 1:1:4
        img_name = ['y',num2str(b),num2str(exp),'.png'];
        y_label_matrix(:,:,:,b,exp)=imread(img_name); 
    end
end
save('y_label_matrix.mat','y_label_matrix')