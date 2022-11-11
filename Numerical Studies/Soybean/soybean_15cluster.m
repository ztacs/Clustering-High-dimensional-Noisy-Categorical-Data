% Cluster Soybean-large data  
% by Spectral algorithm, K-modes, K-modes shuffle, HD vector and SpectralCAT.

T =  readtable('W:\JASA\Github - JASA submit_Nov_2022\Numerical Studies\Soybean\soybean-large_missing999_no text_15 clusters_del lst 4 clusters.csv');
% The last column of T is the ture label;
B=table2array(T);
for i = 1:290
    for j = 1:36         
             if B(i,j) == 999
                 B(i,j) =NaN;
             end
    end
end

%HD vector
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


 



