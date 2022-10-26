%function [result,uni] = cate_clus1(data)
%function [correct_cn,cluster_center,com] = cate_clus17_try(data,mode)
function [correct_cn,cluster_center,cluster_all, total, pgain] = ccdv2_original(data)
%function uni = cate_clus17_try5(data)
% Script file cate_clus.m
% purpose: the main program of the project. It implement a new algorithm for clustering 
%          categorical data. It mainly comprises manipulation of the original data, which
%          is done by function expend.m, calculation of the number of neighorhood of each
%          point, which is done by function neig.m and the part of determine clusters, which
%          is done by sign.m.
% record of revisions:
%     date               programmer              description of change
% -----------        -----------------          ------------------------
% June 11,2003        Peng Zhang                 Original code
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

% sort data according to first column make it unique and find the number of each row
% and append to each row.
%cn = 10;  % column number to be considered as cluster
%cn = 7;
true_cluster = data(:,end);
correct = [];  % store correct rate from 1 to cn
data(:,end) = [];
m = length(data(1,:));
attri_size = zeros(1,m);
for i = 1:m
    prototype{i} = unique(data(:,i));
    attri_size(i) = length(prototype{i});
end
squeeze_index = find(attri_size == 1);
data(:,squeeze_index) = [];
ori = data;
sizeofdata=size(ori);
% determine cn. by using average distance of the whole data set.
%cn = round(get_avdis(data));
M = size(data);
%radius = round(cn * (1 - cn / M(2))) + 1;
%radius = round((cn + 1)/2);
%radius = [7 7 7 7 7 6 6];
%radius = [3 2   3 3 2 3 3  3 3];
%radius = [2 2 2 2 2 2 2 2 2 2 2];
attri_size(squeeze_index) = [];
data_sort = sortrows(data);
diff_array = data_sort(1:end-1,:) - data_sort(2:end,:);
repeat_index = [];
for i = 1:M(1)-1
    equal_status = 0;
    for j = 1:M(2)
        equal_status = equal_status + (diff_array(i,j) ~= 0);
    end
    if equal_status ~= 0
       repeat_index = [repeat_index i];
    end
end
repeat_index = [repeat_index M(1)];
unique_index = diff([0 repeat_index]);
data_uni = unique(data_sort,'rows');
%data_uni = data_sort(cumsum(unique_index),:);
data_with_frequency = [data_uni unique_index'];
% calculate the testing statistic and look for the point which has the biggest value
%add = expend(ori);
%ss = length(add(:,1))
%data_and_add = [data_with_frequency;add];
%data_and_add = data_with_frequency;
if length(data_uni(:,1))/prod(attri_size) <  1;%.00001  %change here
    add = expend(ori);
    ss = length(add(:,1));
    data_and_add = [data_with_frequency;add];
else
    data_and_add = data_with_frequency;
end

m = length(data_uni(1,:));
n = length(data_and_add(:,1));
%cn = round(M(2)/2);
cn = M(2);
working = [data_and_add zeros(n,cn+2)];
uni = get_uni0(attri_size,M(1));
%uni'
%uni1 = get_uni(attri_size,M(1));
indicator = 1;
cluster = 1;
cluster_center = [];
%uni = gen_uni_boot(prototype,M,200,cn);
%sum_uni = M(1) - sum(uni(1:cn));  % summation of ui from 4 to p
%time = [6 6  6 6 6];
%time = [3 4 3 3 3 3 3 3 4];
indicator = 1;
while 1   
    sw = size(working);
    for i = 1:sw(1)
        for j = 1: length(data_with_frequency(:,1))
            d = dist_cate(working(i,1:m), data_with_frequency(j,1:m));
            for k = 1:cn
                if d == k
                    working(i,M(2)+k+1) = working(i,M(2)+k+1) + data_with_frequency(j,M(2)+1);
                    break;
                end
            end
        end
    end

    mmind=[];
    for i = 1:sw(1)
        [chi mind] = get_chi0_rev1(working(i,:),M(2),M(1),cn,uni);
        %[chi mind] = get_chi1(working(i,M(2)+1:M(2)+cn+1),M(1),uni); get_chi1_rev(cds(i,:),M(1),uni)
        working(i,m+cn+1) = chi;
        mmind=[mmind;mind];
        %mind
        %if sum(working(i,m+1:m+cn)) <= sum(uni(1:cn))
        %    working(i,m+cn+1) = -chi;
        %end
    end
    [max_chi max_ind] = max(working(:,m+cn+1));
    r0=mmind(max_ind);
    repe= find(working(:,m+cn+1)>=max_chi/2);
        %aa=working(repe,1:end-2)
    if max_chi == 0
        break;
    end
    center = working(max_ind,1:m+1);
    %working(max_ind,m+1:end-4)
    centercd = working(max_ind,m+1:m+cn)';
    centertem=working(max_ind,1:end-3);
    mindd = mmind(max_ind);
    cdtem = centercd(1:end-1) - centercd(2:end);
    if indicator == 1
        for i = 2:cn-1
            if centercd(i) < centercd(i - 1) & centercd(i) < centercd(i + 1)
                radius0 = i - 1;
                break;
            end
        end
        %rpos = find(cdtem < 0);
        %radius0 = rpos(1);
        radius = radius0;
    elseif centercd(radius0) >= centercd(radius0+1)
       radius = radius0;
   elseif (centercd(radius0 - 1) - centercd(radius0)) >= 2
        radius = radius0 -1;
    else
        radius = radius0;
    end
    center(m+2) = cluster;
    modetf = ismember(data_uni, center(1:end-2),'rows');
    modeind = find(modetf);
    %max_chi
    %chi2inv(.95,m)
    if max_chi >= chi2inv(.95,m) %& indicator < 10
        % determine the radius of this cluster
        for ii = 1:sw(1)
            if dist_cate(center(1:m),working(ii,1:m)) <= radius%(indicator)%5%time(indicator) % the criteria of a cluster is 2 temporarily
                working(ii,m+cn+2) = cluster;
            else
                working(ii,m+cn+2) = 0;
            end
        end
    else
        break;
    end
    real_size = size(data_with_frequency);
    cluster = cluster + 1;
    cluster_center = [cluster_center;center];
    clu_index1 = find(working(1:real_size(1),m+cn+2));
    clu_index = find(working(1:sw(1),m+cn+2));
    working(clu_index,:) = [];
    data_with_frequency(clu_index1,:) = [];
    working(:,m+2:end) = 0;
    %size(working)
    indicator = indicator + 1;
end
for i = 1:length(ori(:,1))
    dd = [];
    for j = 1:length(cluster_center(:,1))
        dd = [dd dist_cate(ori(i,1:m),cluster_center(j,1:m))];
    end
    [min_dis min_index] = min(dd);
    ori(i,m+1) = cluster_center(min_index,end);
end
% run-length decoding
%L = cumsum([1 unique_index]);
%k = zeros(1, L(end)-1);
%k(L(1:end-1)) = 1;
%v = data_uni(:,end);
cluster_all = ori(:,end);
result = [true_cluster cluster_all];
[total gain] = info_gain(true_cluster, cluster_all);
pgain = gain/total;
%data_sort = [data_sort cluster_all true_cluster];
%result = data_sort;
[correct_cn com] = correctrate(true_cluster, cluster_all);
%result = uni;