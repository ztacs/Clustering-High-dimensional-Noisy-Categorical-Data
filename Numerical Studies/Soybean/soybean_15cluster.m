 
%GENERATE DATASET with 15 clusters and some missing in cluster 4
% The last column of T is the ture label;
T =  readtable('W:\Multicategory clustering\Soybean data\soybean-large_missing999_no text_15 clusters_del lst 4 clusters.csv');

B=table2array(T);
for i = 1:290
    for j = 1:36         
             if B(i,j) == 999
                 B(i,j) =NaN;
             end
    end
end
ccdv2(B) 
%ans =
 %   0.4379

uniq_soy_15 = unique(B(:,1:35),'rows');


 for i=1:100
     i
 tic
  disp('SpectralCAT')
 spectralCAT_soybean15(i)=spectralCAT(B,15,30,i);
 
 disp('Spectral')
 spec_soybean15(i)=Spectral_method_unit_circle(15,B,30,i);
 toc;
 
 tic
disp('kmode_observed_replicate')
 kmodes_soybean15(i)=kmode_observed_replicate(B, 15, 30,i)
 kmodes_soybean15_shuffle(i)=kmode_observed_replicate_shuffle_each_rep(B,15,30,i);
 toc
  
  
 end
 
min(spectralCAT_soybean15)
 max(spectralCAT_soybean15)
 mean(spectralCAT_soybean15)
 std(spectralCAT_soybean15) 

min(kmodes_soybean15)
max(kmodes_soybean15)
mean(kmodes_soybean15)
std(kmodes_soybean15)

min(kmodes_soybean15_shuffle)
max(kmodes_soybean15_shuffle)
mean(kmodes_soybean15_shuffle)
std(kmodes_soybean15_shuffle)

min(spec_soybean15)
max(spec_soybean15)
mean(spec_soybean15)
std(spec_soybean15)


%GENERATE DATA NO MISSING
soybean_large_nomiss=B;
soybean_large_nomiss(any(isnan(soybean_large_nomiss), 2), :) = [];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i=1:100
     i
 tic
 disp('Spectral')
 spec_soybean15_nomiss(i)=Spectral_method_unit_cirtcle_muticat_real_data(15,soybean_large_nomiss,30,i)
 toc;
 
 tic
disp('kmode_observed_replicate')
 kmodes_soybean15_nomiss(i)=kmode_observed_replicate(soybean_large_nomiss, 15, 30,i)
 kmodes_soybean15_shuffle_nomiss(i)=kmode_observed_replicate_shuffle_each_rep(soybean_large_nomiss,15,30,i);
 toc
  
  
 end
 
 

min(kmodes_soybean15_nomiss)
max(kmodes_soybean15_nomiss)
mean(kmodes_soybean15_nomiss)
std(kmodes_soybean15_nomiss)

min(kmodes_soybean15_shuffle_nomiss)
max(kmodes_soybean15_shuffle_nomiss)
mean(kmodes_soybean15_shuffle_nomiss)
std(kmodes_soybean15_shuffle_nomiss)

min(spec_soybean15_nomiss)
max(spec_soybean15_nomiss)
mean(spec_soybean15_nomiss)
std(spec_soybean15_nomiss)

 



