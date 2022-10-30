function [chi, cnn] = get_chi0(point,col,row,cn,uni)
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
remain = point(col+2:col+cn+1) - uni(2:cn+1);
negpos = find(remain <= 0);
if isempty(negpos) % == []
    cnn = 1;
else
    cnn = negpos(1)-1;
end
if cnn == 0
    chi = 0;
else
    for i = 1:cnn
      chi = chi + (point(col+i)-uni(i))*(point(col+i)-uni(i))/uni(i); 
    end
    sum_uni = sum(uni(1:cnn));
    chi = chi +  (sum(point(col+1:col+cnn))-sum_uni)...
         *(sum(point(col+1:col+cnn))-sum_uni) / (row - sum_uni);
 end 