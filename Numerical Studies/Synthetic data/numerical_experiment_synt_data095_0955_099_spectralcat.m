n=512;m=512;p=0.2 
%n=1024;m=1024;p=0.2 

tic;
 %TWO CLUSTERS; 3 CATEGORIES; 
for experiment = 1 : 20
experiment
r=2
g=3
 
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,2,3,p,experiment);

 [spectralCAT_2_3_095(experiment) et_spectralCAT_2_3_095(experiment)] = spectralCAT(R_h_num095,2,30,experiment);
 [spectralCAT_2_3_0955(experiment) et_spectralCAT_2_3_0955(experiment)] = spectralCAT(R_h_num0955,2,30,experiment);
 [spectralCAT_2_3_096(experiment) et_spectralCAT_2_3_096(experiment)] = spectralCAT(R_h_num096,2,30,experiment);
 [spectralCAT_2_3_0965(experiment) et_spectralCAT_2_3_0965(experiment)] = spectralCAT(R_h_num0965,2,30,experiment);
 [spectralCAT_2_3_097(experiment) et_spectralCAT_2_3_097(experiment)] = spectralCAT(R_h_num097,2,30,experiment);
 [spectralCAT_2_3_0975(experiment) et_spectralCAT_2_3_0975(experiment)] = spectralCAT(R_h_num0975,2,30,experiment);
 [spectralCAT_2_3_098(experiment) et_spectralCAT_2_3_098(experiment)] = spectralCAT(R_h_num098,2,30,experiment);
 [spectralCAT_2_3_0985(experiment) et_spectralCAT_2_3_0985(experiment)] = spectralCAT(R_h_num0985,2,30,experiment);
 [spectralCAT_2_3_099(experiment) et_spectralCAT_2_3_099(experiment)] = spectralCAT(R_h_num099,2,30,experiment);
end

   
 %TWO CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=2
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,2,6,p,experiment);
 [spectralCAT_2_6_095(experiment) et_spectralCAT_2_6_095(experiment)] = spectralCAT(R_h_num095,2,30,experiment);
 [spectralCAT_2_6_0955(experiment) et_spectralCAT_2_6_0955(experiment)] = spectralCAT(R_h_num0955,2,30,experiment);
 [spectralCAT_2_6_096(experiment) et_spectralCAT_2_6_096(experiment)] = spectralCAT(R_h_num096,2,30,experiment);
 [spectralCAT_2_6_0965(experiment) et_spectralCAT_2_6_0965(experiment)] = spectralCAT(R_h_num0965,2,30,experiment);
 [spectralCAT_2_6_097(experiment) et_spectralCAT_2_6_097(experiment)] = spectralCAT(R_h_num097,2,30,experiment);
 [spectralCAT_2_6_0975(experiment) et_spectralCAT_2_6_0975(experiment)] = spectralCAT(R_h_num0975,2,30,experiment);
 [spectralCAT_2_6_098(experiment) et_spectralCAT_2_6_098(experiment)] = spectralCAT(R_h_num098,2,30,experiment);
 [spectralCAT_2_6_0985(experiment) et_spectralCAT_2_6_0985(experiment)] = spectralCAT(R_h_num0985,2,30,experiment);
 [spectralCAT_2_6_099(experiment) et_spectralCAT_2_6_099(experiment)] = spectralCAT(R_h_num099,2,30,experiment);
end


for experiment = 1 : 20
experiment
r=2
g=9
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,2,9,p,experiment);


 [spectralCAT_2_9_095(experiment) et_spectralCAT_2_9_095(experiment)] = spectralCAT(R_h_num095,2,30,experiment);
 [spectralCAT_2_9_0955(experiment) et_spectralCAT_2_9_0955(experiment)] = spectralCAT(R_h_num0955,2,30,experiment);
 [spectralCAT_2_9_096(experiment) et_spectralCAT_2_9_096(experiment)] = spectralCAT(R_h_num096,2,30,experiment);
 [spectralCAT_2_9_0965(experiment) et_spectralCAT_2_9_0965(experiment)] = spectralCAT(R_h_num0965,2,30,experiment);
 [spectralCAT_2_9_097(experiment) et_spectralCAT_2_9_097(experiment)] = spectralCAT(R_h_num097,2,30,experiment);
 [spectralCAT_2_9_0975(experiment) et_spectralCAT_2_9_0975(experiment)] = spectralCAT(R_h_num0975,2,30,experiment);
 [spectralCAT_2_9_098(experiment) et_spectralCAT_2_9_098(experiment)] = spectralCAT(R_h_num098,2,30,experiment);
 [spectralCAT_2_9_0985(experiment) et_spectralCAT_2_9_0985(experiment)] = spectralCAT(R_h_num0985,2,30,experiment);
 [spectralCAT_2_9_099(experiment) et_spectralCAT_2_9_099(experiment)] = spectralCAT(R_h_num099,2,30,experiment);
