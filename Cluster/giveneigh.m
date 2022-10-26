function neighbor = giveneigh(point,prototype)
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

m = length(point) -1;

tem = [];
    for k = 1:m
        for ii = setdiff(prototype{k},point(k))'
            new = point;
            new(k) = ii;
            tem = [tem;new];
        end
    end
neighbor = tem;
% temp = [uni_ori zeros(nn,1)];
% working = [temp;working];
            