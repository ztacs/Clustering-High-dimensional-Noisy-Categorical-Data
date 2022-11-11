 
% Cluster small soybean data  
% by Spectral algorithm, K-modes, K-modes shuffle, HD vector and SpectralCAT.
 
T =  readtable('W:\JASA\Github - JASA submit_Nov_2022\Numerical Studies\Soybean\Soybean_small_data.xlsx',...
     'ReadVariableNames',false);% The last column of T is the ture label;
soy=table2array(T);

%HD vector
ccdv2(soy)%accuracy:1


%all rows in soy are unique;
uniq_soy = unique(soy(:,1:35),'rows');

 for i=1:100
     i
     
     disp('SpectralCAT')
 spectralCAT_soy47(i)=spectralCAT(soy,4,30,i);
 
 disp('Spectral')
 spec_soy47(i)=Spectral_method_unit_circle(4,soy,30,i);
 
 
 disp('kmode_observed_replicate')
 kmodes_soy47(i)=kmode_observed_replicate(soy, 4, 30,i)
 toc
  
disp('kmode_observed_replicate_shuffle')
 kmodes_soy47_shuffle(i)=kmode_observed_replicate_shuffle_each_rep(soy, 4, 30,i);

 end
 
 min(spectralCAT_soy47)
 max(spectralCAT_soy47)
 mean(spectralCAT_soy47)
 std(spectralCAT_soy47)
 
 min(spec_soy47)
 max(spec_soy47)
 mean(spec_soy47)
 std(spec_soy47)

 
 min(kmodes_soy47)
 max(kmodes_soy47)
 mean(kmodes_soy47)
 std(kmodes_soy47)
 
  min(kmodes_soy47_shuffle)
 max(kmodes_soy47_shuffle)
 mean(kmodes_soy47_shuffle)
 std(kmodes_soy47_shuffle)
