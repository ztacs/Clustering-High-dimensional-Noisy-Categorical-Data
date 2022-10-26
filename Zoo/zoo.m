T =  readtable('W:\Multicategory clustering\zoodata\zoo.csv',...
     'ReadVariableNames',false);
zoo_UCI=table2array(T);
%Note: Zoo data on UCI is same as zoodata provided by JASA authors, but ordered differently. 


for i=1:17
    tabulate(zoo_UCI(:,i))
end;

%RESULTS IN PAPER/THESIS
ccdv2_original(zoo_UCI)%accuaracy rate: 0.9505
%The last column is the ture label;
%use zoodata provided by JASA authors
ccdv2_original(uniq_zoo_UCI)%accuaracy rate:0.6780

 for i=1:100
     i
     
     tic
 disp('spectralCAT')
 spectralCAT_zoo(i)=spectralCAT(zoo_UCI,7,30,i);
 toc;
 
 
 tic
 disp('Spectral')
 %spec_zoo(i-9999)=Spectral_method_unit_cirtcle_muticat_real_data(7,zoodata,30,i)
 spec_zoo(i)=Spectral_method_unit_circle(7,zoo_UCI,30,i);
 toc;
 
 %rng(1); 
 tic
 disp('kmode_observed_replicate')
 kmodes_zoo(i)=kmode_observed_replicate(zoo_UCI, 7, 30,i)
 toc
  
 tic
disp(' kmode_observed_replicate_shuffle_each_rep')
 kmodes_zoo_shuffle(i)=kmode_observed_replicate_shuffle_each_rep(zoo_UCI, 7, 30,i);
 toc 
 end
 
 min(spectralCAT_zoo)
 max(spectralCAT_zoo)
 mean(spectralCAT_zoo)
 std(spectralCAT_zoo)

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
 
 
 
 %Only include unique rows%
 %note: observations with same attribute values are in the same clusters
 uniq_zoo_UCI = unique(zoo_UCI,'rows');
 for i=1:100
     i
 tic
 disp('spectralCAT')
 spectralCAT_zoo(i)=spectralCAT(uniq_zoo_UCI,7,30,i);
 toc
 
  tic
 disp('Spectral')
 %spec_zoo(i-9999)=Spectral_method_unit_cirtcle_muticat_real_data(7,zoodata,30,i)
 spec_zoo(i)=Spectral_method_unit_circle(7,uniq_zoo_UCI,30,i);
 toc;
 
 %rng(1); 
 tic
 disp('kmode_observed_replicate')
 kmodes_zoo(i)=kmode_observed_replicate(uniq_zoo_UCI, 7, 30,i)
 toc
  
 tic
disp(' kmode_observed_replicate_shuffle_each_rep')
 kmodes_zoo_shuffle(i)=kmode_observed_replicate_shuffle_each_rep(uniq_zoo_UCI, 7, 30,i);
 toc 
 end
 
 


