  
% The last column of T is the ture label;
 
T =  readtable('W:\Multicategory clustering\Soybean data\Soybean_small_data.xlsx',...
     'ReadVariableNames',false);
soy=table2array(T);
%Code used in paper/thesis
%ccdv2_original(soy) %accuracy:1
ccdv2(soy)%accuracy:1


%all tows in soy are unique;

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
 
 %{
 tic
 disp('Spectral')
 spec_soyJASA(i)=Spectral_method_unit_circle(4,soydata,30,i)
 toc;
 
 tic
 disp('kmode_observed_replicate')
 kmodes_soyJASA(i)=kmode_observed_replicate(soydata, 4, 30,i)
 toc
 end
 
 min(spec_soyJASA)
 max(spec_soyJASA)
 mean(spec_soyJASA)
 std(spec_soyJASA)
 %}
min(spectralCAT_soy47)
 max(spectralCAT_soy47)
 mean(spectralCAT_soy47)
 std(spectralCAT_soy47)
 
 min(spec_soy47)
 max(spec_soy47)
 mean(spec_soy47)
 std(spec_soy47)

 %min(kmodes_soyJASA)
 %max(kmodes_soyJASA)
 %mean(kmodes_soyJASA)
 %std(kmodes_soyJASA)

 min(kmodes_soy47)
 max(kmodes_soy47)
 mean(kmodes_soy47)
 std(kmodes_soy47)
 
  min(kmodes_soy47_shuffle)
 max(kmodes_soy47_shuffle)
 mean(kmodes_soy47_shuffle)
 std(kmodes_soy47_shuffle)
