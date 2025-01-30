clear all
rng(1);
x = normrnd(0,1,20,1);

%% first for baseline task
numExps = 10;
target_corr_values = [0.9:-.1:0];
error_margin = 0.05;
current_noise_level = 0.01;
noise_level_increment = 0.01;

ys = nan(length(target_corr_values),numExps,20);
corr_values = zeros(length(target_corr_values),numExps);
for c = 1:1:length(target_corr_values)
    current_corr_target = target_corr_values(c);
    for exp = 1:1:numExps
        acceptable = 0;
        while acceptable == 0
            temp_y = x*1+normrnd(0,current_noise_level,20,1);
            temp_corr = corr(x,temp_y)
            if abs(temp_corr-current_corr_target)<=error_margin
                ys(c,exp,:)=temp_y;
                corr_values(c,exp)=temp_corr;
                acceptable = 1;
            elseif temp_corr>current_corr_target %then increase noise
                current_noise_level = current_noise_level+noise_level_increment;
            elseif temp_corr<current_corr_target %then reduce noise
                current_noise_level = current_noise_level-noise_level_increment;
            end
        end
    end
end

pos_scatters.target_corr_values = target_corr_values(10:-1:1);
pos_scatters.x = x;
pos_scatters.ys = ys(10:-1:1,:,:);
pos_scatters.corr_values = corr_values(10:-1:1,:);

save('pos_scatters.mat','pos_scatters')
clear pos_scatters;

