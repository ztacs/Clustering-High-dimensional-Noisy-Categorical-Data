function [chi, ind] = get_chi0_rev(point,col,row,cn,uni)
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

chi1 = 0;  % for r^* = -1
chi2 = 0;  % for r^* =-2
ind = 0;   % indicator for r-1 or r-2 be chosen
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
    ind = 0;
else
    for i = 1:cnn
      chi2 = chi2 + (point(col+i)-uni(i))*(point(col+i)-uni(i))/uni(i); 
      chi1 = chi2;
    end
        chi1 =chi1+(point(col+cnn+1)-uni(cnn+1))^2/uni(cnn+1);
    sum_uni2 = sum(uni(1:cnn));
    sum_uni1 = sum_uni2+uni(cnn+1);
    chi2 = chi2 +  (sum(point(col+1:col+cnn))-sum_uni2)...
         *(sum(point(col+1:col+cnn))-sum_uni2) / (row - sum_uni2);
     chi1 = chi1 + (sum(point(col+1:col+cnn+1))-sum_uni1)...
         *(sum(point(col+1:col+cnn+1))-sum_uni1) / (row - sum_uni1);
     if chi2pdf(chi1,cnn+1) < chi2pdf(chi2,cnn)
         chi = chi2;
         ind = 2;
     else
         chi = chi1;
         ind = 1;
     end
 end 