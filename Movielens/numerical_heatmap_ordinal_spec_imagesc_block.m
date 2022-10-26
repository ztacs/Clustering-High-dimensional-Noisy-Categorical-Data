%%%%%%%%%%%%%%%%%%%%%%%%%%%
%selected feature by SPEC;
%from: numerical_spectral_feature_selction.m
movielens_reduced=movielens(index_movie==1,index_user==1);

data=movielens_reduced;
 
filename='ordinal_spectral_imagesc_block_r_6_r2_6_FS200' ;
 [et I ]= heatmap_ordinal_spec_imagesc_block( 6,6,data,1, filename ) 
   
 
 
 
movielens_reduced_500=movielens(index_movie_500==1,index_user_500==1);
filename='ordinal_spectral_imagesc_block_r_6_r2_6_FS500_mean' ;
 [et I ]= heatmap_ordinal_spec_imagesc_block( 6,6,movielens_reduced_500,1, filename ) 
 

miss= isnan(movielens_reduced_500);
sum(sum(miss))/5540/3206
 
 
 
 
%%%%%%%%%%%%%%%%%%%%%%%%

T =  readtable('W:\Multicategory clustering\Movielens\ml-1m\movielens_1M.csv',...
     'ReadVariableNames',true); 
 movielens=table2array(T);
  movielens(:,1)=[]; 
  data=movielens;
 
  
  
filename='ordinal_spectral_imagesc_block_r_6_r2_6' ;
 [et I ]= heatmap_ordinal_spec_imagesc_block( 6,6,data,1, filename ) 
  %cluster both movies and users
  
  %to get average running time
 for i=1:10
[et(i) I ]= heatmap_ordinal_spec_imagesc_block( 6,6,data,i, filename ) ;
 end
 mean(et)
  