end




 %Four CLUSTERS; 3 CATEGORIES; 
for experiment = 1 : 20 
experiment
r=4
g=3
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,4,3,p,experiment);

 [spectralCAT_4_3_095(experiment) et_spectralCAT_4_3_095(experiment)] = spectralCAT(R_h_num095,4,30,experiment);
 [spectralCAT_4_3_0955(experiment) et_spectralCAT_4_3_0955(experiment)] = spectralCAT(R_h_num0955,4,30,experiment);
 [spectralCAT_4_3_096(experiment) et_spectralCAT_4_3_096(experiment)] = spectralCAT(R_h_num096,4,30,experiment);
 [spectralCAT_4_3_0965(experiment) et_spectralCAT_4_3_0965(experiment)] = spectralCAT(R_h_num0965,4,30,experiment);
 [spectralCAT_4_3_097(experiment) et_spectralCAT_4_3_097(experiment)] = spectralCAT(R_h_num097,4,30,experiment);
 [spectralCAT_4_3_0975(experiment) et_spectralCAT_4_3_0975(experiment)] = spectralCAT(R_h_num0975,4,30,experiment);
 [spectralCAT_4_3_098(experiment) et_spectralCAT_4_3_098(experiment)] = spectralCAT(R_h_num098,4,30,experiment);
 [spectralCAT_4_3_0985(experiment) et_spectralCAT_4_3_0985(experiment)] = spectralCAT(R_h_num0985,4,30,experiment);
 [spectralCAT_4_3_099(experiment) et_spectralCAT_4_3_099(experiment)] = spectralCAT(R_h_num099,4,30,experiment);
  
end

 %Four CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=4
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,4,6,p,experiment);

 [spectralCAT_4_6_095(experiment) et_spectralCAT_4_6_095(experiment)] =   spectralCAT(R_h_num095,4,30,experiment);
 [spectralCAT_4_6_0955(experiment) et_spectralCAT_4_6_0955(experiment)] = spectralCAT(R_h_num0955,4,30,experiment);
 [spectralCAT_4_6_096(experiment) et_spectralCAT_4_6_096(experiment)] =   spectralCAT(R_h_num096,4,30,experiment);
 [spectralCAT_4_6_0965(experiment) et_spectralCAT_4_6_0965(experiment)] = spectralCAT(R_h_num0965,4,30,experiment);
 [spectralCAT_4_6_097(experiment) et_spectralCAT_4_6_097(experiment)] =   spectralCAT(R_h_num097,4,30,experiment);
 [spectralCAT_4_6_0975(experiment) et_spectralCAT_4_6_0975(experiment)] = spectralCAT(R_h_num0975,4,30,experiment);
 [spectralCAT_4_6_098(experiment) et_spectralCAT_4_6_098(experiment)] =   spectralCAT(R_h_num098,4,30,experiment);
 [spectralCAT_4_6_0985(experiment) et_spectralCAT_4_6_0985(experiment)] = spectralCAT(R_h_num0985,4,30,experiment);
 [spectralCAT_4_6_099(experiment) et_spectralCAT_4_6_099(experiment)] =   spectralCAT(R_h_num099,4,30,experiment);
end

 %Four CLUSTERS;  9 CATEGORIES; 
for experiment = 1 : 20
experiment
r=4
g=9
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,4,9,p,experiment);


 [spectralCAT_4_9_095(experiment) et_spectralCAT_4_9_095(experiment)] =   spectralCAT(R_h_num095,4,30,experiment);
 [spectralCAT_4_9_0955(experiment) et_spectralCAT_4_9_0955(experiment)] = spectralCAT(R_h_num0955,4,30,experiment);
 [spectralCAT_4_9_096(experiment) et_spectralCAT_4_9_096(experiment)] =   spectralCAT(R_h_num096,4,30,experiment);
 [spectralCAT_4_9_0965(experiment) et_spectralCAT_4_9_0965(experiment)] = spectralCAT(R_h_num0965,4,30,experiment);
 [spectralCAT_4_9_097(experiment) et_spectralCAT_4_9_097(experiment)] =   spectralCAT(R_h_num097,4,30,experiment);
 [spectralCAT_4_9_0975(experiment) et_spectralCAT_4_9_0975(experiment)] = spectralCAT(R_h_num0975,4,30,experiment);
 [spectralCAT_4_9_098(experiment) et_spectralCAT_4_9_098(experiment)] =   spectralCAT(R_h_num098,4,30,experiment);
 [spectralCAT_4_9_0985(experiment) et_spectralCAT_4_9_0985(experiment)] = spectralCAT(R_h_num0985,4,30,experiment);
 [spectralCAT_4_9_099(experiment) et_spectralCAT_4_9_099(experiment)] =   spectralCAT(R_h_num099,4,30,experiment);
