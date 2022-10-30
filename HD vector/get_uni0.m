function uni_distribution = get_uni(attri_size, row_no)
% Script file get_uni.m
% purpose: the function to generate the required "uniform" distribution,
%          If the first cell less than 1, put it 1 and others ui*(n-1)/(N-1)
%          where n is the number of data, N is product of attribute sizes
%          also the number of all the space position
% record of revisions:
%     date               programmer              description of change
% -----------        -----------------          ------------------------
% June 11,2003        Peng Zhang                 Original code
% June 17,2003        Peng Zhang                 Revised
% define variables:
% attri_size            -- the vector of length of each attribute values
% row_no                -- number of data
% uni_distribution      -- result to store the uniform distribution
% n                     -- the vector of length of each attribute values -1
% p                     -- number of attributes
% uni_size              -- uniform distribution number for one point per position except the first
% w                     -- cumulative sum of each iteration, the last one is ui
% s                     -- a medium variable to calculate w


% calculate the uniform distribution assume each position having one point
n = attri_size - 1;
p = length(n);
uni_size = ones(1,p);
w = ones(1,p);
s = ones(1,p);
for i = 1:p
    for j = i:p
        if j == 1
            w(1) = n(1);
        else
            t(j) = n(j)*s(j-1);
            w(j) = t(j) + w(j-1);
        end
        
    end
    uni_size(i) = w(p);
    s = w;
    w = zeros(1,p);
end
uni_distribution = [1 uni_size];

% the number of rows divide by uni_dis_ones to get the uniform distribution
    uni_distribution = uni_distribution * row_no / prod(attri_size);
