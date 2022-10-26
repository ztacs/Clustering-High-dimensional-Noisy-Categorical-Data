%%Movielens
T =  readtable('W:\Multicategory clustering\Movielens\ml-1m\movielens_1M.csv',...
     'ReadVariableNames',true); 
 movielens=table2array(T);
  movielens(:,1)=[]; 
  data=movielens;
 data(:,3707)=1;

%%%%%%%%%rows- users*movies 
W =Gaussian_kernel_spectralCAT2(data);
[data_hat cat] =unit_circle_encoding(data);
for i=1:3706 
    if cat(i)==1
        cat1(i)=cat(i);
    else 
        cat1(i)=cat(i)-1;
    end
end

%X=R_h_num098(:,1:512);
Y=data(:,3707);
Pram.style= 1;
Pram.expLam=1;
Pram.function=1;

 

[ wFeat, SF ] = fsSpectrum( W, data_hat, Y, Pram )
d=0;
for i=1:3706
    %feat_weight(i)=sum(wFeat(d+1:d+cat1(i)));
    feat_weight(i)=mean(wFeat(d+1:d+cat1(i)));
    d=d+cat1(i);
end

mean(feat_weight)
std(feat_weight)
min(feat_weight)
max(feat_weight)
 
%Pram.function - 1:f'Lf; 2:using all eigenvalue except the first one;
%index_user=feat_weight<3.99857;%-200
%tabulate(index_user)

%index_user_500=feat_weight<3.996785;%-500


index_user_500=feat_weight<0.999824372 ;%-500
tabulate(index_user_500)


 

%%%%%%%%%%%columns-- movies*users
 data_movie=movielens';
 data_movie(:,6041)=1;
W_movie =Gaussian_kernel_spectralCAT2(data_movie);
[data_movie_hat cat_movie] =unit_circle_encoding(data_movie);
for i=1:6040 
    if cat_movie(i)==1
        cat_movie1(i)=cat_movie(i);
    else 
        cat_movie1(i)=cat_movie(i)-1;
    end
end

 
Y_movie=data_movie(:,6041);
Pram.style= 1;
Pram.expLam=1;
Pram.function=1;

 

[ wFeat_movie, SF_movie ] = fsSpectrum( W_movie, data_movie_hat, Y_movie, Pram )
min(wFeat_movie) 
max(wFeat_movie) 
d=0;
for i=1:6040
    %feat_weight_movie(i)=sum(wFeat_movie(d+1:d+cat_movie1(i)));
    feat_weight_movie(i)=mean(wFeat_movie(d+1:d+cat_movie1(i)));
    d=d+cat_movie1(i);
end

mean(feat_weight_movie)
 

%Pram.function - 1:f'Lf; 2:using all eigenvalue except the first one;
%index_movie=feat_weight_movie<3.99836466 ;%200
%tabulate(index_movie)
  
%index_movie_500=feat_weight_movie<3.99701 ;%500
index_movie_500=feat_weight_movie<0.999468417 ;%500
tabulate(index_movie_500)



%movielens_reduced=movielens(index_movie==1,index_user==1);


movielens_reduced_500=movielens(index_movie_500==1,index_user_500==1);




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%4/19/2021
n=512;
m=512;
r=4;
g=3;
p=0.2;
 
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,r,g,p,1);

W =Gaussian_kernel_spectralCAT2(R_h_num098);
%[R_h_num098_hat cat] =unit_circle_encoding(R_h_num098);
[R_h_num098_hat] =unit_circle_encoding_g3(R_h_num098);%all encoded as g=3;
for i=1:512 
    if cat(i)==1
        cat1(i)=cat(i);
    else 
        cat1(i)=cat(i)-1;
    end
end

%X=R_h_num098(:,1:512);
Y=R_h_num098(:,513);
Pram.style= 1;
Pram.expLam=1;
Pram.function=1;

 

[ wFeat, SF ] = fsSpectrum( W, R_h_num098_hat, Y, Pram )
d=0;
for i=1:512
    %feat_weight(i)=sum(wFeat(d+1:d+cat1(i)));
    feat_weight(i)=mean(wFeat(d+1:d+cat1(i)));
    d=d+cat1(i);
