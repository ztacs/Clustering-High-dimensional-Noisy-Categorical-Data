function [entropy] = entropy(data)
entropy = - sum(data .* log2(data));