function [rate, co_clu] = correctrate(true_cluster,obs_cluster)
% Script file cate_clus.m
% purpose: the main program of the project. It implement a new algorithm for clustering 
%          categorical data. It mainly comprises manipulation of the original data, which
%          is done by function expend.m, calculation of the number of neighorhood of each
%          point, which is done by function neig.m and the part of determine clusters, which
%          is done by sign.m.
% record of revisions:
%     date               programmer              description of change
% -----------        -----------------          ------------------------
% June 15,2003        Peng Zhang                 Original code
% 
% define variables:
% m           -- the length of the row of the data
% n           -- number of points in the data set
% prototype   -- a cell array to store the values of each attribute
% tem         -- the data with unique rows of original data
% nn          -- length of the unique original data
% nw          -- length of working data
% temp        -- temporary data
% working     -- returned working data
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
end
rate = correct/L;