end

 %EIGHT CLUSTERS; 3 CATEGORIES; 
for experiment = 1 : 20 
experiment
r=8 
g=3
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,8,3,p,experiment);

 [spectralCAT_8_3_095(experiment) et_spectralCAT_8_3_095(experiment)] =   spectralCAT(R_h_num095,8,30,experiment);
 [spectralCAT_8_3_0955(experiment) et_spectralCAT_8_3_0955(experiment)] = spectralCAT(R_h_num0955,8,30,experiment);
 [spectralCAT_8_3_096(experiment) et_spectralCAT_8_3_096(experiment)] =   spectralCAT(R_h_num096,8,30,experiment);
 [spectralCAT_8_3_0965(experiment) et_spectralCAT_8_3_0965(experiment)] = spectralCAT(R_h_num0965,8,30,experiment);
 [spectralCAT_8_3_097(experiment) et_spectralCAT_8_3_097(experiment)] =   spectralCAT(R_h_num097,8,30,experiment);
 [spectralCAT_8_3_0975(experiment) et_spectralCAT_8_3_0975(experiment)] = spectralCAT(R_h_num0975,8,30,experiment);
 [spectralCAT_8_3_098(experiment) et_spectralCAT_8_3_098(experiment)] =   spectralCAT(R_h_num098,8,30,experiment);
 [spectralCAT_8_3_0985(experiment) et_spectralCAT_8_3_0985(experiment)] = spectralCAT(R_h_num0985,8,30,experiment);
 [spectralCAT_8_3_099(experiment) et_spectralCAT_8_3_099(experiment)] =   spectralCAT(R_h_num099,8,30,experiment);
  
end

 %EIGHT CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=8
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,8,6,p,experiment);

 [spectralCAT_8_6_095(experiment) et_spectralCAT_8_6_095(experiment)] =   spectralCAT(R_h_num095,8,30,experiment);
 [spectralCAT_8_6_0955(experiment) et_spectralCAT_8_6_0955(experiment)] = spectralCAT(R_h_num0955,8,30,experiment);
 [spectralCAT_8_6_096(experiment) et_spectralCAT_8_6_096(experiment)] =   spectralCAT(R_h_num096,8,30,experiment);
 [spectralCAT_8_6_0965(experiment) et_spectralCAT_8_6_0965(experiment)] = spectralCAT(R_h_num0965,8,30,experiment);
 [spectralCAT_8_6_097(experiment) et_spectralCAT_8_6_097(experiment)] =   spectralCAT(R_h_num097,8,30,experiment);
 [spectralCAT_8_6_0975(experiment) et_spectralCAT_8_6_0975(experiment)] = spectralCAT(R_h_num0975,8,30,experiment);
 [spectralCAT_8_6_098(experiment) et_spectralCAT_8_6_098(experiment)] =   spectralCAT(R_h_num098,8,30,experiment);
 [spectralCAT_8_6_0985(experiment) et_spectralCAT_8_6_0985(experiment)] = spectralCAT(R_h_num0985,8,30,experiment);
 [spectralCAT_8_6_099(experiment) et_spectralCAT_8_6_099(experiment)] =   spectralCAT(R_h_num099,8,30,experiment);
end

 %EIGHT CLUSTERS;  9 CATEGORIES; 
 %note: spectralCAT_8_9_096(experiment) does not work on 11th experiment;
for experiment = 1 : 20
experiment
r=8
g=9
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,8,9,p,experiment);

 [spectralCAT_8_9_095(experiment) et_spectralCAT_8_9_095(experiment)] =   spectralCAT(R_h_num095,8,30,experiment);
 [spectralCAT_8_9_0955(experiment) et_spectralCAT_8_9_0955(experiment)] = spectralCAT(R_h_num0955,8,30,experiment);
 [spectralCAT_8_9_096(experiment) et_spectralCAT_8_9_096(experiment)] =   spectralCAT(R_h_num096,8,30,experiment);
 [spectralCAT_8_9_0965(experiment) et_spectralCAT_8_9_0965(experiment)] = spectralCAT(R_h_num0965,8,30,experiment);
 [spectralCAT_8_9_097(experiment) et_spectralCAT_8_9_097(experiment)] =   spectralCAT(R_h_num097,8,30,experiment);
 [spectralCAT_8_9_0975(experiment) et_spectralCAT_8_9_0975(experiment)] = spectralCAT(R_h_num0975,8,30,experiment);
 [spectralCAT_8_9_098(experiment) et_spectralCAT_8_9_098(experiment)] =   spectralCAT(R_h_num098,8,30,experiment);
 [spectralCAT_8_9_0985(experiment) et_spectralCAT_8_9_0985(experiment)] = spectralCAT(R_h_num0985,8,30,experiment);
 [spectralCAT_8_9_099(experiment) et_spectralCAT_8_9_099(experiment)] =   spectralCAT(R_h_num099,8,30,experiment);
  
