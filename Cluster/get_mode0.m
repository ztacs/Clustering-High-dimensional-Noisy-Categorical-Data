function mode = get_mode0(data)
% the purpose is to obtain mode(s) of the data set, by choosing most frequent values of each column
mode = [];
for i = 1: length(data(1,:))
    sort_col = sort(data(:,i))';
    run_length = diff([ 0 find(sort_col(1:end-1) ~= sort_col(2:end)) length(sort_col) ]);
    uni_col = unique(sort_col);
    [val ind] = max(run_length);
    %ind = find(run_length == val);
    mode(i) = uni_col(ind);
end