end
histogram(feat_weight)
histogram(wFeat)
mean(feat_weight)
std(feat_weight)
min(feat_weight) 
max(feat_weight) 

%Pram.function - 1:f'Lf; 2:using all eigenvalue except the first one;
%index=feat_weight>1.999625 ;%500
index=feat_weight>0.999991;%500
tabulate(index)

%index=feat_weight>1.9967736 ;%400
index=feat_weight>0.9992701 ;%400
tabulate(index)
X1=R_h_num098(:,index==0);
data=[X1 Y];
acc_exc=Spectral_method_unit_circle(4,data,30,1);%87.11(m=500) 77.34(400)

acc=Spectral_method_unit_circle(4,R_h_num098,30,1);%89.4531

cat(index==0)

%%%%%%%%%%%%%%%%%%%%%
%Pram.function -  2:using all eigenvalue except the first one;
Pram.function=2;

index=feat_weight>0.9999865 ;%500
tabulate(index)
 
index=feat_weight>0.99999303 ;%400
tabulate(index)

X1=R_h_num098(:,index==1);
data=[X1 Y];
acc_exc=Spectral_method_unit_circle(4,data,30,1);%84.1797(m=500) 75.19(400)

acc=Spectral_method_unit_circle(4,R_h_num098,30,1);%89.45







%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n=512;
m=512;
r=4;
g=3;
p=0.2;
 
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,r,g,p,1);

W =Gaussian_kernel_spectralCAT2(R_h_num098);
 

%X=R_h_num098(:,1:512);
Y=R_h_num098(:,513);
Pram.style= 1;
Pram.expLam=1;
Pram.function=1;


for i=1:512
    for j=1:512
        if isnan(X(i,j))==1
            X(i,j)=0 ;
        end
    end
end

[ wFeat, SF ] = fsSpectrum( W, X, Y, Pram );

mean(wFeat)
std(wFeat)
mean(wFeat)+2*std(wFeat)
index=wFeat>0.9931;
mean(wFeat)+std(wFeat)
index=wFeat>0.9879;


index=wFeat>0.9735;
index=wFeat>0.9649;

index=wFeat>0.98682;%400
index=wFeat>0.9924;%500


X1=R_h_num098(:,index==0);
data=[X1 Y];
acc_exc=Spectral_method_unit_circle(4,data,30,1);%88.47(m=500) 85.74(400)

acc=Spectral_method_unit_circle(4,R_h_num098,30,1);%89.45



T =  readtable('W:\Multicategory clustering\Soybean data\soybean-large_missing999_no text_15 clusters_del lst 4 clusters.csv');

B=table2array(T);
for i = 1:290
    for j = 1:36         
             if B(i,j) == 999
                 B(i,j) =NaN;
             end
    end
end
for i=1:290
    for j=1:35
        if isnan(B(i,j))==1
            B(i,j)=0 ;
        end
    end
end
Wsoy =Gaussian_kernel_spectralCAT2(B);
Xsoy=B(:,1:35);
Ysoy=B(:,36);
Pram.style= 1;
Pram.expLam=1;
Pram.function=1;
[ wFeatsoy, SFsoy ] = fsSpectrum( Wsoy, Xsoy, Ysoy, Pram )


%soy=B(:,[1,3,4,6,7,12,13,15,19,22,36]);
soy=B(:,[1-16,19,21-24,25,26,28-31,35,36]);

soy=B;
soy(:,[17,18,20,25,27,32,33,34])=[];
for i=1:100
     i
 tic
  
 disp('Spectral');
 spec_soybean15(i)=Spectral_method_unit_circle(15,soy,30,i);
 toc;  
  
end
 mean(spec_soybean15)
 std(spec_soybean15)


 for i=1:100
     i
  
  
 
 tic
disp('kmode_observed_replicate')
 kmodes_soybean15(i)=kmode_observed_replicate(soy, 15, 30,i)
  
 toc
  
  
 end
 
 mean(kmodes_soybean15)
 std(kmodes_soybean15)