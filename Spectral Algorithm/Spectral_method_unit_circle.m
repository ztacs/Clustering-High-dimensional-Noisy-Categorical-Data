function [Acc et idx  T  U S] =Spectral_method_unit_circle(r,data, replicate,ran) 
tic;
rng(ran);
data=data(:,any(~isnan(data)));%remove any column with all elments missing
n = length(data(:,1));%n: smaple size
 
m = length(data(1,:)) - 1;%redefine m: # of attributes

data = data(randperm(size(data,1)),:);%RANDONLY SHUFFLE ROWS;

 
R_hat =unit_circle_encoding(data);

%STEP 2 RANK R APPROXIMATION
[U,S,V] = svds(R_hat,r);

Pr_R_hat = U *S ; 

  
C = kmeans(Pr_R_hat,r,...
                      'Display','final','MaxIter',100,'Replicates',replicate);
            
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
if r<=8
  Acc= AccMeasure(T,idx);
   
else
%[crate com] = correctrate(T,idx);
Acc = correctrate(T',idx);%T' and idx are cloumn vector;
end
et=toc;
