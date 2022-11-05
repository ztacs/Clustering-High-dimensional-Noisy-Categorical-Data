function [rate, co_clu] = correctrate(true_cluster,obs_cluster)
co_clu = []; %corresponding cluster
clu_val_true = unique(true_cluster);
clu_val_obs = unique(obs_cluster);
L = length(true_cluster);
correct = 0;
for i = 1:length(clu_val_true)
    max_pair = [0 0]';
    max_leng = 0;
    for j = clu_val_true'  % must be row vector
        j_index = find(true_cluster == j);
        temp = obs_cluster(j_index);
        for k = clu_val_obs'
            k_leng = length(find(temp == k));
            if k_leng > max_leng
                max_leng = k_leng;
                max_pair = [j k]';
                data_index = j_index;
            end
        end
        j_index = [];
    end
    clu_val_true = setdiff(clu_val_true, max_pair(1));
    clu_val_obs = setdiff(clu_val_obs, max_pair(2));
    %if true_cluster ~= []
    %    true_cluster(data_index) = [];
    %    obs_cluster(data_index) = [];
    %else 
    %    break;
    %end
    correct = correct + max_leng;
    co_clu = [co_clu max_pair];
    
    %%fix for cases when length(obs_cluster)<length(true_cluster);
    if length(clu_val_obs)==0
        break;
    end
    
end
rate = correct/L*100;
