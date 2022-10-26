%function [ crate,accrate, pgain, obs_cluster] = kmode_observed_replicate(data, k, replicate)
function [ crate,et,accrate, obs_cluster] = kmode_observed_replicate(data, k, replicate,ran)
%k: # of clusters;
tic;
rng(ran);
data=data(:,any(~isnan(data)));%remove any column with all elments missing
%8/23
data = data(randperm(size(data,1)),:); 

true_cluster = data(:,end);
%data(:,end) = 0;
m = length(data(1,:)) - 1;
n = length(data(:,1));
cat_value_pre=[];

for j=1:m
    u=(myUnique(data(:,j)))';%u: row vector, unique values of jth attribute
    cat_value=horzcat(cat_value_pre,u);%connect unique values of all attributes in one row.
    cat_value_pre=cat_value;
    cat(j)=length(u);%number of categorie of jth attribute
end


%cen=randperm(n-k,replicate);%randperm returns nunique numbers;
%data = data(randperm(size(data,1)),:);%RANDONLY SHUFFLE ROWS;
for rep=1:replicate
    data(:,m+1+rep)=0;
end
for i=1:replicate
    dist(i)=0;
end

for rep=1:replicate
    for i=1:k
        for j=1:sum(cat)
        cat_count(i,j)=0; 
        end
    end
%mode = data(cen(rep)+1:cen(rep)+k,1:m) ;
%8/23
cen=randperm(n,k);
for ii=1:k
   mode(ii,:)= data(cen(ii),1:m) ;
end
%%%%%%%%%%%%%%%%%
%data = data(randperm(size(data,1)),:);%RANDONLY SHUFFLE ROWS;
%mode = data(1:k,1:m) ;
iteration=0;
while 1
    iteration=iteration+1;
    %tic
    indicator = 1;
    for i = 1:length(data(:,1))
        d = [];
        for j = 1:k
            d = [d dist_cate_observed(data(i,1:m), mode(j,1:m))];
        end
        [md ind] = min(d);
        %indicator = indicator & (ind == data(i,end));
        indicator = indicator & (ind == data(i,m+1+rep));
        %data(i, end) = ind;
        if data(i, m+1+rep) ~= ind 
            old=data(i, m+1+rep);
            data(i, m+1+rep) = ind;
            %UPDATE the NEW cluster MODE of subject i
            %cluster = data(find(data(:,m+1+rep) == ind), :);
            %mode1(ind,:) = get_mode0(cluster(:,1:m));   
            for h=1:cat(1)
                if data(i,1)==cat_value(h)
                    %cat_count: list count of each category value of each
                    %attribute
                    cat_count(ind,h)=cat_count(ind,h)+1;
                    if old ~= 0 
                    cat_count(old,h)=cat_count(old,h)-1;
                    end
                end
            end
            for j=2:m
                for h=sum(cat(1:j-1))+1:sum(cat(1:j))
                    if data(i,j)==cat_value(h)
                    cat_count(ind,h)=cat_count(ind,h)+1;
                         if old ~= 0 
                         cat_count(old,h)=cat_count(old,h)-1;    
                         end
                    end
                end
            end
            [mv index]=max(cat_count(ind,1:cat(1)));
            mode(ind,1)=cat_value(index);
            if old ~= 0
            [mv_old index_old]=max(cat_count(old,1:cat(1)));
            mode(old,1)=cat_value(index_old);
            end
            for j=2:m
            [mv index]=max(cat_count(ind,sum(cat(1:j-1))+1:sum(cat(1:j))));
            mode(ind,j)=cat_value(sum(cat(1:j-1))+index);
                if old ~= 0
                [mv_old index_old]=max(cat_count(old,sum(cat(1:j-1))+1:sum(cat(1:j)))); 
                mode(old,j)=cat_value(sum(cat(1:j-1))+index_old);
                end
            end
            %UPDATE the OLD cluster MODE of subject i
           %if old ~= 0 
           % cluster_old = data(find(data(:,m+1+rep) == old), :);
          % mode1(old,:) = get_mode0(cluster_old(:,1:m)); 
          %  end
        end
   end
    %toc
   % indicator
    %correctrate(true_cluster, data(:,m+1+rep))
    if indicator == 1
        for i = 1:n
        dist(rep)= dist(rep)+ dist_cate_observed(data(i,1:m), mode(data(i,m+1+rep),1:m)) ;
        end
     break;
    end
end

end
[mdist index] = min(dist);
%obs_cluster = data(:,end);
obs_cluster = data(:,m+1+index);
%result = [data true_cluster];
%[total gain] = info_gain(true_cluster, obs_cluster);
%pgain = gain/total;
if k<=8
  crate= AccMeasure(true_cluster, obs_cluster);
  %for i=1:replicate
    %  accrate(i)=AccMeasure(true_cluster, data(:, m+1+i));
  %end
else
[crate com] = correctrate(true_cluster, obs_cluster);%true_cluster and obs_cluster are column vectors;
    %for i=1:replicate     
    %accrate(i)=correctrate(true_cluster, data(:, m+1+i));
    %end
end
et=toc;
