% return unquie value of vector x
function y = myUnique(x)
  y = unique(x);
  if any(isnan(y))
    y(isnan(y)) = []; % remove all nans
    %y(end+1) = NaN; % add the unique one.
  end
end