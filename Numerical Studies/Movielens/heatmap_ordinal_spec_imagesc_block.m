  
function [et I ] =heatmap_ordinal_spec_imagesc_block( r,r2,data,ran, filename ) 
%missing is not normalized
tic;
rng(ran);
permmovie=randperm(size(data,2));
data = data(:,permmovie);%RANDONLY SHUFFLE columns-movies;

original_data=data; 
  
m = length(data(1,:));%m: # of movies
n = length(data(:,1));%n: smaple size
 
c_log_data_cat=data;
%c_log_data_cat=c_log_data_cat(:,any(~isnan(c_log_data_cat)));%remove any column with all elments missing
 
%cluster columns(movies)
c_log_data_cat_col=c_log_data_cat';
%R_hat_col =unit_circle_encoding(c_log_data_cat_col); 
R_hat_col =ordinal_encoding(c_log_data_cat_col); 

 
n2 = length(c_log_data_cat_col(:,1)); 
m2 = length(c_log_data_cat_col(1,:)); 
 
[U2,S2,V2] = svds(R_hat_col,r2);
  
Pr_R_hat_col = U2 *S2 ; 

C2 = kmeans(Pr_R_hat_col,r2,...
                      'Display','final','MaxIter',100,'Replicates',30);
  
 c_log_data_cat_col(:,m2+1)=C2;
  
u2=zeros(r2,m2+1);
for i =1:r2
u2(i, [1:m2+1])=mode(c_log_data_cat_col(c_log_data_cat_col(:, m2+1) == i, :));
end

for i=1:n2
    for j=1:r2
recluster2(i,j)=dist_cate_observed(c_log_data_cat_col(i,1:m2), u2(j, 1:m2));
    end
end
for i=1:n2
[M2,I2(i)] = min(recluster2(i,:));
end



%%%Cluster users;%%%
%R_hat =unit_circle_encoding(c_log_data_cat);
R_hat =ordinal_encoding(c_log_data_cat);

%STEP 2 RANK R APPROXIMATION
[U,S,V] = svds(R_hat,r);
  
Pr_R_hat = U *S ; 

C = kmeans(Pr_R_hat,r,...
                      'Display','final','MaxIter',100,'Replicates',30);
 
            
%m+2 column is the initial cluser label from K means;
c_log_data_cat(:,m+1)=C;
%define center basing on the initial cluser label;
%NOTE: mode() take the mode of nonmissings; when all are missing, then
%mode=NaN
%m+2 column is the initial cluser label from K means;
%ignore m+1 column in u
u=zeros(r,m+1);
for i =1:r
u(i, [1:m+1])=mode(c_log_data_cat(c_log_data_cat(:, m+1) == i, :));
end
 

%u_c =unit_circle_encoding(u, data);
%d = length(u_c(1,:));


for i=1:n
    for j=1:r
recluster(i,j)=dist_cate_observed(c_log_data_cat(i,1:m), u(j, 1:m));
    end
end
for i=1:n
[M,I(i)] = min(recluster(i,:));
end
I=transpose(I);
%next step: run AccMeasure.m to get accurate rate;
idx=I; %estimated cluster label
%tabulate(idx)
c_log_data_cat(:,m+1)=[];
data(:,m+1)=idx;
data_sort_row = sortrows(data,m+1);
row_index_sorted=data_sort_row(:, m+1);
data_sort_row(:, end)=[];
 
 




data_sort_row_col=data_sort_row';


data_sort_row_col(:,m2+1)=I2';

data_sort_row_col = sortrows(data_sort_row_col ,m2+1);
col_index_sorted=data_sort_row_col(:, m2+1);
data_sort_row_col(:, end)=[];

%data_sort_row_col=data_sort_row_col';

a=tabulate(row_index_sorted);
b=tabulate(col_index_sorted);
a(:,1)=[];
a(:,2)=[];
b(:,1)=[];
b(:,2)=[];

%Block matrix B;
B(1,1)=mean(data_sort_row_col(1: b(1)  ,1: a(1) ),'all','omitnan');
for i =2:r2 
    B(i,1)=mean(data_sort_row_col(sum(b(1:i-1))+1:sum(b(1:i)) , 1: a(1)),'all','omitnan');
end
for j=2:r
B(1,j)=mean(data_sort_row_col(1: b(1)  , sum(a(1:j-1))+1 : sum(a(1:j))),'all','omitnan');
end   
for i =2:r2
    for j=2:r
        
B(i,j)=mean(data_sort_row_col(sum(b(1:i-1))+1:sum(b(1:i)) , sum(a(1:j-1))+1 : sum(a(1:j))),'all','omitnan');
    end
end
%matrix based on Block matrix
A(1:b(1), 1:a(1))=B(1,1);


for i=2:r2
A(sum(b(1:i-1))+1:sum(b(1:i)), 1:a(1))=B(i,1);
end 

for j=2:r
A(1: b(1), sum(a(1:j-1))+1:sum(a(1:j)))=B(1,j);
end 


for i =2:r2
    for j=2:r
A(sum(b(1:i-1))+1:sum(b(1:i)), sum(a(1:j-1))+1:sum(a(1:j)))=B(i,j);
    end
end

%not include the NaN in calculating the block mean rating, so no need of the following code;
%for i =1:n2
%    for j=1:m2
%       if isnan(data_sort_row_col(i,j))==1  
%           data_sort_row_col(i,j)=0;
 %      end
 %   end
%end

%heatmap(data_sort_row,'GridVisible','off')
aa=tabulate(row_index_sorted);
bb=tabulate(col_index_sorted);

