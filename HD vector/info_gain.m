function [total, gain] = info_gain(true, cluster)
% Script file info_gain.m
% purpose: to compute the information gain defined as total entropy minus 
%          weighted subentropy. Since there is no ordering in computing 
%          entropy, I will sort the data and get the run length of each 
%          cluster to get the frequencies and then use entropy function to 
%          obtain the entropy.
% record of revisions:
%     date               programmer              description of change
% -----------        -----------------          ------------------------
% Nov 10,2003        Peng Zhang                 Original code
% 
% define variables:
% true      --  true cluster labels
% cluster   --  resultant cluster label obtained by the algorithm
% rlen      --  run length of true cluster


sorttrue = sort(true)';
% calculate the run length of the true
rlen = diff([0 find(sorttrue(1:end-1) ~= sorttrue(2:end)) length(sorttrue) ]);
norm = length(true);
fretrue = rlen / norm;
% total entropy
total = entropy(fretrue);

% ---------------------------------------------------------------------------
% calculate weighted subentropies
weighted = 0;
combin = [cluster true];
sorted = sortrows(combin);
truesort = sorted(:,2);
sortclus = sorted(:,1)';
% take the run length of sorted cluster
len = diff([0 find(sortclus(1:end-1) ~= sortclus(2:end)) length(sortclus) ]);
ind = cumsum(len);
addlen = [0 ind];

ens = [];
for i = 2:length(addlen)
    temclus = truesort(addlen(i-1) + 1:addlen(i));
    temsort = sort(temclus)';
    temrlen = diff([0 find(temsort(1:end-1) ~= temsort(2:end)) length(temsort)]);
    temfreq = temrlen / len(i-1);
    ens(i-1) = entropy(temfreq);
end
weight = len' / norm;
weighted = sum(weight' .* ens);
gain = total - weighted;