end

tic;
 %THIRTY-TWO CLUSTERS; 3 CATEGORIES; 
for experiment = 1 : 20
experiment
r=32
g=3
 
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,32,3,p,experiment);

 [spectralCAT_32_3_095(experiment) et_spectralCAT_32_3_095(experiment)] = spectralCAT(R_h_num095,32,30,experiment);
 [spectralCAT_32_3_0955(experiment) et_spectralCAT_32_3_0955(experiment)] = spectralCAT(R_h_num0955,32,30,experiment);
 [spectralCAT_32_3_096(experiment) et_spectralCAT_32_3_096(experiment)] = spectralCAT(R_h_num096,32,30,experiment);
 [spectralCAT_32_3_0965(experiment) et_spectralCAT_32_3_0965(experiment)] = spectralCAT(R_h_num0965,32,30,experiment);
 [spectralCAT_32_3_097(experiment) et_spectralCAT_32_3_097(experiment)] = spectralCAT(R_h_num097,32,30,experiment);
 [spectralCAT_32_3_0975(experiment) et_spectralCAT_32_3_0975(experiment)] = spectralCAT(R_h_num0975,32,30,experiment);
 [spectralCAT_32_3_098(experiment) et_spectralCAT_32_3_098(experiment)] = spectralCAT(R_h_num098,32,30,experiment);
 [spectralCAT_32_3_0985(experiment) et_spectralCAT_32_3_0985(experiment)] = spectralCAT(R_h_num0985,32,30,experiment);
 [spectralCAT_32_3_099(experiment) et_spectralCAT_32_3_099(experiment)] = spectralCAT(R_h_num099,32,30,experiment);
end

   
 %THIRTY-TWO CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=32
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,32,6,p,experiment);
 [spectralCAT_32_6_095(experiment) et_spectralCAT_32_6_095(experiment)] = spectralCAT(R_h_num095,32,30,experiment);
 [spectralCAT_32_6_0955(experiment) et_spectralCAT_32_6_0955(experiment)] = spectralCAT(R_h_num0955,32,30,experiment);
 [spectralCAT_32_6_096(experiment) et_spectralCAT_32_6_096(experiment)] = spectralCAT(R_h_num096,32,30,experiment);
 [spectralCAT_32_6_0965(experiment) et_spectralCAT_32_6_0965(experiment)] = spectralCAT(R_h_num0965,32,30,experiment);
 [spectralCAT_32_6_097(experiment) et_spectralCAT_32_6_097(experiment)] = spectralCAT(R_h_num097,32,30,experiment);
 [spectralCAT_32_6_0975(experiment) et_spectralCAT_32_6_0975(experiment)] = spectralCAT(R_h_num0975,32,30,experiment);
 [spectralCAT_32_6_098(experiment) et_spectralCAT_32_6_098(experiment)] = spectralCAT(R_h_num098,32,30,experiment);
 [spectralCAT_32_6_0985(experiment) et_spectralCAT_32_6_0985(experiment)] = spectralCAT(R_h_num0985,32,30,experiment);
 [spectralCAT_32_6_099(experiment) et_spectralCAT_32_6_099(experiment)] = spectralCAT(R_h_num099,32,30,experiment);
end

%THIRTY-TWO CLUSTERS;  9 CATEGORIES; 
for experiment = 1 : 20
experiment
r=32
g=9
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,32,9,p,experiment);


 [spectralCAT_32_9_095(experiment) et_spectralCAT_32_9_095(experiment)] = spectralCAT(R_h_num095,32,30,experiment);
 [spectralCAT_32_9_0955(experiment) et_spectralCAT_32_9_0955(experiment)] = spectralCAT(R_h_num0955,32,30,experiment);
 [spectralCAT_32_9_096(experiment) et_spectralCAT_32_9_096(experiment)] = spectralCAT(R_h_num096,32,30,experiment);
 [spectralCAT_32_9_0965(experiment) et_spectralCAT_32_9_0965(experiment)] = spectralCAT(R_h_num0965,32,30,experiment);
 [spectralCAT_32_9_097(experiment) et_spectralCAT_32_9_097(experiment)] = spectralCAT(R_h_num097,32,30,experiment);
 [spectralCAT_32_9_0975(experiment) et_spectralCAT_32_9_0975(experiment)] = spectralCAT(R_h_num0975,32,30,experiment);
 [spectralCAT_32_9_098(experiment) et_spectralCAT_32_9_098(experiment)] = spectralCAT(R_h_num098,32,30,experiment);
 [spectralCAT_32_9_0985(experiment) et_spectralCAT_32_9_0985(experiment)] = spectralCAT(R_h_num0985,32,30,experiment);
 [spectralCAT_32_9_099(experiment) et_spectralCAT_32_9_099(experiment)] = spectralCAT(R_h_num099,32,30,experiment);
