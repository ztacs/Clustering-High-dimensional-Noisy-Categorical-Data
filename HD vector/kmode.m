function [ crate, pgain, obs_cluster] = kmode(data, k)

true_cluster = data(:,end);
data(:,end) = 0;
m = length(data(1,:)) - 1;
mode = data(1:k,1:m) ;
while 1
    indicator = 1;
    for i = 1:length(data(:,1))
        d = [];
        for j = 1:k
            d = [d dist_cate(data(i,1:m), mode(j,1:m))];
        end
        [md ind] = min(d);
        indicator = indicator & (ind == data(i,end));
        data(i, end) = ind;
        cluster = data(find(data(:,end) == ind), :);
        mode(ind,:) = get_mode0(cluster(:,1:m));
    end
    if indicator == 1
        break;
    end
end
obs_cluster = data(:,end);
%result = [data true_cluster];
[total gain] = info_gain(true_cluster, obs_cluster);
pgain = gain/total;
[crate com] = correctrate(true_cluster, obs_cluster);
