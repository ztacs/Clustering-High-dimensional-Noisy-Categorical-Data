function [chi, cnn] = get_chi1_rev(point,row,uni)
% purpose: the function to get the chi-square value. I only calculate first cn
%          column which I think will determine the difference between a cluster
%          and the uniform distribution. The rest values are discarded, instead
%          I minimize the chi w.r.t the restriction that summation of rest value
%          equals to N-x.
% record of revisions:
%     date               programmer              description of change
% -----------        -----------------          ------------------------
% June 11,2003        Peng Zhang                 Original code
% 
% define variables:
% point                -- data point that I want to calculate the chi value
% col                  -- number of attribute
% row                  -- number of data point
% cn                   -- number of attribute that will differ cluster from uniform
% uni                  -- uniform distribution of a position that having points
% sum_uni              -- summation of first cn cells of uniform distribution

chi = 0;
%if point(col+1) == 0
%    uni = u;
%else
%    uni = uc;
%end
remain = point(3:end) - uni(3:end);
negpos = find(remain <= 0);
if isempty(negpos)  % == []
    cnn = 1;
else
    cnn = negpos(1) - 1;
end
if cnn == 0
    chi = 0;
else
    for i = 1:cnn+1
       chi = chi + (point(i)-uni(i))*(point(i)-uni(i))/uni(i); 
    end
    sum_uni = sum(uni(1:cnn+1));
    chi = chi +  (sum(point(1:cnn+1))-sum_uni)...
        *(sum(point(1:cnn+1))-sum_uni) / (row - sum_uni);
end