end




%TWO CLUSTERS;
 
mean_spectralCAT_2_3(1)=mean(spectralCAT_2_3_095);
mean_spectralCAT_2_3(2)=mean(spectralCAT_2_3_0955);
mean_spectralCAT_2_3(3)=mean(spectralCAT_2_3_096);
mean_spectralCAT_2_3(4)=mean(spectralCAT_2_3_0965);
mean_spectralCAT_2_3(5)=mean(spectralCAT_2_3_097);
mean_spectralCAT_2_3(6)=mean(spectralCAT_2_3_0975);
mean_spectralCAT_2_3(7)=mean(spectralCAT_2_3_098);
mean_spectralCAT_2_3(8)=mean(spectralCAT_2_3_0985);
mean_spectralCAT_2_3(9)=mean(spectralCAT_2_3_099);

mean_spectralCAT_2_6(1)=mean(spectralCAT_2_6_095);
mean_spectralCAT_2_6(2)=mean(spectralCAT_2_6_0955);
mean_spectralCAT_2_6(3)=mean(spectralCAT_2_6_096);
mean_spectralCAT_2_6(4)=mean(spectralCAT_2_6_0965);
mean_spectralCAT_2_6(5)=mean(spectralCAT_2_6_097);
mean_spectralCAT_2_6(6)=mean(spectralCAT_2_6_0975);
mean_spectralCAT_2_6(7)=mean(spectralCAT_2_6_098);
mean_spectralCAT_2_6(8)=mean(spectralCAT_2_6_0985);
mean_spectralCAT_2_6(9)=mean(spectralCAT_2_6_099);
 
mean_spectralCAT_2_9(1)=mean(spectralCAT_2_9_095);
mean_spectralCAT_2_9(2)=mean(spectralCAT_2_9_0955);
mean_spectralCAT_2_9(3)=mean(spectralCAT_2_9_096);
mean_spectralCAT_2_9(4)=mean(spectralCAT_2_9_0965);
mean_spectralCAT_2_9(5)=mean(spectralCAT_2_9_097);
mean_spectralCAT_2_9(6)=mean(spectralCAT_2_9_0975);
mean_spectralCAT_2_9(7)=mean(spectralCAT_2_9_098);
mean_spectralCAT_2_9(8)=mean(spectralCAT_2_9_0985);
mean_spectralCAT_2_9(9)=mean(spectralCAT_2_9_099);

std_spectralCAT_2_3(1)=std(spectralCAT_2_3_095);
std_spectralCAT_2_3(2)=std(spectralCAT_2_3_0955);
std_spectralCAT_2_3(3)=std(spectralCAT_2_3_096);
std_spectralCAT_2_3(4)=std(spectralCAT_2_3_0965);
std_spectralCAT_2_3(5)=std(spectralCAT_2_3_097);
std_spectralCAT_2_3(6)=std(spectralCAT_2_3_0975);
std_spectralCAT_2_3(7)=std(spectralCAT_2_3_098);
std_spectralCAT_2_3(8)=std(spectralCAT_2_3_0985);
std_spectralCAT_2_3(9)=std(spectralCAT_2_3_099);
 
