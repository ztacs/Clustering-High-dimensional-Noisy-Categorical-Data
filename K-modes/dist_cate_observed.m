function distance = dist_cate_observed(a,b)

% define variables:
% a           -- vector a
% b           -- vector b
% distance    -- returned distance between a and b
% 
% check whether a and b have the same length, if not set distance -1
if length(a) ~= length(b)
    distance = -1;
else
    distance = 0;
    for i = 1:length(a)
        if (isnan(a(i))==0 & isnan(b(i))==0) & (a(i)~=999 & b(i)~=999)
        distance = distance + (a(i) ~= b(i));
        end
    end
end