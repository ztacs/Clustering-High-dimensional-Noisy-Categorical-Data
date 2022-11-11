%data clustering using K-modes shuffle algorithm
%   data: data to be clustered; the last column is the ground truth clustering label
%   k: number of clusters
%   replicate: Number of times to run the algorithm to reduce the dependency of K-modes on the choice of the initial modes
%   ran: random seed
function [ crate, et, accrate, obs_cluster] = kmode_observed_replicate_shuffle_each_rep(data, k, replicate,ran)
tic;
rng(ran);
data=data(:,any(~isnan(data)));%remove any column with all elments missing

m = length(data(1,:)) - 1;
n = length(data(:,1));
cat_value_pre=[];

for j=1:m
    u=(myUnique(data(:,j)))';%u: row vector, unique values of jth attribute
    cat_value=horzcat(cat_value_pre,u);%connect unique values of all attributes in one row.
    cat_value_pre=cat_value;
    cat(j)=length(u);%number of categorie of jth attribute
end
 
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
 
%%%%%%%%%%%%%%%%%
data = data(randperm(size(data,1)),:);%RANDONLY SHUFFLE ROWS;
true_cluster(:, rep) = data(:,m+1);
mode = data(1:k,1:m) ;
%cen=randperm(n,k);
%for ii=1:k
%   mode(ii,:)= data(cen(ii),1:m) ;
%end


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
        
        indicator = indicator & (ind == data(i,m+1+rep));
         
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
obs_cluster(:,rep) = data(:,m+1+rep);
end
[mdist index] = min(dist);
 
%obs_cluster = obs_cluster(:,index);
  
if k<=8
  crate= AccMeasure(true_cluster(:,index), obs_cluster(:,index));
  %for i=1:replicate
  %    accrate(i)=AccMeasure(true_cluster(:,i), obs_cluster(:,i));
  %end
else
[crate com] = correctrate(true_cluster(:,index), obs_cluster(:,index));
 % for i=1:replicate
  %    accrate(i)=correctrate(true_cluster(:,i), obs_cluster(:,i));
  %end
end
et=toc;