std_spectralCAT_2_6(1)=std(spectralCAT_2_6_095);
std_spectralCAT_2_6(2)=std(spectralCAT_2_6_0955);
std_spectralCAT_2_6(3)=std(spectralCAT_2_6_096);
std_spectralCAT_2_6(4)=std(spectralCAT_2_6_0965);
std_spectralCAT_2_6(5)=std(spectralCAT_2_6_097);
std_spectralCAT_2_6(6)=std(spectralCAT_2_6_0975);
std_spectralCAT_2_6(7)=std(spectralCAT_2_6_098);
std_spectralCAT_2_6(8)=std(spectralCAT_2_6_0985);
std_spectralCAT_2_6(9)=std(spectralCAT_2_6_099);

 
std_spectralCAT_2_9(1)=std(spectralCAT_2_9_095);
std_spectralCAT_2_9(2)=std(spectralCAT_2_9_0955);
std_spectralCAT_2_9(3)=std(spectralCAT_2_9_096);
std_spectralCAT_2_9(4)=std(spectralCAT_2_9_0965);
std_spectralCAT_2_9(5)=std(spectralCAT_2_9_097);
std_spectralCAT_2_9(6)=std(spectralCAT_2_9_0975);
std_spectralCAT_2_9(7)=std(spectralCAT_2_9_098);
std_spectralCAT_2_9(8)=std(spectralCAT_2_9_0985);
std_spectralCAT_2_9(9)=std(spectralCAT_2_9_099);
 
 
%Four CLUSTERS
mean_spectralCAT_4_3(1)=mean(spectralCAT_4_3_095);
mean_spectralCAT_4_3(2)=mean(spectralCAT_4_3_0955);
mean_spectralCAT_4_3(3)=mean(spectralCAT_4_3_096);
mean_spectralCAT_4_3(4)=mean(spectralCAT_4_3_0965);
mean_spectralCAT_4_3(5)=mean(spectralCAT_4_3_097);
mean_spectralCAT_4_3(6)=mean(spectralCAT_4_3_0975);
mean_spectralCAT_4_3(7)=mean(spectralCAT_4_3_098);
mean_spectralCAT_4_3(8)=mean(spectralCAT_4_3_0985);
mean_spectralCAT_4_3(9)=mean(spectralCAT_4_3_099);

mean_spectralCAT_4_6(1)=mean(spectralCAT_4_6_095);
mean_spectralCAT_4_6(2)=mean(spectralCAT_4_6_0955);
mean_spectralCAT_4_6(3)=mean(spectralCAT_4_6_096);
mean_spectralCAT_4_6(4)=mean(spectralCAT_4_6_0965);
mean_spectralCAT_4_6(5)=mean(spectralCAT_4_6_097);
mean_spectralCAT_4_6(6)=mean(spectralCAT_4_6_0975);
mean_spectralCAT_4_6(7)=mean(spectralCAT_4_6_098);
mean_spectralCAT_4_6(8)=mean(spectralCAT_4_6_0985);
mean_spectralCAT_4_6(9)=mean(spectralCAT_4_6_099);
 
mean_spectralCAT_4_9(1)=mean(spectralCAT_4_9_095);
mean_spectralCAT_4_9(2)=mean(spectralCAT_4_9_0955);
mean_spectralCAT_4_9(3)=mean(spectralCAT_4_9_096);
mean_spectralCAT_4_9(4)=mean(spectralCAT_4_9_0965);
mean_spectralCAT_4_9(5)=mean(spectralCAT_4_9_097);
mean_spectralCAT_4_9(6)=mean(spectralCAT_4_9_0975);
mean_spectralCAT_4_9(7)=mean(spectralCAT_4_9_098);
mean_spectralCAT_4_9(8)=mean(spectralCAT_4_9_0985);
mean_spectralCAT_4_9(9)=mean(spectralCAT_4_9_099);

std_spectralCAT_4_3(1)=std(spectralCAT_4_3_095);
std_spectralCAT_4_3(2)=std(spectralCAT_4_3_0955);
std_spectralCAT_4_3(3)=std(spectralCAT_4_3_096);
std_spectralCAT_4_3(4)=std(spectralCAT_4_3_0965);
std_spectralCAT_4_3(5)=std(spectralCAT_4_3_097);
std_spectralCAT_4_3(6)=std(spectralCAT_4_3_0975);
std_spectralCAT_4_3(7)=std(spectralCAT_4_3_098);
std_spectralCAT_4_3(8)=std(spectralCAT_4_3_0985);
std_spectralCAT_4_3(9)=std(spectralCAT_4_3_099);
 
std_spectralCAT_4_6(1)=std(spectralCAT_4_6_095);
std_spectralCAT_4_6(2)=std(spectralCAT_4_6_0955);
std_spectralCAT_4_6(3)=std(spectralCAT_4_6_096);
std_spectralCAT_4_6(4)=std(spectralCAT_4_6_0965);
std_spectralCAT_4_6(5)=std(spectralCAT_4_6_097);
std_spectralCAT_4_6(6)=std(spectralCAT_4_6_0975);
std_spectralCAT_4_6(7)=std(spectralCAT_4_6_098);
std_spectralCAT_4_6(8)=std(spectralCAT_4_6_0985);
std_spectralCAT_4_6(9)=std(spectralCAT_4_6_099);

 
std_spectralCAT_4_9(1)=std(spectralCAT_4_9_095);
std_spectralCAT_4_9(2)=std(spectralCAT_4_9_0955);
std_spectralCAT_4_9(3)=std(spectralCAT_4_9_096);
std_spectralCAT_4_9(4)=std(spectralCAT_4_9_0965);
std_spectralCAT_4_9(5)=std(spectralCAT_4_9_097);
std_spectralCAT_4_9(6)=std(spectralCAT_4_9_0975);
std_spectralCAT_4_9(7)=std(spectralCAT_4_9_098);
std_spectralCAT_4_9(8)=std(spectralCAT_4_9_0985);
std_spectralCAT_4_9(9)=std(spectralCAT_4_9_099);
 
 
%Eight CLUSTERS
mean_spectralCAT_8_3(1)=mean(spectralCAT_8_3_095);
mean_spectralCAT_8_3(2)=mean(spectralCAT_8_3_0955);
mean_spectralCAT_8_3(3)=mean(spectralCAT_8_3_096);
mean_spectralCAT_8_3(4)=mean(spectralCAT_8_3_0965);
mean_spectralCAT_8_3(5)=mean(spectralCAT_8_3_097);
mean_spectralCAT_8_3(6)=mean(spectralCAT_8_3_0975);
mean_spectralCAT_8_3(7)=mean(spectralCAT_8_3_098);
mean_spectralCAT_8_3(8)=mean(spectralCAT_8_3_0985);
mean_spectralCAT_8_3(9)=mean(spectralCAT_8_3_099);

