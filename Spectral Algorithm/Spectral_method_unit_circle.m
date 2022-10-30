function [Acc et idx  T  U S] =Spectral_method_unit_circle(r,data, replicate,ran) 
tic;
rng(ran);
data=data(:,any(~isnan(data)));%remove any column with all elments missing
n = length(data(:,1));%n: smaple size
 
%{ 
%add on 2/4/2019;
mm = length(data(1,:)) - 1;%m: # of attributes
%delete any column with only one category
data1=data(:,1:mm);
data1(isnan(data1))=0;%assign 0 to all NAN;
count=sum(diff(sort(data1))~=0) ; %count how many unique values in each collumn other than 0;
index_1 = find(count==1);
data(:,index_1) = []; %delete any column with only one category

%} 
m = length(data(1,:)) - 1;%redefine m: # of attributes

data = data(randperm(size(data,1)),:);%RANDONLY SHUFFLE ROWS;

 
R_hat =unit_circle_encoding(data);

%STEP 2 RANK R APPROXIMATION
[U,S,V] = svds(R_hat,r);

%random SVD
%[U,S,V] = rsvd(R_hat,r,0,2);not accurate
%[U,S,V] = rsvd(R_hat,r,2,2);
 
%[U,S,V] = svd(R_hat);
%Pr_R_hat = U(:,1:r)*S(1:r,1:r) ;    
Pr_R_hat = U *S ; 

  
C = kmeans(Pr_R_hat,r,...
                      'Display','final','MaxIter',100,'Replicates',replicate);
%C = kmeans(R_hat,r,...
 %                     'Display','final','MaxIter',100,'Replicates',replicate);

%C = kmeans(Pr_R_hat,r,...
 %                      'Display','final','Distance','cityblock','Replicates',replicate);

          
%[idx,C,sumd] = kmeans(Pr_R_hat,r,...
   %                   'Display','final','Replicates',replicate);
            
%m+2 column is the initial cluser label from K means;
data(:,m+2)=C;
%R_h_num = sortrows(R_h_num,m+2)

%define center basing on the initial cluser label;
%NOTE: mode() take the mode of nonmissings; when all are missing, then
%mode=NaN
%m+2 column is the initial cluser label from K means;
%ignore m+1 column in u
u=zeros(r,m+2);
for i =1:r
u(i, [1:m+2])=mode(data(data(:, m+2) == i, :));
end
u(:,m+1)=[];

%u_c =unit_circle_encoding(u, data);
%d = length(u_c(1,:));


for i=1:n
    for j=1:r
recluster(i,j)=dist_cate_observed(data(i,1:m), u(j, 1:m));
    end
end
for i=1:n
[M,I(i)] = min(recluster(i,:));
end
I=transpose(I);
%next step: run AccMeasure.m to get accurate rate;
idx=I; %estimated cluster label
T=transpose(data(:,m+1));%true cluster label

%Accurate rate;
%Acc=AccMeasure(T,idx)


if r<=8
  Acc= AccMeasure(T,idx);
   
else
%[crate com] = correctrate(T,idx);
Acc = correctrate(T',idx);%T' and idx are cloumn vector;
end
et=toc;
