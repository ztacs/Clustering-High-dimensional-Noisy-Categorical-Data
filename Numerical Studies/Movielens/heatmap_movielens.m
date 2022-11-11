%%Movielens
T =  readtable('W:\JASA\Github - JASA submit_Nov_2022\Numerical Studies\Movielens\movielens_1M.csv',...
     'ReadVariableNames',true); 
movielens=table2array(T);
movielens(:,1)=[]; 
data=movielens;
filename='ordinal_spectral_imagesc_block_r_6_r2_6_FS200' ;
 [et I ]= heatmap_ordinal_spec_imagesc_block( 6,6,data,1, filename ) 
 