mean_spectralCAT_8_6(1)=mean(spectralCAT_8_6_095);
mean_spectralCAT_8_6(2)=mean(spectralCAT_8_6_0955);
mean_spectralCAT_8_6(3)=mean(spectralCAT_8_6_096);
mean_spectralCAT_8_6(4)=mean(spectralCAT_8_6_0965);
mean_spectralCAT_8_6(5)=mean(spectralCAT_8_6_097);
mean_spectralCAT_8_6(6)=mean(spectralCAT_8_6_0975);
mean_spectralCAT_8_6(7)=mean(spectralCAT_8_6_098);
mean_spectralCAT_8_6(8)=mean(spectralCAT_8_6_0985);
mean_spectralCAT_8_6(9)=mean(spectralCAT_8_6_099);
 
mean_spectralCAT_8_9(1)=mean(spectralCAT_8_9_095);
mean_spectralCAT_8_9(2)=mean(spectralCAT_8_9_0955);
mean_spectralCAT_8_9(3)=mean(spectralCAT_8_9_096);
mean_spectralCAT_8_9(4)=mean(spectralCAT_8_9_0965);
mean_spectralCAT_8_9(5)=mean(spectralCAT_8_9_097);
mean_spectralCAT_8_9(6)=mean(spectralCAT_8_9_0975);
mean_spectralCAT_8_9(7)=mean(spectralCAT_8_9_098);
mean_spectralCAT_8_9(8)=mean(spectralCAT_8_9_0985);
mean_spectralCAT_8_9(9)=mean(spectralCAT_8_9_099);

std_spectralCAT_8_3(1)=std(spectralCAT_8_3_095);
std_spectralCAT_8_3(2)=std(spectralCAT_8_3_0955);
std_spectralCAT_8_3(3)=std(spectralCAT_8_3_096);
std_spectralCAT_8_3(4)=std(spectralCAT_8_3_0965);
std_spectralCAT_8_3(5)=std(spectralCAT_8_3_097);
std_spectralCAT_8_3(6)=std(spectralCAT_8_3_0975);
std_spectralCAT_8_3(7)=std(spectralCAT_8_3_098);
std_spectralCAT_8_3(8)=std(spectralCAT_8_3_0985);
std_spectralCAT_8_3(9)=std(spectralCAT_8_3_099);
 
std_spectralCAT_8_6(1)=std(spectralCAT_8_6_095);
std_spectralCAT_8_6(2)=std(spectralCAT_8_6_0955);
std_spectralCAT_8_6(3)=std(spectralCAT_8_6_096);
std_spectralCAT_8_6(4)=std(spectralCAT_8_6_0965);
std_spectralCAT_8_6(5)=std(spectralCAT_8_6_097);
std_spectralCAT_8_6(6)=std(spectralCAT_8_6_0975);
std_spectralCAT_8_6(7)=std(spectralCAT_8_6_098);
std_spectralCAT_8_6(8)=std(spectralCAT_8_6_0985);
std_spectralCAT_8_6(9)=std(spectralCAT_8_6_099);

 
std_spectralCAT_8_9(1)=std(spectralCAT_8_9_095);
std_spectralCAT_8_9(2)=std(spectralCAT_8_9_0955);
std_spectralCAT_8_9(3)=std(spectralCAT_8_9_096);
std_spectralCAT_8_9(4)=std(spectralCAT_8_9_0965);
std_spectralCAT_8_9(5)=std(spectralCAT_8_9_097);
std_spectralCAT_8_9(6)=std(spectralCAT_8_9_0975);
std_spectralCAT_8_9(7)=std(spectralCAT_8_9_098);
std_spectralCAT_8_9(8)=std(spectralCAT_8_9_0985);
std_spectralCAT_8_9(9)=std(spectralCAT_8_9_099);
 
