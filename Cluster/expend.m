function appendant = expend(original)
% purpose: generate the expended data by adding all the positions which have distance 1 to 
%          the existing points. The expended data will be used to calculate the neighorhood
%          number and the corresponding statistic to determine the significance of clusters.
% record of revisions:
%     date               programmer              description of change
% -----------        -----------------          ------------------------
% June 11,2003        Peng Zhang                 Original code
% 
% define variables:
% original              -- the data set
% appendant             -- the returned appending data
% m                     -- number of column
% nn                    -- number of points in the data set
% uni_ori               -- data set without repetition
% tem                   -- temporary data
% working               -- temporary data


% firstly get the sets of attribute values and lengths of the sets

m = length(original(1,:));
for i = 1:m
    prototype{i} = unique(original(:,i));
end

uni_ori = unique(original,'rows');
tem = unique(original,'rows');
nn = length(uni_ori(:,1));
% generate all possible rows which deviate a row with 1, check whether it exists in the 
% original data, if not append it to the end and assign -1 to the cluster status

for j = 1:nn
    for k = 1:m
        for ii = setdiff(prototype{k},uni_ori(j,k))'
            new = uni_ori(j,:);
            new(k) = ii;
            tem = [tem;new];
        end
    end
    working = setdiff(tem, uni_ori, 'rows');
end

nw = length(working(:,1));
appendant = [working zeros(nw,1)];
% temp = [uni_ori zeros(nn,1)];
% working = [temp;working];
            