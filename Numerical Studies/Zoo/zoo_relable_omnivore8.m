% Cluster Zoo-herbivore data 
% by Spectral algorithm, K-modes, K-modes shuffle, HD vector and SpectralCAT. 

T =  readtable('W:\JASA\Github - JASA submit_Nov_2022\Numerical Studies\Zoo\zoo_relabel herbivore8.csv',...
     'ReadVariableNames',false);
zoo_omnivore=table2array(T);%The last column is the ture label;

for i=1:17
    tabulate(zoo_omnivore(:,i))
end;

% HD vector  
ccdv2_original_accmeasure(zoo_omnivore)

 for i=1:100
     i
 tic
 disp('Spectral')
  spec_zoo(i)=Spectral_method_unit_circle(8,zoo_omnivore,30,i);
 toc;

 tic
 disp('kmode_observed_replicate')
 kmodes_zoo(i)=kmode_observed_replicate(zoo_omnivore, 8, 30,i)
 toc
  
 tic
disp(' kmode_observed_replicate_shuffle_each_rep')
 kmodes_zoo_shuffle(i)=kmode_observed_replicate_shuffle_each_rep(zoo_omnivore, 8, 30,i);
 toc 
 
 tic
 disp('SpectralCAT')
spectralCAT_zoo(i)=spectralCAT(zoo_omnivore,8,30,i);
 toc;
 end
 
 
 min(spec_zoo)
 max(spec_zoo)
 mean(spec_zoo)
 std(spec_zoo)

 min(kmodes_zoo)
 max(kmodes_zoo)
 mean(kmodes_zoo)
 std(kmodes_zoo)
 
 min(kmodes_zoo_shuffle)
 max(kmodes_zoo_shuffle)
 mean(kmodes_zoo_shuffle)
 std(kmodes_zoo_shuffle)
 %for i=1:17
 %    tabulate(zoodata(:,i))
 %end
 min(spectralCAT_zoo)
 max(spectralCAT_zoo)
 mean(spectralCAT_zoo)
 std(spectralCAT_zoo)
 