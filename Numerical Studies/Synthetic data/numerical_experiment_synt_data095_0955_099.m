%n=128;m=128;p=0.2 
%n=256;m=256;p=0.2 
n=512;m=512;p=0.2 
%n=1024;m=1024;p=0.2 

tic;
 %TWO CLUSTERS; 3 CATEGORIES; 
for experiment = 1 : 20
experiment
r=2
g=3
 
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,2,3,p,experiment);

 [kmode_2_3_095(experiment) et_kmode_2_3_095(experiment)] = kmode_observed_replicate(R_h_num095,2,30,experiment);
 [kmode_2_3_0955(experiment) et_kmode_2_3_0955(experiment)] = kmode_observed_replicate(R_h_num0955,2,30,experiment);
 [kmode_2_3_096(experiment) et_kmode_2_3_096(experiment)] = kmode_observed_replicate(R_h_num096,2,30,experiment);
 [kmode_2_3_0965(experiment) et_kmode_2_3_0965(experiment)] = kmode_observed_replicate(R_h_num0965,2,30,experiment);
 [kmode_2_3_097(experiment) et_kmode_2_3_097(experiment)] = kmode_observed_replicate(R_h_num097,2,30,experiment);
 [kmode_2_3_0975(experiment) et_kmode_2_3_0975(experiment)] = kmode_observed_replicate(R_h_num0975,2,30,experiment);
 [kmode_2_3_098(experiment) et_kmode_2_3_098(experiment)] = kmode_observed_replicate(R_h_num098,2,30,experiment);
 [kmode_2_3_0985(experiment) et_kmode_2_3_0985(experiment)] = kmode_observed_replicate(R_h_num0985,2,30,experiment);
 [kmode_2_3_099(experiment) et_kmode_2_3_099(experiment)] = kmode_observed_replicate(R_h_num099,2,30,experiment);
  
  
 
 [kmode_shuffle_2_3_095(experiment) et_kmode_shuffle_2_3_095(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num095,2,30,experiment);
 [kmode_shuffle_2_3_0955(experiment) et_kmode_shuffle_2_3_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,2,30,experiment);
 [kmode_shuffle_2_3_096(experiment) et_kmode_shuffle_2_3_096(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num096,2,30,experiment);
 [kmode_shuffle_2_3_0965(experiment) et_kmode_shuffle_2_3_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,2,30,experiment);
 [kmode_shuffle_2_3_097(experiment) et_kmode_shuffle_2_3_097(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num097,2,30,experiment);
 [kmode_shuffle_2_3_0975(experiment) et_kmode_shuffle_2_3_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,2,30,experiment);
 [kmode_shuffle_2_3_098(experiment) et_kmode_shuffle_2_3_098(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num098,2,30,experiment);
 [kmode_shuffle_2_3_0985(experiment) et_kmode_shuffle_2_3_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,2,30,experiment);
 [kmode_shuffle_2_3_099(experiment) et_kmode_shuffle_2_3_099(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num099,2,30,experiment);
  
 [Acc_2_3_095(experiment) et_Acc_2_3_095(experiment)] = Spectral_method_unit_circle(2,R_h_num095,30,experiment);
 [Acc_2_3_0955(experiment) et_Acc_2_3_0955(experiment)] = Spectral_method_unit_circle(2,R_h_num0955,30,experiment);
 [Acc_2_3_096(experiment) et_Acc_2_3_096(experiment)] = Spectral_method_unit_circle(2,R_h_num096,30,experiment);
 [Acc_2_3_0965(experiment) et_Acc_2_3_0965(experiment)] = Spectral_method_unit_circle(2,R_h_num0965,30,experiment);
 [Acc_2_3_097(experiment) et_Acc_2_3_097(experiment)] = Spectral_method_unit_circle(2,R_h_num097,30,experiment);
 [Acc_2_3_0975(experiment) et_Acc_2_3_0975(experiment)] = Spectral_method_unit_circle(2,R_h_num0975,30,experiment);
 [Acc_2_3_098(experiment) et_Acc_2_3_098(experiment)] = Spectral_method_unit_circle(2,R_h_num098,30,experiment);
 [Acc_2_3_0985(experiment) et_Acc_2_3_0985(experiment)] = Spectral_method_unit_circle(2,R_h_num0985,30,experiment);
 [Acc_2_3_099(experiment) et_Acc_2_3_099(experiment)] = Spectral_method_unit_circle(2,R_h_num099,30,experiment);
  
 end
 
 %TWO CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=2
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,2,6,p,experiment);
 [kmode_2_6_095(experiment) et_kmode_2_6_095(experiment)] = kmode_observed_replicate(R_h_num095,2,30,experiment);
 [kmode_2_6_0955(experiment) et_kmode_2_6_0955(experiment)] = kmode_observed_replicate(R_h_num0955,2,30,experiment);
 [kmode_2_6_096(experiment) et_kmode_2_6_096(experiment)] = kmode_observed_replicate(R_h_num096,2,30,experiment);
 [kmode_2_6_0965(experiment) et_kmode_2_6_0965(experiment)] = kmode_observed_replicate(R_h_num0965,2,30,experiment);
 [kmode_2_6_097(experiment) et_kmode_2_6_097(experiment)] = kmode_observed_replicate(R_h_num097,2,30,experiment);
 [kmode_2_6_0975(experiment) et_kmode_2_6_0975(experiment)] = kmode_observed_replicate(R_h_num0975,2,30,experiment);
 [kmode_2_6_098(experiment) et_kmode_2_6_098(experiment)] = kmode_observed_replicate(R_h_num098,2,30,experiment);
 [kmode_2_6_0985(experiment) et_kmode_2_6_0985(experiment)] = kmode_observed_replicate(R_h_num0985,2,30,experiment);
 [kmode_2_6_099(experiment) et_kmode_2_6_099(experiment)] = kmode_observed_replicate(R_h_num099,2,30,experiment);
  
  
 
 [kmode_shuffle_2_6_095(experiment) et_kmode_shuffle_2_6_095(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num095,2,30,experiment);
 [kmode_shuffle_2_6_0955(experiment) et_kmode_shuffle_2_6_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,2,30,experiment);
 [kmode_shuffle_2_6_096(experiment) et_kmode_shuffle_2_6_096(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num096,2,30,experiment);
 [kmode_shuffle_2_6_0965(experiment) et_kmode_shuffle_2_6_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,2,30,experiment);
 [kmode_shuffle_2_6_097(experiment) et_kmode_shuffle_2_6_097(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num097,2,30,experiment);
 [kmode_shuffle_2_6_0975(experiment) et_kmode_shuffle_2_6_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,2,30,experiment);
 [kmode_shuffle_2_6_098(experiment) et_kmode_shuffle_2_6_098(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num098,2,30,experiment);
 [kmode_shuffle_2_6_0985(experiment) et_kmode_shuffle_2_6_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,2,30,experiment);
 [kmode_shuffle_2_6_099(experiment) et_kmode_shuffle_2_6_099(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num099,2,30,experiment);
  
 [Acc_2_6_095(experiment) et_Acc_2_6_095(experiment)] = Spectral_method_unit_circle(2,R_h_num095,30,experiment);
 [Acc_2_6_0955(experiment) et_Acc_2_6_0955(experiment)] = Spectral_method_unit_circle(2,R_h_num0955,30,experiment);
 [Acc_2_6_096(experiment) et_Acc_2_6_096(experiment)] = Spectral_method_unit_circle(2,R_h_num096,30,experiment);
 [Acc_2_6_0965(experiment) et_Acc_2_6_0965(experiment)] = Spectral_method_unit_circle(2,R_h_num0965,30,experiment);
 [Acc_2_6_097(experiment) et_Acc_2_6_097(experiment)] = Spectral_method_unit_circle(2,R_h_num097,30,experiment);
 [Acc_2_6_0975(experiment) et_Acc_2_6_0975(experiment)] = Spectral_method_unit_circle(2,R_h_num0975,30,experiment);
 [Acc_2_6_098(experiment) et_Acc_2_6_098(experiment)] = Spectral_method_unit_circle(2,R_h_num098,30,experiment);
 [Acc_2_6_0985(experiment) et_Acc_2_6_0985(experiment)] = Spectral_method_unit_circle(2,R_h_num0985,30,experiment);
 [Acc_2_6_099(experiment) et_Acc_2_6_099(experiment)] = Spectral_method_unit_circle(2,R_h_num099,30,experiment);
 
end
 
 %TWO CLUSTERS;  9 CATEGORIES; 
for experiment = 1 : 20
experiment
r=2
g=9
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,2,9,p,experiment);


 [kmode_2_9_095(experiment) et_kmode_2_9_095(experiment)] = kmode_observed_replicate(R_h_num095,2,30,experiment);
 [kmode_2_9_0955(experiment) et_kmode_2_9_0955(experiment)] = kmode_observed_replicate(R_h_num0955,2,30,experiment);
 [kmode_2_9_096(experiment) et_kmode_2_9_096(experiment)] = kmode_observed_replicate(R_h_num096,2,30,experiment);
 [kmode_2_9_0965(experiment) et_kmode_2_9_0965(experiment)] = kmode_observed_replicate(R_h_num0965,2,30,experiment);
 [kmode_2_9_097(experiment) et_kmode_2_9_097(experiment)] = kmode_observed_replicate(R_h_num097,2,30,experiment);
 [kmode_2_9_0975(experiment) et_kmode_2_9_0975(experiment)] = kmode_observed_replicate(R_h_num0975,2,30,experiment);
 [kmode_2_9_098(experiment) et_kmode_2_9_098(experiment)] = kmode_observed_replicate(R_h_num098,2,30,experiment);
 [kmode_2_9_0985(experiment) et_kmode_2_9_0985(experiment)] = kmode_observed_replicate(R_h_num0985,2,30,experiment);
 [kmode_2_9_099(experiment) et_kmode_2_9_099(experiment)] = kmode_observed_replicate(R_h_num099,2,30,experiment);
  
  
 
 [kmode_shuffle_2_9_095(experiment) et_kmode_shuffle_2_9_095(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num095,2,30,experiment);
 [kmode_shuffle_2_9_0955(experiment) et_kmode_shuffle_2_9_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,2,30,experiment);
 [kmode_shuffle_2_9_096(experiment) et_kmode_shuffle_2_9_096(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num096,2,30,experiment);
 [kmode_shuffle_2_9_0965(experiment) et_kmode_shuffle_2_9_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,2,30,experiment);
 [kmode_shuffle_2_9_097(experiment) et_kmode_shuffle_2_9_097(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num097,2,30,experiment);
 [kmode_shuffle_2_9_0975(experiment) et_kmode_shuffle_2_9_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,2,30,experiment);
 [kmode_shuffle_2_9_098(experiment) et_kmode_shuffle_2_9_098(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num098,2,30,experiment);
 [kmode_shuffle_2_9_0985(experiment) et_kmode_shuffle_2_9_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,2,30,experiment);
 [kmode_shuffle_2_9_099(experiment) et_kmode_shuffle_2_9_099(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num099,2,30,experiment);
  
 [Acc_2_9_095(experiment) et_Acc_2_9_095(experiment)] = Spectral_method_unit_circle(2,R_h_num095,30,experiment);
 [Acc_2_9_0955(experiment) et_Acc_2_9_0955(experiment)] = Spectral_method_unit_circle(2,R_h_num0955,30,experiment);
 [Acc_2_9_096(experiment) et_Acc_2_9_096(experiment)] = Spectral_method_unit_circle(2,R_h_num096,30,experiment);
 [Acc_2_9_0965(experiment) et_Acc_2_9_0965(experiment)] = Spectral_method_unit_circle(2,R_h_num0965,30,experiment);
 [Acc_2_9_097(experiment) et_Acc_2_9_097(experiment)] = Spectral_method_unit_circle(2,R_h_num097,30,experiment);
 [Acc_2_9_0975(experiment) et_Acc_2_9_0975(experiment)] = Spectral_method_unit_circle(2,R_h_num0975,30,experiment);
 [Acc_2_9_098(experiment) et_Acc_2_9_098(experiment)] = Spectral_method_unit_circle(2,R_h_num098,30,experiment);
 [Acc_2_9_0985(experiment) et_Acc_2_9_0985(experiment)] = Spectral_method_unit_circle(2,R_h_num0985,30,experiment);
 [Acc_2_9_099(experiment) et_Acc_2_9_099(experiment)] = Spectral_method_unit_circle(2,R_h_num099,30,experiment);
end

   

 %Four CLUSTERS; 3 CATEGORIES; 
for experiment = 1 : 20 
experiment
r=4
g=3
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,4,3,p,experiment);

 [kmode_4_3_095(experiment) et_kmode_4_3_095(experiment)] = kmode_observed_replicate(R_h_num095,4,30,experiment);
 [kmode_4_3_0955(experiment) et_kmode_4_3_0955(experiment)] = kmode_observed_replicate(R_h_num0955,4,30,experiment);
 [kmode_4_3_096(experiment) et_kmode_4_3_096(experiment)] = kmode_observed_replicate(R_h_num096,4,30,experiment);
 [kmode_4_3_0965(experiment) et_kmode_4_3_0965(experiment)] = kmode_observed_replicate(R_h_num0965,4,30,experiment);
 [kmode_4_3_097(experiment) et_kmode_4_3_097(experiment)] = kmode_observed_replicate(R_h_num097,4,30,experiment);
 [kmode_4_3_0975(experiment) et_kmode_4_3_0975(experiment)] = kmode_observed_replicate(R_h_num0975,4,30,experiment);
 [kmode_4_3_098(experiment) et_kmode_4_3_098(experiment)] = kmode_observed_replicate(R_h_num098,4,30,experiment);
 [kmode_4_3_0985(experiment) et_kmode_4_3_0985(experiment)] = kmode_observed_replicate(R_h_num0985,4,30,experiment);
 [kmode_4_3_099(experiment) et_kmode_4_3_099(experiment)] = kmode_observed_replicate(R_h_num099,4,30,experiment);
  
  
 
 [kmode_shuffle_4_3_095(experiment) et_kmode_shuffle_4_3_095(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num095,4,30,experiment);
 [kmode_shuffle_4_3_0955(experiment) et_kmode_shuffle_4_3_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,4,30,experiment);
 [kmode_shuffle_4_3_096(experiment) et_kmode_shuffle_4_3_096(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num096,4,30,experiment);
 [kmode_shuffle_4_3_0965(experiment) et_kmode_shuffle_4_3_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,4,30,experiment);
 [kmode_shuffle_4_3_097(experiment) et_kmode_shuffle_4_3_097(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num097,4,30,experiment);
 [kmode_shuffle_4_3_0975(experiment) et_kmode_shuffle_4_3_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,4,30,experiment);
 [kmode_shuffle_4_3_098(experiment) et_kmode_shuffle_4_3_098(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num098,4,30,experiment);
 [kmode_shuffle_4_3_0985(experiment) et_kmode_shuffle_4_3_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,4,30,experiment);
 [kmode_shuffle_4_3_099(experiment) et_kmode_shuffle_4_3_099(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num099,4,30,experiment);
  
 [Acc_4_3_095(experiment) et_Acc_4_3_095(experiment)] =   Spectral_method_unit_circle(4,R_h_num095,30,experiment);
 [Acc_4_3_0955(experiment) et_Acc_4_3_0955(experiment)] = Spectral_method_unit_circle(4,R_h_num0955,30,experiment);
 [Acc_4_3_096(experiment) et_Acc_4_3_096(experiment)] =   Spectral_method_unit_circle(4,R_h_num096,30,experiment);
 [Acc_4_3_0965(experiment) et_Acc_4_3_0965(experiment)] = Spectral_method_unit_circle(4,R_h_num0965,30,experiment);
 [Acc_4_3_097(experiment) et_Acc_4_3_097(experiment)] =   Spectral_method_unit_circle(4,R_h_num097,30,experiment);
 [Acc_4_3_0975(experiment) et_Acc_4_3_0975(experiment)] = Spectral_method_unit_circle(4,R_h_num0975,30,experiment);
 [Acc_4_3_098(experiment) et_Acc_4_3_098(experiment)] =   Spectral_method_unit_circle(4,R_h_num098,30,experiment);
 [Acc_4_3_0985(experiment) et_Acc_4_3_0985(experiment)] = Spectral_method_unit_circle(4,R_h_num0985,30,experiment);
 [Acc_4_3_099(experiment) et_Acc_4_3_099(experiment)] =   Spectral_method_unit_circle(4,R_h_num099,30,experiment);
end

 
 %Four CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=4
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,4,6,p,experiment);

 [kmode_4_6_095(experiment) et_kmode_4_6_095(experiment)] =   kmode_observed_replicate(R_h_num095,4,30,experiment);
 [kmode_4_6_0955(experiment) et_kmode_4_6_0955(experiment)] = kmode_observed_replicate(R_h_num0955,4,30,experiment);
 [kmode_4_6_096(experiment) et_kmode_4_6_096(experiment)] =   kmode_observed_replicate(R_h_num096,4,30,experiment);
 [kmode_4_6_0965(experiment) et_kmode_4_6_0965(experiment)] = kmode_observed_replicate(R_h_num0965,4,30,experiment);
 [kmode_4_6_097(experiment) et_kmode_4_6_097(experiment)] =   kmode_observed_replicate(R_h_num097,4,30,experiment);
 [kmode_4_6_0975(experiment) et_kmode_4_6_0975(experiment)] = kmode_observed_replicate(R_h_num0975,4,30,experiment);
 [kmode_4_6_098(experiment) et_kmode_4_6_098(experiment)] =   kmode_observed_replicate(R_h_num098,4,30,experiment);
 [kmode_4_6_0985(experiment) et_kmode_4_6_0985(experiment)] = kmode_observed_replicate(R_h_num0985,4,30,experiment);
 [kmode_4_6_099(experiment) et_kmode_4_6_099(experiment)] =   kmode_observed_replicate(R_h_num099,4,30,experiment);
  
  
 
 [kmode_shuffle_4_6_095(experiment) et_kmode_shuffle_4_6_095(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num095,4,30,experiment);
 [kmode_shuffle_4_6_0955(experiment) et_kmode_shuffle_4_6_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,4,30,experiment);
 [kmode_shuffle_4_6_096(experiment) et_kmode_shuffle_4_6_096(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num096,4,30,experiment);
 [kmode_shuffle_4_6_0965(experiment) et_kmode_shuffle_4_6_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,4,30,experiment);
 [kmode_shuffle_4_6_097(experiment) et_kmode_shuffle_4_6_097(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,4,30,experiment);
 [kmode_shuffle_4_6_0975(experiment) et_kmode_shuffle_4_6_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,4,30,experiment);
 [kmode_shuffle_4_6_098(experiment) et_kmode_shuffle_4_6_098(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num098,4,30,experiment);
 [kmode_shuffle_4_6_0985(experiment) et_kmode_shuffle_4_6_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,4,30,experiment);
 [kmode_shuffle_4_6_099(experiment) et_kmode_shuffle_4_6_099(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num099,4,30,experiment);
  
 [Acc_4_6_095(experiment) et_Acc_4_6_095(experiment)] =   Spectral_method_unit_circle(4,R_h_num095,30,experiment);
 [Acc_4_6_0955(experiment) et_Acc_4_6_0955(experiment)] = Spectral_method_unit_circle(4,R_h_num0955,30,experiment);
 [Acc_4_6_096(experiment) et_Acc_4_6_096(experiment)] =   Spectral_method_unit_circle(4,R_h_num096,30,experiment);
 [Acc_4_6_0965(experiment) et_Acc_4_6_0965(experiment)] = Spectral_method_unit_circle(4,R_h_num0965,30,experiment);
 [Acc_4_6_097(experiment) et_Acc_4_6_097(experiment)] =   Spectral_method_unit_circle(4,R_h_num097,30,experiment);
 [Acc_4_6_0975(experiment) et_Acc_4_6_0975(experiment)] = Spectral_method_unit_circle(4,R_h_num0975,30,experiment);
 [Acc_4_6_098(experiment) et_Acc_4_6_098(experiment)] =   Spectral_method_unit_circle(4,R_h_num098,30,experiment);
 [Acc_4_6_0985(experiment) et_Acc_4_6_0985(experiment)] = Spectral_method_unit_circle(4,R_h_num0985,30,experiment);
 [Acc_4_6_099(experiment) et_Acc_4_6_099(experiment)] =   Spectral_method_unit_circle(4,R_h_num099,30,experiment);


end

 
 %Four CLUSTERS;  9 CATEGORIES; 
for experiment = 1 : 20
experiment
r=4
g=9
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,4,9,p,experiment);


 [kmode_4_9_095(experiment) et_kmode_4_9_095(experiment)] =   kmode_observed_replicate(R_h_num095,4,30,experiment);
 [kmode_4_9_0955(experiment) et_kmode_4_9_0955(experiment)] = kmode_observed_replicate(R_h_num0955,4,30,experiment);
 [kmode_4_9_096(experiment) et_kmode_4_9_096(experiment)] =   kmode_observed_replicate(R_h_num096,4,30,experiment);
 [kmode_4_9_0965(experiment) et_kmode_4_9_0965(experiment)] = kmode_observed_replicate(R_h_num0965,4,30,experiment);
 [kmode_4_9_097(experiment) et_kmode_4_9_097(experiment)] =   kmode_observed_replicate(R_h_num097,4,30,experiment);
 [kmode_4_9_0975(experiment) et_kmode_4_9_0975(experiment)] = kmode_observed_replicate(R_h_num0975,4,30,experiment);
 [kmode_4_9_098(experiment) et_kmode_4_9_098(experiment)] =   kmode_observed_replicate(R_h_num098,4,30,experiment);
 [kmode_4_9_0985(experiment) et_kmode_4_9_0985(experiment)] = kmode_observed_replicate(R_h_num0985,4,30,experiment);
 [kmode_4_9_099(experiment) et_kmode_4_9_099(experiment)] =   kmode_observed_replicate(R_h_num099,4,30,experiment);
  
  
 
 [kmode_shuffle_4_9_095(experiment) et_kmode_shuffle_4_9_095(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num095,4,30,experiment);
 [kmode_shuffle_4_9_0955(experiment) et_kmode_shuffle_4_9_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,4,30,experiment);
 [kmode_shuffle_4_9_096(experiment) et_kmode_shuffle_4_9_096(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num096,4,30,experiment);
 [kmode_shuffle_4_9_0965(experiment) et_kmode_shuffle_4_9_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,4,30,experiment);
 [kmode_shuffle_4_9_097(experiment) et_kmode_shuffle_4_9_097(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,4,30,experiment);
 [kmode_shuffle_4_9_0975(experiment) et_kmode_shuffle_4_9_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,4,30,experiment);
 [kmode_shuffle_4_9_098(experiment) et_kmode_shuffle_4_9_098(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num098,4,30,experiment);
 [kmode_shuffle_4_9_0985(experiment) et_kmode_shuffle_4_9_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,4,30,experiment);
 [kmode_shuffle_4_9_099(experiment) et_kmode_shuffle_4_9_099(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num099,4,30,experiment);
  
 [Acc_4_9_095(experiment) et_Acc_4_9_095(experiment)] =   Spectral_method_unit_circle(4,R_h_num095,30,experiment);
 [Acc_4_9_0955(experiment) et_Acc_4_9_0955(experiment)] = Spectral_method_unit_circle(4,R_h_num0955,30,experiment);
 [Acc_4_9_096(experiment) et_Acc_4_9_096(experiment)] =   Spectral_method_unit_circle(4,R_h_num096,30,experiment);
 [Acc_4_9_0965(experiment) et_Acc_4_9_0965(experiment)] = Spectral_method_unit_circle(4,R_h_num0965,30,experiment);
 [Acc_4_9_097(experiment) et_Acc_4_9_097(experiment)] =   Spectral_method_unit_circle(4,R_h_num097,30,experiment);
 [Acc_4_9_0975(experiment) et_Acc_4_9_0975(experiment)] = Spectral_method_unit_circle(4,R_h_num0975,30,experiment);
 [Acc_4_9_098(experiment) et_Acc_4_9_098(experiment)] =   Spectral_method_unit_circle(4,R_h_num098,30,experiment);
 [Acc_4_9_0985(experiment) et_Acc_4_9_0985(experiment)] = Spectral_method_unit_circle(4,R_h_num0985,30,experiment);
 [Acc_4_9_099(experiment) et_Acc_4_9_099(experiment)] =   Spectral_method_unit_circle(4,R_h_num099,30,experiment);
 

end


 %EIGHT CLUSTERS; 3 CATEGORIES; 
for experiment = 1 : 20 
experiment
r=8 
g=3
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,8,3,p,experiment);

 [kmode_8_3_095(experiment) et_kmode_8_3_095(experiment)] =   kmode_observed_replicate(R_h_num095,8,30,experiment);
 [kmode_8_3_0955(experiment) et_kmode_8_3_0955(experiment)] = kmode_observed_replicate(R_h_num0955,8,30,experiment);
 [kmode_8_3_096(experiment) et_kmode_8_3_096(experiment)] =   kmode_observed_replicate(R_h_num096,8,30,experiment);
 [kmode_8_3_0965(experiment) et_kmode_8_3_0965(experiment)] = kmode_observed_replicate(R_h_num0965,8,30,experiment);
 [kmode_8_3_097(experiment) et_kmode_8_3_097(experiment)] =   kmode_observed_replicate(R_h_num097,8,30,experiment);
 [kmode_8_3_0975(experiment) et_kmode_8_3_0975(experiment)] = kmode_observed_replicate(R_h_num0975,8,30,experiment);
 [kmode_8_3_098(experiment) et_kmode_8_3_098(experiment)] =   kmode_observed_replicate(R_h_num098,8,30,experiment);
 [kmode_8_3_0985(experiment) et_kmode_8_3_0985(experiment)] = kmode_observed_replicate(R_h_num0985,8,30,experiment);
 [kmode_8_3_099(experiment) et_kmode_8_3_099(experiment)] =   kmode_observed_replicate(R_h_num099,8,30,experiment);
  
  
 
 [kmode_shuffle_8_3_095(experiment) et_kmode_shuffle_8_3_095(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num095,8,30,experiment);
 [kmode_shuffle_8_3_0955(experiment) et_kmode_shuffle_8_3_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,8,30,experiment);
 [kmode_shuffle_8_3_096(experiment) et_kmode_shuffle_8_3_096(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num096,8,30,experiment);
 [kmode_shuffle_8_3_0965(experiment) et_kmode_shuffle_8_3_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,8,30,experiment);
 [kmode_shuffle_8_3_097(experiment) et_kmode_shuffle_8_3_097(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,8,30,experiment);
 [kmode_shuffle_8_3_0975(experiment) et_kmode_shuffle_8_3_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,8,30,experiment);
 [kmode_shuffle_8_3_098(experiment) et_kmode_shuffle_8_3_098(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num098,8,30,experiment);
 [kmode_shuffle_8_3_0985(experiment) et_kmode_shuffle_8_3_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,8,30,experiment);
 [kmode_shuffle_8_3_099(experiment) et_kmode_shuffle_8_3_099(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num099,8,30,experiment);
  
 [Acc_8_3_095(experiment) et_Acc_8_3_095(experiment)] =   Spectral_method_unit_circle(8,R_h_num095,30,experiment);
 [Acc_8_3_0955(experiment) et_Acc_8_3_0955(experiment)] = Spectral_method_unit_circle(8,R_h_num0955,30,experiment);
 [Acc_8_3_096(experiment) et_Acc_8_3_096(experiment)] =   Spectral_method_unit_circle(8,R_h_num096,30,experiment);
 [Acc_8_3_0965(experiment) et_Acc_8_3_0965(experiment)] = Spectral_method_unit_circle(8,R_h_num0965,30,experiment);
 [Acc_8_3_097(experiment) et_Acc_8_3_097(experiment)] =   Spectral_method_unit_circle(8,R_h_num097,30,experiment);
 [Acc_8_3_0975(experiment) et_Acc_8_3_0975(experiment)] = Spectral_method_unit_circle(8,R_h_num0975,30,experiment);
 [Acc_8_3_098(experiment) et_Acc_8_3_098(experiment)] =   Spectral_method_unit_circle(8,R_h_num098,30,experiment);
 [Acc_8_3_0985(experiment) et_Acc_8_3_0985(experiment)] = Spectral_method_unit_circle(8,R_h_num0985,30,experiment);
 [Acc_8_3_099(experiment) et_Acc_8_3_099(experiment)] =   Spectral_method_unit_circle(8,R_h_num099,30,experiment);
end

 
 %EIGHT CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=8
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,8,6,p,experiment);

 [kmode_8_6_095(experiment) et_kmode_8_6_095(experiment)] =   kmode_observed_replicate(R_h_num095,8,30,experiment);
 [kmode_8_6_0955(experiment) et_kmode_8_6_0955(experiment)] = kmode_observed_replicate(R_h_num0955,8,30,experiment);
 [kmode_8_6_096(experiment) et_kmode_8_6_096(experiment)] =   kmode_observed_replicate(R_h_num096,8,30,experiment);
 [kmode_8_6_0965(experiment) et_kmode_8_6_0965(experiment)] = kmode_observed_replicate(R_h_num0965,8,30,experiment);
 [kmode_8_6_097(experiment) et_kmode_8_6_097(experiment)] =   kmode_observed_replicate(R_h_num097,8,30,experiment);
 [kmode_8_6_0975(experiment) et_kmode_8_6_0975(experiment)] = kmode_observed_replicate(R_h_num0975,8,30,experiment);
 [kmode_8_6_098(experiment) et_kmode_8_6_098(experiment)] =   kmode_observed_replicate(R_h_num098,8,30,experiment);
 [kmode_8_6_0985(experiment) et_kmode_8_6_0985(experiment)] = kmode_observed_replicate(R_h_num0985,8,30,experiment);
 [kmode_8_6_099(experiment) et_kmode_8_6_099(experiment)] =   kmode_observed_replicate(R_h_num099,8,30,experiment);
  
  [kmode_shuffle_8_6_095(experiment) et_kmode_shuffle_8_6_095(experiment)] =  kmode_observed_replicate_shuffle_each_rep(R_h_num095,8,30,experiment);
 [kmode_shuffle_8_6_0955(experiment) et_kmode_shuffle_8_6_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,8,30,experiment);
 [kmode_shuffle_8_6_096(experiment) et_kmode_shuffle_8_6_096(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num096,8,30,experiment);
 [kmode_shuffle_8_6_0965(experiment) et_kmode_shuffle_8_6_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,8,30,experiment);
 [kmode_shuffle_8_6_097(experiment) et_kmode_shuffle_8_6_097(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,8,30,experiment);
 [kmode_shuffle_8_6_0975(experiment) et_kmode_shuffle_8_6_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,8,30,experiment);
 [kmode_shuffle_8_6_098(experiment) et_kmode_shuffle_8_6_098(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num098,8,30,experiment);
 [kmode_shuffle_8_6_0985(experiment) et_kmode_shuffle_8_6_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,8,30,experiment);
 [kmode_shuffle_8_6_099(experiment) et_kmode_shuffle_8_6_099(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num099,8,30,experiment);
 
 [Acc_8_6_095(experiment) et_Acc_8_6_095(experiment)] =   Spectral_method_unit_circle(8,R_h_num095,30,experiment);
 [Acc_8_6_0955(experiment) et_Acc_8_6_0955(experiment)] = Spectral_method_unit_circle(8,R_h_num0955,30,experiment);
 [Acc_8_6_096(experiment) et_Acc_8_6_096(experiment)] =   Spectral_method_unit_circle(8,R_h_num096,30,experiment);
 [Acc_8_6_0965(experiment) et_Acc_8_6_0965(experiment)] = Spectral_method_unit_circle(8,R_h_num0965,30,experiment);
 [Acc_8_6_097(experiment) et_Acc_8_6_097(experiment)] =   Spectral_method_unit_circle(8,R_h_num097,30,experiment);
 [Acc_8_6_0975(experiment) et_Acc_8_6_0975(experiment)] = Spectral_method_unit_circle(8,R_h_num0975,30,experiment);
 [Acc_8_6_098(experiment) et_Acc_8_6_098(experiment)] =   Spectral_method_unit_circle(8,R_h_num098,30,experiment);
 [Acc_8_6_0985(experiment) et_Acc_8_6_0985(experiment)] = Spectral_method_unit_circle(8,R_h_num0985,30,experiment);
 [Acc_8_6_099(experiment) et_Acc_8_6_099(experiment)] =   Spectral_method_unit_circle(8,R_h_num099,30,experiment);
end

 
 %EIGHT CLUSTERS;  9 CATEGORIES; 
for experiment = 1 : 20
experiment
r=8
g=9
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,8,9,p,experiment);

 [kmode_8_9_095(experiment) et_kmode_8_9_095(experiment)] =   kmode_observed_replicate(R_h_num095,8,30,experiment);
 [kmode_8_9_0955(experiment) et_kmode_8_9_0955(experiment)] = kmode_observed_replicate(R_h_num0955,8,30,experiment);
 [kmode_8_9_096(experiment) et_kmode_8_9_096(experiment)] =   kmode_observed_replicate(R_h_num096,8,30,experiment);
 [kmode_8_9_0965(experiment) et_kmode_8_9_0965(experiment)] = kmode_observed_replicate(R_h_num0965,8,30,experiment);
 [kmode_8_9_097(experiment) et_kmode_8_9_097(experiment)] =   kmode_observed_replicate(R_h_num097,8,30,experiment);
 [kmode_8_9_0975(experiment) et_kmode_8_9_0975(experiment)] = kmode_observed_replicate(R_h_num0975,8,30,experiment);
 [kmode_8_9_098(experiment) et_kmode_8_9_098(experiment)] =   kmode_observed_replicate(R_h_num098,8,30,experiment);
 [kmode_8_9_0985(experiment) et_kmode_8_9_0985(experiment)] = kmode_observed_replicate(R_h_num0985,8,30,experiment);
 [kmode_8_9_099(experiment) et_kmode_8_9_099(experiment)] =   kmode_observed_replicate(R_h_num099,8,30,experiment);
  
  
 
 [kmode_shuffle_8_9_095(experiment) et_kmode_shuffle_8_9_095(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num095,8,30,experiment);
 [kmode_shuffle_8_9_0955(experiment) et_kmode_shuffle_8_9_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,8,30,experiment);
 [kmode_shuffle_8_9_096(experiment) et_kmode_shuffle_8_9_096(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num096,8,30,experiment);
 [kmode_shuffle_8_9_0965(experiment) et_kmode_shuffle_8_9_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,8,30,experiment);
 [kmode_shuffle_8_9_097(experiment) et_kmode_shuffle_8_9_097(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,8,30,experiment);
 [kmode_shuffle_8_9_0975(experiment) et_kmode_shuffle_8_9_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,8,30,experiment);
 [kmode_shuffle_8_9_098(experiment) et_kmode_shuffle_8_9_098(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num098,8,30,experiment);
 [kmode_shuffle_8_9_0985(experiment) et_kmode_shuffle_8_9_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,8,30,experiment);
 [kmode_shuffle_8_9_099(experiment) et_kmode_shuffle_8_9_099(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num099,8,30,experiment);
  
 [Acc_8_9_095(experiment) et_Acc_8_9_095(experiment)] =   Spectral_method_unit_circle(8,R_h_num095,30,experiment);
 [Acc_8_9_0955(experiment) et_Acc_8_9_0955(experiment)] = Spectral_method_unit_circle(8,R_h_num0955,30,experiment);
 [Acc_8_9_096(experiment) et_Acc_8_9_096(experiment)] =   Spectral_method_unit_circle(8,R_h_num096,30,experiment);
 [Acc_8_9_0965(experiment) et_Acc_8_9_0965(experiment)] = Spectral_method_unit_circle(8,R_h_num0965,30,experiment);
 [Acc_8_9_097(experiment) et_Acc_8_9_097(experiment)] =   Spectral_method_unit_circle(8,R_h_num097,30,experiment);
 [Acc_8_9_0975(experiment) et_Acc_8_9_0975(experiment)] = Spectral_method_unit_circle(8,R_h_num0975,30,experiment);
 [Acc_8_9_098(experiment) et_Acc_8_9_098(experiment)] =   Spectral_method_unit_circle(8,R_h_num098,30,experiment);
 [Acc_8_9_0985(experiment) et_Acc_8_9_0985(experiment)] = Spectral_method_unit_circle(8,R_h_num0985,30,experiment);
 [Acc_8_9_099(experiment) et_Acc_8_9_099(experiment)] =   Spectral_method_unit_circle(8,R_h_num099,30,experiment);

end
 %Sixteen CLUSTERS; 3 CATEGORIES; 
for experiment = 1 : 20 
experiment
r=32 
g=3
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,16,3,p,experiment);

 [kmode_16_3_095(experiment) et_kmode_16_3_095(experiment)] =   kmode_observed_replicate(R_h_num095,16,30,experiment);
 [kmode_16_3_0955(experiment) et_kmode_16_3_0955(experiment)] = kmode_observed_replicate(R_h_num0955,16,30,experiment);
 [kmode_16_3_096(experiment) et_kmode_16_3_096(experiment)] =   kmode_observed_replicate(R_h_num096,16,30,experiment);
 [kmode_16_3_0965(experiment) et_kmode_16_3_0965(experiment)] = kmode_observed_replicate(R_h_num0965,16,30,experiment);
 [kmode_16_3_097(experiment) et_kmode_16_3_097(experiment)] =   kmode_observed_replicate(R_h_num097,16,30,experiment);
 [kmode_16_3_0975(experiment) et_kmode_16_3_0975(experiment)] = kmode_observed_replicate(R_h_num0975,16,30,experiment);
 [kmode_16_3_098(experiment) et_kmode_16_3_098(experiment)] =   kmode_observed_replicate(R_h_num098,16,30,experiment);
 [kmode_16_3_0985(experiment) et_kmode_16_3_0985(experiment)] = kmode_observed_replicate(R_h_num0985,16,30,experiment);
 [kmode_16_3_099(experiment) et_kmode_16_3_099(experiment)] =   kmode_observed_replicate(R_h_num099,16,30,experiment);
  
  
 
 [kmode_shuffle_16_3_095(experiment) et_kmode_shuffle_16_3_095(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num095,16,30,experiment);
 [kmode_shuffle_16_3_0955(experiment) et_kmode_shuffle_16_3_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,16,30,experiment);
 [kmode_shuffle_16_3_096(experiment) et_kmode_shuffle_16_3_096(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num096,16,30,experiment);
 [kmode_shuffle_16_3_0965(experiment) et_kmode_shuffle_16_3_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,16,30,experiment);
 [kmode_shuffle_16_3_097(experiment) et_kmode_shuffle_16_3_097(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,16,30,experiment);
 [kmode_shuffle_16_3_0975(experiment) et_kmode_shuffle_16_3_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,16,30,experiment);
 [kmode_shuffle_16_3_098(experiment) et_kmode_shuffle_16_3_098(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num098,16,30,experiment);
 [kmode_shuffle_16_3_0985(experiment) et_kmode_shuffle_16_3_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,16,30,experiment);
 [kmode_shuffle_16_3_099(experiment) et_kmode_shuffle_16_3_099(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num099,16,30,experiment);
  
 [Acc_16_3_095(experiment) et_Acc_16_3_095(experiment)] =   Spectral_method_unit_circle(16,R_h_num095,30,experiment);
 [Acc_16_3_0955(experiment) et_Acc_16_3_0955(experiment)] = Spectral_method_unit_circle(16,R_h_num0955,30,experiment);
 [Acc_16_3_096(experiment) et_Acc_16_3_096(experiment)] =   Spectral_method_unit_circle(16,R_h_num096,30,experiment);
 [Acc_16_3_0965(experiment) et_Acc_16_3_0965(experiment)] = Spectral_method_unit_circle(16,R_h_num0965,30,experiment);
 [Acc_16_3_097(experiment) et_Acc_16_3_097(experiment)] =   Spectral_method_unit_circle(16,R_h_num097,30,experiment);
 [Acc_16_3_0975(experiment) et_Acc_16_3_0975(experiment)] = Spectral_method_unit_circle(16,R_h_num0975,30,experiment);
 [Acc_16_3_098(experiment) et_Acc_16_3_098(experiment)] =   Spectral_method_unit_circle(16,R_h_num098,30,experiment);
 [Acc_16_3_0985(experiment) et_Acc_16_3_0985(experiment)] = Spectral_method_unit_circle(16,R_h_num0985,30,experiment);
 [Acc_16_3_099(experiment) et_Acc_16_3_099(experiment)] =   Spectral_method_unit_circle(16,R_h_num099,30,experiment);
end

 
 %Sixteen CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=32
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,16,6,p,experiment);

 [kmode_16_6_095(experiment) et_kmode_16_6_095(experiment)] =   kmode_observed_replicate(R_h_num095,16,30,experiment);
 [kmode_16_6_0955(experiment) et_kmode_16_6_0955(experiment)] = kmode_observed_replicate(R_h_num0955,16,30,experiment);
 [kmode_16_6_096(experiment) et_kmode_16_6_096(experiment)] =   kmode_observed_replicate(R_h_num096,16,30,experiment);
 [kmode_16_6_0965(experiment) et_kmode_16_6_0965(experiment)] = kmode_observed_replicate(R_h_num0965,16,30,experiment);
 [kmode_16_6_097(experiment) et_kmode_16_6_097(experiment)] =   kmode_observed_replicate(R_h_num097,16,30,experiment);
 [kmode_16_6_0975(experiment) et_kmode_16_6_0975(experiment)] = kmode_observed_replicate(R_h_num0975,16,30,experiment);
 [kmode_16_6_098(experiment) et_kmode_16_6_098(experiment)] =   kmode_observed_replicate(R_h_num098,16,30,experiment);
 [kmode_16_6_0985(experiment) et_kmode_16_6_0985(experiment)] = kmode_observed_replicate(R_h_num0985,16,30,experiment);
 [kmode_16_6_099(experiment) et_kmode_16_6_099(experiment)] =   kmode_observed_replicate(R_h_num099,16,30,experiment);
  
  [kmode_shuffle_16_6_095(experiment) et_kmode_shuffle_16_6_095(experiment)] =  kmode_observed_replicate_shuffle_each_rep(R_h_num095,16,30,experiment);
 [kmode_shuffle_16_6_0955(experiment) et_kmode_shuffle_16_6_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,16,30,experiment);
 [kmode_shuffle_16_6_096(experiment) et_kmode_shuffle_16_6_096(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num096,16,30,experiment);
 [kmode_shuffle_16_6_0965(experiment) et_kmode_shuffle_16_6_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,16,30,experiment);
 [kmode_shuffle_16_6_097(experiment) et_kmode_shuffle_16_6_097(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,16,30,experiment);
 [kmode_shuffle_16_6_0975(experiment) et_kmode_shuffle_16_6_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,16,30,experiment);
 [kmode_shuffle_16_6_098(experiment) et_kmode_shuffle_16_6_098(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num098,16,30,experiment);
 [kmode_shuffle_16_6_0985(experiment) et_kmode_shuffle_16_6_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,16,30,experiment);
 [kmode_shuffle_16_6_099(experiment) et_kmode_shuffle_16_6_099(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num099,16,30,experiment);
 
 [Acc_16_6_095(experiment) et_Acc_16_6_095(experiment)] =   Spectral_method_unit_circle(16,R_h_num095,30,experiment);
 [Acc_16_6_0955(experiment) et_Acc_16_6_0955(experiment)] = Spectral_method_unit_circle(16,R_h_num0955,30,experiment);
 [Acc_16_6_096(experiment) et_Acc_16_6_096(experiment)] =   Spectral_method_unit_circle(16,R_h_num096,30,experiment);
 [Acc_16_6_0965(experiment) et_Acc_16_6_0965(experiment)] = Spectral_method_unit_circle(16,R_h_num0965,30,experiment);
 [Acc_16_6_097(experiment) et_Acc_16_6_097(experiment)] =   Spectral_method_unit_circle(16,R_h_num097,30,experiment);
 [Acc_16_6_0975(experiment) et_Acc_16_6_0975(experiment)] = Spectral_method_unit_circle(16,R_h_num0975,30,experiment);
 [Acc_16_6_098(experiment) et_Acc_16_6_098(experiment)] =   Spectral_method_unit_circle(16,R_h_num098,30,experiment);
 [Acc_16_6_0985(experiment) et_Acc_16_6_0985(experiment)] = Spectral_method_unit_circle(16,R_h_num0985,30,experiment);
 [Acc_16_6_099(experiment) et_Acc_16_6_099(experiment)] =   Spectral_method_unit_circle(16,R_h_num099,30,experiment);
end

 
 %Sixteen CLUSTERS;  9 CATEGORIES; 
for experiment = 1 : 20
experiment
r=32
g=9
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,16,9,p,experiment);

 [kmode_16_9_095(experiment) et_kmode_16_9_095(experiment)] =   kmode_observed_replicate(R_h_num095,16,30,experiment);
 [kmode_16_9_0955(experiment) et_kmode_16_9_0955(experiment)] = kmode_observed_replicate(R_h_num0955,16,30,experiment);
 [kmode_16_9_096(experiment) et_kmode_16_9_096(experiment)] =   kmode_observed_replicate(R_h_num096,16,30,experiment);
 [kmode_16_9_0965(experiment) et_kmode_16_9_0965(experiment)] = kmode_observed_replicate(R_h_num0965,16,30,experiment);
 [kmode_16_9_097(experiment) et_kmode_16_9_097(experiment)] =   kmode_observed_replicate(R_h_num097,16,30,experiment);
 [kmode_16_9_0975(experiment) et_kmode_16_9_0975(experiment)] = kmode_observed_replicate(R_h_num0975,16,30,experiment);
 [kmode_16_9_098(experiment) et_kmode_16_9_098(experiment)] =   kmode_observed_replicate(R_h_num098,16,30,experiment);
 [kmode_16_9_0985(experiment) et_kmode_16_9_0985(experiment)] = kmode_observed_replicate(R_h_num0985,16,30,experiment);
 [kmode_16_9_099(experiment) et_kmode_16_9_099(experiment)] =   kmode_observed_replicate(R_h_num099,16,30,experiment);
  
  
 
 [kmode_shuffle_16_9_095(experiment) et_kmode_shuffle_16_9_095(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num095,16,30,experiment);
 [kmode_shuffle_16_9_0955(experiment) et_kmode_shuffle_16_9_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,16,30,experiment);
 [kmode_shuffle_16_9_096(experiment) et_kmode_shuffle_16_9_096(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num096,16,30,experiment);
 [kmode_shuffle_16_9_0965(experiment) et_kmode_shuffle_16_9_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,16,30,experiment);
 [kmode_shuffle_16_9_097(experiment) et_kmode_shuffle_16_9_097(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,16,30,experiment);
 [kmode_shuffle_16_9_0975(experiment) et_kmode_shuffle_16_9_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,16,30,experiment);
 [kmode_shuffle_16_9_098(experiment) et_kmode_shuffle_16_9_098(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num098,16,30,experiment);
 [kmode_shuffle_16_9_0985(experiment) et_kmode_shuffle_16_9_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,16,30,experiment);
 [kmode_shuffle_16_9_099(experiment) et_kmode_shuffle_16_9_099(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num099,16,30,experiment);
  
 [Acc_16_9_095(experiment) et_Acc_16_9_095(experiment)] =   Spectral_method_unit_circle(16,R_h_num095,30,experiment);
 [Acc_16_9_0955(experiment) et_Acc_16_9_0955(experiment)] = Spectral_method_unit_circle(16,R_h_num0955,30,experiment);
 [Acc_16_9_096(experiment) et_Acc_16_9_096(experiment)] =   Spectral_method_unit_circle(16,R_h_num096,30,experiment);
 [Acc_16_9_0965(experiment) et_Acc_16_9_0965(experiment)] = Spectral_method_unit_circle(16,R_h_num0965,30,experiment);
 [Acc_16_9_097(experiment) et_Acc_16_9_097(experiment)] =   Spectral_method_unit_circle(16,R_h_num097,30,experiment);
 [Acc_16_9_0975(experiment) et_Acc_16_9_0975(experiment)] = Spectral_method_unit_circle(16,R_h_num0975,30,experiment);
 [Acc_16_9_098(experiment) et_Acc_16_9_098(experiment)] =   Spectral_method_unit_circle(16,R_h_num098,30,experiment);
 [Acc_16_9_0985(experiment) et_Acc_16_9_0985(experiment)] = Spectral_method_unit_circle(16,R_h_num0985,30,experiment);
 [Acc_16_9_099(experiment) et_Acc_16_9_099(experiment)] =   Spectral_method_unit_circle(16,R_h_num099,30,experiment);

end




 %Thirty two CLUSTERS; 3 CATEGORIES; 
for experiment = 1 : 20 
experiment
r=32 
g=3
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,32,3,p,experiment);

 [kmode_32_3_095(experiment) et_kmode_32_3_095(experiment)] =   kmode_observed_replicate(R_h_num095,32,30,experiment);
 [kmode_32_3_0955(experiment) et_kmode_32_3_0955(experiment)] = kmode_observed_replicate(R_h_num0955,32,30,experiment);
 [kmode_32_3_096(experiment) et_kmode_32_3_096(experiment)] =   kmode_observed_replicate(R_h_num096,32,30,experiment);
 [kmode_32_3_0965(experiment) et_kmode_32_3_0965(experiment)] = kmode_observed_replicate(R_h_num0965,32,30,experiment);
 [kmode_32_3_097(experiment) et_kmode_32_3_097(experiment)] =   kmode_observed_replicate(R_h_num097,32,30,experiment);
 [kmode_32_3_0975(experiment) et_kmode_32_3_0975(experiment)] = kmode_observed_replicate(R_h_num0975,32,30,experiment);
 [kmode_32_3_098(experiment) et_kmode_32_3_098(experiment)] =   kmode_observed_replicate(R_h_num098,32,30,experiment);
 [kmode_32_3_0985(experiment) et_kmode_32_3_0985(experiment)] = kmode_observed_replicate(R_h_num0985,32,30,experiment);
 [kmode_32_3_099(experiment) et_kmode_32_3_099(experiment)] =   kmode_observed_replicate(R_h_num099,32,30,experiment);
  
  
 
 [kmode_shuffle_32_3_095(experiment) et_kmode_shuffle_32_3_095(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num095,32,30,experiment);
 [kmode_shuffle_32_3_0955(experiment) et_kmode_shuffle_32_3_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,32,30,experiment);
 [kmode_shuffle_32_3_096(experiment) et_kmode_shuffle_32_3_096(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num096,32,30,experiment);
 [kmode_shuffle_32_3_0965(experiment) et_kmode_shuffle_32_3_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,32,30,experiment);
 [kmode_shuffle_32_3_097(experiment) et_kmode_shuffle_32_3_097(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,32,30,experiment);
 [kmode_shuffle_32_3_0975(experiment) et_kmode_shuffle_32_3_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,32,30,experiment);
 [kmode_shuffle_32_3_098(experiment) et_kmode_shuffle_32_3_098(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num098,32,30,experiment);
 [kmode_shuffle_32_3_0985(experiment) et_kmode_shuffle_32_3_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,32,30,experiment);
 [kmode_shuffle_32_3_099(experiment) et_kmode_shuffle_32_3_099(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num099,32,30,experiment);
  
 [Acc_32_3_095(experiment) et_Acc_32_3_095(experiment)] =   Spectral_method_unit_circle(32,R_h_num095,30,experiment);
 [Acc_32_3_0955(experiment) et_Acc_32_3_0955(experiment)] = Spectral_method_unit_circle(32,R_h_num0955,30,experiment);
 [Acc_32_3_096(experiment) et_Acc_32_3_096(experiment)] =   Spectral_method_unit_circle(32,R_h_num096,30,experiment);
 [Acc_32_3_0965(experiment) et_Acc_32_3_0965(experiment)] = Spectral_method_unit_circle(32,R_h_num0965,30,experiment);
 [Acc_32_3_097(experiment) et_Acc_32_3_097(experiment)] =   Spectral_method_unit_circle(32,R_h_num097,30,experiment);
 [Acc_32_3_0975(experiment) et_Acc_32_3_0975(experiment)] = Spectral_method_unit_circle(32,R_h_num0975,30,experiment);
 [Acc_32_3_098(experiment) et_Acc_32_3_098(experiment)] =   Spectral_method_unit_circle(32,R_h_num098,30,experiment);
 [Acc_32_3_0985(experiment) et_Acc_32_3_0985(experiment)] = Spectral_method_unit_circle(32,R_h_num0985,30,experiment);
 [Acc_32_3_099(experiment) et_Acc_32_3_099(experiment)] =   Spectral_method_unit_circle(32,R_h_num099,30,experiment);
end

 
 %Thirty two CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=32
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,32,6,p,experiment);

 [kmode_32_6_095(experiment) et_kmode_32_6_095(experiment)] =   kmode_observed_replicate(R_h_num095,32,30,experiment);
 [kmode_32_6_0955(experiment) et_kmode_32_6_0955(experiment)] = kmode_observed_replicate(R_h_num0955,32,30,experiment);
 [kmode_32_6_096(experiment) et_kmode_32_6_096(experiment)] =   kmode_observed_replicate(R_h_num096,32,30,experiment);
 [kmode_32_6_0965(experiment) et_kmode_32_6_0965(experiment)] = kmode_observed_replicate(R_h_num0965,32,30,experiment);
 [kmode_32_6_097(experiment) et_kmode_32_6_097(experiment)] =   kmode_observed_replicate(R_h_num097,32,30,experiment);
 [kmode_32_6_0975(experiment) et_kmode_32_6_0975(experiment)] = kmode_observed_replicate(R_h_num0975,32,30,experiment);
 [kmode_32_6_098(experiment) et_kmode_32_6_098(experiment)] =   kmode_observed_replicate(R_h_num098,32,30,experiment);
 [kmode_32_6_0985(experiment) et_kmode_32_6_0985(experiment)] = kmode_observed_replicate(R_h_num0985,32,30,experiment);
 [kmode_32_6_099(experiment) et_kmode_32_6_099(experiment)] =   kmode_observed_replicate(R_h_num099,32,30,experiment);
  
  [kmode_shuffle_32_6_095(experiment) et_kmode_shuffle_32_6_095(experiment)] =  kmode_observed_replicate_shuffle_each_rep(R_h_num095,32,30,experiment);
 [kmode_shuffle_32_6_0955(experiment) et_kmode_shuffle_32_6_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,32,30,experiment);
 [kmode_shuffle_32_6_096(experiment) et_kmode_shuffle_32_6_096(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num096,32,30,experiment);
 [kmode_shuffle_32_6_0965(experiment) et_kmode_shuffle_32_6_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,32,30,experiment);
 [kmode_shuffle_32_6_097(experiment) et_kmode_shuffle_32_6_097(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,32,30,experiment);
 [kmode_shuffle_32_6_0975(experiment) et_kmode_shuffle_32_6_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,32,30,experiment);
 [kmode_shuffle_32_6_098(experiment) et_kmode_shuffle_32_6_098(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num098,32,30,experiment);
 [kmode_shuffle_32_6_0985(experiment) et_kmode_shuffle_32_6_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,32,30,experiment);
 [kmode_shuffle_32_6_099(experiment) et_kmode_shuffle_32_6_099(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num099,32,30,experiment);
 
 [Acc_32_6_095(experiment) et_Acc_32_6_095(experiment)] =   Spectral_method_unit_circle(32,R_h_num095,30,experiment);
 [Acc_32_6_0955(experiment) et_Acc_32_6_0955(experiment)] = Spectral_method_unit_circle(32,R_h_num0955,30,experiment);
 [Acc_32_6_096(experiment) et_Acc_32_6_096(experiment)] =   Spectral_method_unit_circle(32,R_h_num096,30,experiment);
 [Acc_32_6_0965(experiment) et_Acc_32_6_0965(experiment)] = Spectral_method_unit_circle(32,R_h_num0965,30,experiment);
 [Acc_32_6_097(experiment) et_Acc_32_6_097(experiment)] =   Spectral_method_unit_circle(32,R_h_num097,30,experiment);
 [Acc_32_6_0975(experiment) et_Acc_32_6_0975(experiment)] = Spectral_method_unit_circle(32,R_h_num0975,30,experiment);
 [Acc_32_6_098(experiment) et_Acc_32_6_098(experiment)] =   Spectral_method_unit_circle(32,R_h_num098,30,experiment);
 [Acc_32_6_0985(experiment) et_Acc_32_6_0985(experiment)] = Spectral_method_unit_circle(32,R_h_num0985,30,experiment);
 [Acc_32_6_099(experiment) et_Acc_32_6_099(experiment)] =   Spectral_method_unit_circle(32,R_h_num099,30,experiment);
end

 
 %Thirty two CLUSTERS;  9 CATEGORIES; 
for experiment = 1 : 20
experiment
r=32
g=9
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,32,9,p,experiment);

 [kmode_32_9_095(experiment) et_kmode_32_9_095(experiment)] =   kmode_observed_replicate(R_h_num095,32,30,experiment);
 [kmode_32_9_0955(experiment) et_kmode_32_9_0955(experiment)] = kmode_observed_replicate(R_h_num0955,32,30,experiment);
 [kmode_32_9_096(experiment) et_kmode_32_9_096(experiment)] =   kmode_observed_replicate(R_h_num096,32,30,experiment);
 [kmode_32_9_0965(experiment) et_kmode_32_9_0965(experiment)] = kmode_observed_replicate(R_h_num0965,32,30,experiment);
 [kmode_32_9_097(experiment) et_kmode_32_9_097(experiment)] =   kmode_observed_replicate(R_h_num097,32,30,experiment);
 [kmode_32_9_0975(experiment) et_kmode_32_9_0975(experiment)] = kmode_observed_replicate(R_h_num0975,32,30,experiment);
 [kmode_32_9_098(experiment) et_kmode_32_9_098(experiment)] =   kmode_observed_replicate(R_h_num098,32,30,experiment);
 [kmode_32_9_0985(experiment) et_kmode_32_9_0985(experiment)] = kmode_observed_replicate(R_h_num0985,32,30,experiment);
 [kmode_32_9_099(experiment) et_kmode_32_9_099(experiment)] =   kmode_observed_replicate(R_h_num099,32,30,experiment);
  
  
 
 [kmode_shuffle_32_9_095(experiment) et_kmode_shuffle_32_9_095(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num095,32,30,experiment);
 [kmode_shuffle_32_9_0955(experiment) et_kmode_shuffle_32_9_0955(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0955,32,30,experiment);
 [kmode_shuffle_32_9_096(experiment) et_kmode_shuffle_32_9_096(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num096,32,30,experiment);
 [kmode_shuffle_32_9_0965(experiment) et_kmode_shuffle_32_9_0965(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0965,32,30,experiment);
 [kmode_shuffle_32_9_097(experiment) et_kmode_shuffle_32_9_097(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,32,30,experiment);
 [kmode_shuffle_32_9_0975(experiment) et_kmode_shuffle_32_9_0975(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0975,32,30,experiment);
 [kmode_shuffle_32_9_098(experiment) et_kmode_shuffle_32_9_098(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num098,32,30,experiment);
 [kmode_shuffle_32_9_0985(experiment) et_kmode_shuffle_32_9_0985(experiment)] = kmode_observed_replicate_shuffle_each_rep(R_h_num0985,32,30,experiment);
 [kmode_shuffle_32_9_099(experiment) et_kmode_shuffle_32_9_099(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num099,32,30,experiment);
  
 [Acc_32_9_095(experiment) et_Acc_32_9_095(experiment)] =   Spectral_method_unit_circle(32,R_h_num095,30,experiment);
 [Acc_32_9_0955(experiment) et_Acc_32_9_0955(experiment)] = Spectral_method_unit_circle(32,R_h_num0955,30,experiment);
 [Acc_32_9_096(experiment) et_Acc_32_9_096(experiment)] =   Spectral_method_unit_circle(32,R_h_num096,30,experiment);
 [Acc_32_9_0965(experiment) et_Acc_32_9_0965(experiment)] = Spectral_method_unit_circle(32,R_h_num0965,30,experiment);
 [Acc_32_9_097(experiment) et_Acc_32_9_097(experiment)] =   Spectral_method_unit_circle(32,R_h_num097,30,experiment);
 [Acc_32_9_0975(experiment) et_Acc_32_9_0975(experiment)] = Spectral_method_unit_circle(32,R_h_num0975,30,experiment);
 [Acc_32_9_098(experiment) et_Acc_32_9_098(experiment)] =   Spectral_method_unit_circle(32,R_h_num098,30,experiment);
 [Acc_32_9_0985(experiment) et_Acc_32_9_0985(experiment)] = Spectral_method_unit_circle(32,R_h_num0985,30,experiment);
 [Acc_32_9_099(experiment) et_Acc_32_9_099(experiment)] =   Spectral_method_unit_circle(32,R_h_num099,30,experiment);

end



toc;