%THIRTY TWO CLUSTERS;
 
mean_spectralCAT_32_3(1)=mean(spectralCAT_32_3_095);
mean_spectralCAT_32_3(2)=mean(spectralCAT_32_3_0955);
mean_spectralCAT_32_3(3)=mean(spectralCAT_32_3_096);
mean_spectralCAT_32_3(4)=mean(spectralCAT_32_3_0965);
mean_spectralCAT_32_3(5)=mean(spectralCAT_32_3_097);
mean_spectralCAT_32_3(6)=mean(spectralCAT_32_3_0975);
mean_spectralCAT_32_3(7)=mean(spectralCAT_32_3_098);
mean_spectralCAT_32_3(8)=mean(spectralCAT_32_3_0985);
mean_spectralCAT_32_3(9)=mean(spectralCAT_32_3_099);

mean_spectralCAT_32_6(1)=mean(spectralCAT_32_6_095);
mean_spectralCAT_32_6(2)=mean(spectralCAT_32_6_0955);
mean_spectralCAT_32_6(3)=mean(spectralCAT_32_6_096);
mean_spectralCAT_32_6(4)=mean(spectralCAT_32_6_0965);
mean_spectralCAT_32_6(5)=mean(spectralCAT_32_6_097);
mean_spectralCAT_32_6(6)=mean(spectralCAT_32_6_0975);
mean_spectralCAT_32_6(7)=mean(spectralCAT_32_6_098);
mean_spectralCAT_32_6(8)=mean(spectralCAT_32_6_0985);
mean_spectralCAT_32_6(9)=mean(spectralCAT_32_6_099);
 
mean_spectralCAT_32_9(1)=mean(spectralCAT_32_9_095);
mean_spectralCAT_32_9(2)=mean(spectralCAT_32_9_0955);
mean_spectralCAT_32_9(3)=mean(spectralCAT_32_9_096);
mean_spectralCAT_32_9(4)=mean(spectralCAT_32_9_0965);
mean_spectralCAT_32_9(5)=mean(spectralCAT_32_9_097);
mean_spectralCAT_32_9(6)=mean(spectralCAT_32_9_0975);
mean_spectralCAT_32_9(7)=mean(spectralCAT_32_9_098);
mean_spectralCAT_32_9(8)=mean(spectralCAT_32_9_0985);
mean_spectralCAT_32_9(9)=mean(spectralCAT_32_9_099);

std_spectralCAT_32_3(1)=std(spectralCAT_32_3_095);
std_spectralCAT_32_3(2)=std(spectralCAT_32_3_0955);
std_spectralCAT_32_3(3)=std(spectralCAT_32_3_096);
std_spectralCAT_32_3(4)=std(spectralCAT_32_3_0965);
std_spectralCAT_32_3(5)=std(spectralCAT_32_3_097);
std_spectralCAT_32_3(6)=std(spectralCAT_32_3_0975);
std_spectralCAT_32_3(7)=std(spectralCAT_32_3_098);
std_spectralCAT_32_3(8)=std(spectralCAT_32_3_0985);
std_spectralCAT_32_3(9)=std(spectralCAT_32_3_099);
 
std_spectralCAT_32_6(1)=std(spectralCAT_32_6_095);
std_spectralCAT_32_6(2)=std(spectralCAT_32_6_0955);
std_spectralCAT_32_6(3)=std(spectralCAT_32_6_096);
std_spectralCAT_32_6(4)=std(spectralCAT_32_6_0965);
std_spectralCAT_32_6(5)=std(spectralCAT_32_6_097);
std_spectralCAT_32_6(6)=std(spectralCAT_32_6_0975);
std_spectralCAT_32_6(7)=std(spectralCAT_32_6_098);
std_spectralCAT_32_6(8)=std(spectralCAT_32_6_0985);
std_spectralCAT_32_6(9)=std(spectralCAT_32_6_099);

 
std_spectralCAT_32_9(1)=std(spectralCAT_32_9_095);
std_spectralCAT_32_9(2)=std(spectralCAT_32_9_0955);
std_spectralCAT_32_9(3)=std(spectralCAT_32_9_096);
std_spectralCAT_32_9(4)=std(spectralCAT_32_9_0965);
std_spectralCAT_32_9(5)=std(spectralCAT_32_9_097);
std_spectralCAT_32_9(6)=std(spectralCAT_32_9_0975);
std_spectralCAT_32_9(7)=std(spectralCAT_32_9_098);
std_spectralCAT_32_9(8)=std(spectralCAT_32_9_0985);
std_spectralCAT_32_9(9)=std(spectralCAT_32_9_099);
 
 