for i=1:m2
    x_label(i)=' ';
end
x_label=string(x_label);
 


%{
for i=1:m2
    if i==1 
        x_label(i)='1';
    elseif i==aa(1,2)+1 x_label(i)='2';
    elseif i==aa(1,2)+aa(2,2)+1 x_label(i)='3';
    else x_label(i)='';
    end
end
%}

for i=1:m2
    if i==1 
        x_label(i)='1';
    elseif i==aa(1,2)+1 x_label(i)='2';
    elseif i==aa(1,2)+aa(2,2)+1 x_label(i)='3';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+1 x_label(i)='4';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+1 x_label(i)='5';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+aa(5,2)+1 x_label(i)='6';
    else x_label(i)='';
    end
end

%{ 
for i=1:m2
    if i==1 
        x_label(i)='1';
    elseif i==aa(1,2)+1 x_label(i)='2';
    elseif i==aa(1,2)+aa(2,2)+1 x_label(i)='3';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+1 x_label(i)='4';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+1 x_label(i)='5';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+aa(5,2)+1 x_label(i)='6';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+aa(5,2)+aa(6,2)+1 x_label(i)='7';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+aa(5,2)+aa(6,2)+aa(7,2)+1 x_label(i)='8';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+aa(5,2)+aa(6,2)+aa(7,2)+aa(8,2)+1 x_label(i)='9';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+aa(5,2)+aa(6,2)+aa(7,2)+aa(8,2)+aa(9,2)+1 x_label(i)='10';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+aa(5,2)+aa(6,2)+aa(7,2)+aa(8,2)+aa(9,2)+aa(10,2)+1 x_label(i)='11';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+aa(5,2)+aa(6,2)+aa(7,2)+aa(8,2)+aa(9,2)+aa(10,2)+aa(11,2)+1 x_label(i)='12';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+aa(5,2)+aa(6,2)+aa(7,2)+aa(8,2)+aa(9,2)+aa(10,2)+aa(11,2)+aa(12,2)+1 x_label(i)='13';
    elseif i==aa(1,2)+aa(2,2)+aa(3,2)+aa(4,2)+aa(5,2)+aa(6,2)+aa(7,2)+aa(8,2)+aa(9,2)+aa(10,2)+aa(11,2)+aa(12,2)+aa(13,2)+1 x_label(i)='14';
    else x_label(i)='';
    end
end
 %}



for i=1:n2
    y_label(i)=' ';
end
y_label=string(y_label);
  

for i=1:n2
    if i==1 
        y_label(i)='1';
    elseif i==bb(1,2)+1 y_label(i)='2';
    elseif i==bb(1,2)+bb(2,2)+1 y_label(i)='3';
    elseif i==bb(1,2)+bb(2,2)+bb(3,2)+1 y_label(i)='4';
    elseif i==bb(1,2)+bb(2,2)+bb(3,2)+bb(4,2)+1 y_label(i)='5';
    elseif i==bb(1,2)+bb(2,2)+bb(3,2)+bb(4,2)+bb(5,2)+1 y_label(i)='6';
    else y_label(i)='';
    end
end

%h=imagesc( data_sort_row_col)
h=imagesc(A);
colormap('gray')
colorbar
xlabel('Viewer Clusters');
ylabel('Movie Clusters');
set(gca, 'YTick', [1:1:m] , 'YTickLabel', y_label)  
set(gca, 'XTick', [1:1:n] , 'XTickLabel', x_label) 

 
     
       savefilename = filename;
     fname = 'W:\JASA\Github - JASA submit_Nov_2022\Numerical Studies\Movielens\heatmap';
%Set figure size
    
    set(gcf, 'units', 'points', 'Position', [0 0 800 400])
 print(gcf,fullfile(fname, savefilename), '-dpng','-r300');  
 
 et=toc;  

 %Draw heatmap for unclustered data
%{
for i=1:n
    for j=1:m
       if isnan(original_data(i,j))==1 original_data(i,j)=0;
       end
    end
end
 
h1=heatmap(original_data','GridVisible','off')
 

 h1=imagesc(original_data')
colormap('gray')
colorbar
xlabel('Viewers');
ylabel('Movies');

for i=1:m2
    x1_label(i)=' ';
end
x1_label=string(x1_label);

  
for i=1:m2
    if i==1 
        x1_label(i)='1';
    elseif i==1000 x1_label(i)='1000';
    elseif i==2000 x1_label(i)='2000';
    elseif i==3000 x1_label(i)='3000';
    elseif i==4000 x1_label(i)='4000';
    elseif i==5000 x1_label(i)='5000';
    elseif i==6000 x1_label(i)='6000';
    else x1_label(i)='';
    end
end
 

for i=1:m
    y1_label(i)=' ';
end
y1_label=string(y1_label);
  

for i=1:m
    if i==1 
        y1_label(i)='1';
    elseif i==1000 y1_label(i)='1000';
    elseif i==2000 y1_label(i)='2000';
    elseif i==3000 y1_label(i)='3000';
    else y1_label(i)='';
    end
end
 
set(gca, 'YTick', [1:1:m] , 'YTickLabel', y1_label)  
set(gca, 'XTick', [1:1:n] , 'XTickLabel', x1_label) 

 
 
% Write to files
     %filename2='Heatmap_noclustering_permuted_column'  
       savefilename2 = filename2;
      
%Set figure size
  
    set(gcf, 'units', 'points', 'Position', [0 0 800 400])
 print(gcf,fullfile(fname, savefilename2), '-dpng','-r300');  
 %}