
%%%%%%%%%%%%%%%%%%%%% large largesoybean data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
T =  readtable('W:\JASA\Github - JASA submit_Nov_2022\Numerical Studies\soybean\soybean-large_missing999_no text_15 clusters_del lst 4 clusters.csv');
% The last column of T is the ture label;
largesoy=table2array(T);

%m: # of attributes
m_largesoy = length(largesoy(1,:))-1 
%n: # of subjects
n_largesoy = length(largesoy(:,1)) 
% # of clusters
num_cluster_largesoy=numel(unique(largesoy(:,36)))

%min. Num of categories and Max. Num. of categories. 
for i = 1:m_largesoy
    num_categories_largesoy(i)=numel(unique(largesoy(:,i)));
end
min_num_categories_largesoy=min(num_categories_largesoy)
max_num_categories_largesoy=max(num_categories_largesoy)




%%%%%%%%%%%%%%%%%%%%%% Small soybean data %%%%%%%%%%%%%%%%%%%%%
T =  readtable('W:\JASA\Github - JASA submit_Nov_2022\Numerical Studies\Soybean\Soybean_small_data.xlsx',...
     'ReadVariableNames',false);% The last column of T is the ture label;
soy=table2array(T);

%m: # of attributes
m_soy = length(soy(1,:))-1;
%n: # of subjects
n_soy = length(soy(:,1));
% # of clusters
num_cluster_soy=numel(unique(soy(:,36)))

%min. Num of categories and Max. Num. of categories. 
for i = 1:m_soy
    num_categories_soy(i)=numel(unique(soy(:,i)));
end
min_num_categories_soy=min(num_categories_soy)
max_num_categories_soy=max(num_categories_soy)


%%%%%%%%%%%%%%%%%%%%%% Zoo data %%%%%%%%%%%%%%%%%%%%%
T =  readtable('W:\JASA\Github - JASA submit_Nov_2022\Numerical Studies\Zoo\zoo.csv',...
     'ReadVariableNames',false);
zoo=table2array(T);%The last column is the ture label;

%m: # of attributes
m_zoo = length(zoo(1,:))-1 
%n: # of subjects
n_zoo = length(zoo(:,1))
% # of clusters
num_cluster_zoo=numel(unique(zoo(:,m_zoo+1)))

%min. Num of categories and Max. Num. of categories. 
for i = 1:m_zoo
    num_categories_zoo(i)=numel(unique(zoo(:,i)));
end
min_num_categories_zoo=min(num_categories_zoo)
max_num_categories_zoo=max(num_categories_zoo)

%%%%%%%%%%%%%%%%%%%%%%% unique Zoo data %%%%%%%%%%%%%%%%%%%%%%

zoo_unique= unique(zoo,'rows');
%m: # of attributes
m_zoo_unique = length(zoo_unique(1,:))-1 
%n: # of subjects
n_zoo_unique = length(zoo_unique(:,1))
% # of clusters
num_cluster_zoo_unique=numel(unique(zoo_unique(:,m_zoo_unique+1)))

%min. Num of categories and Max. Num. of categories. 
for i = 1:m_zoo_unique
    num_categories_zoo_unique(i)=numel(unique(zoo_unique(:,i)));
end
min_num_categories_zoo_unique=min(num_categories_zoo_unique)
max_num_categories_zoo_unique=max(num_categories_zoo_unique)



%%%%%%%%%%%%%%%%%%%%%%% Zoo-herbivore data %%%%%%%%%%%%%%%%%%%%%%
T =  readtable('W:\JASA\Github - JASA submit_Nov_2022\Numerical Studies\Zoo\zoo_relabel herbivore8.csv',...
     'ReadVariableNames',false);
zoo_herbivore=table2array(T);%The last column is the ture label;

%m: # of attributes
m_zoo_herbivore = length(zoo_herbivore(1,:))-1 
%n: # of subjects
n_zoo_herbivore = length(zoo_herbivore(:,1))
% # of clusters
num_cluster_zoo_herbivore=numel(unique(zoo_herbivore(:,m_zoo_herbivore+1)))

%min. Num of categories and Max. Num. of categories. 
for i = 1:m_zoo_herbivore
    num_categories_zoo_herbivore(i)=numel(unique(zoo_herbivore(:,i)));
end
min_num_categories_zoo_herbivore=min(num_categories_zoo_herbivore)
max_num_categories_zoo_herbivore=max(num_categories_zoo_herbivore)


%%%%%%%%%%%%%% mushroom data %%%%%%%%%%%%%%%
T =  readtable('W:\JASA\Github - JASA submit_Nov_2022\Numerical Studies\mushroom\mushroom.csv',...
     'ReadVariableNames',false);% The last column of T is the ture label;
mushroom=table2array(T);

%m: # of attributes
m_mushroom = length(mushroom(1,:))-1 
%n: # of subjects
n_mushroom = length(mushroom(:,1))
% # of clusters
num_cluster_mushroom=numel(unique(mushroom(:,m_mushroom+1)))

%min. Num of categories and Max. Num. of categories. 
for i = 1:m_mushroom
    num_categories_mushroom(i)=numel(unique(mushroom(:,i)));
end

min_num_categories_mushroom=min(num_categories_mushroom)
max_num_categories_mushroom=max(num_categories_mushroom)


