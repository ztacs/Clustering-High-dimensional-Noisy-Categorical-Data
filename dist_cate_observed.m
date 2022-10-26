function distance = dist_cate_observed(a,b)
% purpose: calculate distance between two vector with distance defined by summation of 
%          distance of each attribute, where distance of attribute is the indicator 
%          function of non-equality.
% record of revisions:
%     date               programmer              description of change
% -----------        -----------------          ------------------------
% June 10,2003        Peng Zhang                 Original code
% 
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