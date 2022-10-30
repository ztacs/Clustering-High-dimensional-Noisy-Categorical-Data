 
% The last column of T is the ture label;
% mushroom.csv is encoded by the order in the data description
T =  readtable('W:\Multicategory clustering\mushroom data\mushroom.csv',...
     'ReadVariableNames',false);
mushroom=table2array(T);

 for i = 1:8124
              if mushroom(i,11) == 0
                 mushroom(i,11) =NaN;
             end
end

 for i=1:100
     i
     
 disp('spectralCAT')
 [spectralCAT_mushroom(i) et_spectralCAT_mushroom(i)]=spectralCAT(mushroom,2,30,i);
 
 
 tic
 disp('Spectral')
 %spec(i-9999)=Spectral_method_unit_cirtcle_muticat_real_data(2,mushroom,30,i)
 spec_mushroom(i)=Spectral_method_unit_circle(2,mushroom,30,i);
 toc;
 
 tic
disp('kmode_observed_replicate')
 kmodes_mushroom(i)=kmode_observed_replicate(mushroom, 2, 30,i)
 toc
 
 tic
 disp('kmode_observed_replicate_shuffle_each_rep')
 kmodes_shuffle_mushroom(i)=kmode_observed_replicate_shuffle_each_rep(mushroom, 2,30,i )
 toc
 
 
%tic
% disp('kmode_observed_replicate_use_mode_fn')
%kmode_observed_replicate_use_mode_fn(mushroom, 2, 30,i )
 %toc
 end
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

%for i=1:100 
    i
%tic
%disp('kmode_observed_replicate')
%kmodes_10000(i)=kmode_observed_replicate(mushroom, 2, 30,i*10000)
%toc
%end

%kmode_observed_replicate_shuffle_each_rep(mushroom, 2, 1,1)


min(spectralCAT_mushroom)
max(spectralCAT_mushroom)
mean(spectralCAT_mushroom)
std(spectralCAT_mushroom)


min(et_spectralCAT_mushroom)
max(et_spectralCAT_mushroom)
mean(et_spectralCAT_mushroom)
std(et_spectralCAT_mushroom)

min(spec_mushroom)
max(spec_mushroom)
mean(spec_mushroom)
std(spec_mushroom)

min(kmodes_mushroom)
max(kmodes_mushroom)
mean(kmodes_mushroom)
std(kmodes_mushroom)

min(kmodes_shuffle_mushroom)
max(kmodes_shuffle_mushroom)
mean(kmodes_shuffle_mushroom)
std(kmodes_shuffle_mushroom)

