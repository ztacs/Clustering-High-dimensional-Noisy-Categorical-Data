function  [R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099]=Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,r,g,p,ran) 
 
%n: number of subjects
%m: number of attributes
%r: number of clusters
%g: number of categories

rng(ran);

%generate B matrix
B = randi([1 g],r,m);
%m+1 column is the true cluster label
for i = 1:r
    B(i,m+1)=i;
end


%repeat B matrix K=n/r times
R=repmat(B,n/r,1);

%Flip data with prob=p 
%for i = 1:n
%    for j = 1:m         
 %            P(i,j) = NaN;
 %   end
%end
 
for i =1:n
    P(i, 1:m)=rand(1,m)>=p;
end

%make m+1 clolumn to be 1
for i = 1:n
    P(i,m+1)=1;
end

R_1=R.*P;

%replace flipped entry with any of the g values randomly
for i = 1:n
    for j = 1:m         
         if  R_1(i,j) ==0
             R_1(i,j) = randi([1 g]);
         end
    end
end

%GENERATE RANDOM MISSING DATA 
for i = 1:n
    for j = 1:m         
             M1(i,j) = NaN;
    end
end
%missing epsilon =0.95;
for i =1:n
    M1(i, 1:m)=rand(1,m)>=0.95;
   end
for i = 1:n
    for j = 1:m         
         if  M1(i,j) ==0
             M1(i,j) = NaN;
         end
    end
end
%make m+1 clolumn to be 1
for i = 1:n
    M1(i,m+1)=1;
end

R_h_num095=R_1.*M1;
R_h_num095 =  R_h_num095(randperm(end),:);

%missing epsilon =0.955;
M2=M1;
for i =1:n
    for j=1:m
    if M2(i, j)==1;
    M2(i, j)=rand>=0.1  ;
    end
    end
end
for r = 1:n
    for c = 1:m
         
         if  M2(r,c) ==0
             M2(r,c) = NaN;
         end
    end
end
%make m+1 clolumn to be 1
for i = 1:n
    M2(i,m+1)=1;
end
R_h_num0955=R_1.*M2;
R_h_num0955 =  R_h_num0955(randperm(end),:);

%missing epsilon =0.96;
M3=M2;
for i =1:n
    for j=1:m
    if M3(i, j)==1;
    M3(i, j)=rand>=1/9 ;
    end
    end
end
for r = 1:n
    for c = 1:m
         
         if  M3(r,c) ==0
             M3(r,c) = NaN;
         end
    end
end
%make m+1 clolumn to be 1
for i = 1:n
    M3(i,m+1)=1;
end
R_h_num096=R_1.*M3;
R_h_num096 =  R_h_num096(randperm(end),:);

%missing epsilon =0.965;
M4=M3;
for i =1:n
    for j=1:m
    if M4(i, j)==1;
    M4(i, j)=rand>=0.125  ;
    end
    end
end
 
for r = 1:n
    for c = 1:m
         
         if  M4(r,c) ==0
             M4(r,c) = NaN;
         end
    end
end
%make m+1 clolumn to be 1
for i = 1:n
    M4(i,m+1)=1;
end
R_h_num0965=R_1.*M4;
R_h_num0965 =  R_h_num0965(randperm(end),:);

%missing epsilon =0.97;
M5=M4;
for i =1:n
    for j=2:m
    if M5(i, j)==1;
    M5(i, j)=rand>=1/7  ;
    end
    end
end
 
for r = 1:n
    for c = 1:m
         
         if  M5(r,c) ==0
             M5(r,c) = NaN;
         end
    end
end
 
%make m+1 clolumn to be 1
for i = 1:n
    M5(i,m+1)=1;
end
R_h_num097=R_1.*M5;
R_h_num097 =  R_h_num097(randperm(end),:);

%missing epsilon=0.975;
M6=M5;
for i =1:n
    for j=1:m
    if M6(i, j)==1;
    M6(i, j)=rand>=1/6  ;
    end
    end
end
for r = 1:n
    for c = 1:m
         
         if  M6(r,c) ==0
             M6(r,c) = NaN;
         end
    end
end
%make m+1 clolumn to be 1
for i = 1:n
    M6(i,m+1)=1;
end
R_h_num0975=R_1.*M6;
R_h_num0975 =  R_h_num0975(randperm(end),:);

%missing epsilon=0.98;
M7=M6;
for i =1:n
    for j=1:m
    if M7(i, j)==1;
    M7(i, j)=rand>=0.2  ;
    end
    end
end
 
for r = 1:n
    for c = 1:m
         
         if  M7(r,c) ==0
             M7(r,c) = NaN;
         end
    end
end

%make m+1 clolumn to be 1
for i = 1:n
    M7(i,m+1)=1;
end
R_h_num098=R_1.*M7;
%R_h_num0999 = sortrows(R_h_num0999,m+1);
R_h_num098 =  R_h_num098(randperm(end),:);

%missing epsilon=0.985;
M8=M7;
for i =1:n
    for j=1:m
    if M8(i, j)==1;
    M8(i, j)=rand>=0.25  ;
    end
    end
end
 
for r = 1:n
    for c = 1:m
         
         if  M8(r,c) ==0
             M8(r,c) = NaN;
         end
    end
end

%make m+1 clolumn to be 1
for i = 1:n
    M8(i,m+1)=1;
end
R_h_num0985=R_1.*M8;
R_h_num0985 =  R_h_num0985(randperm(end),:);



%missing epsilon=0.99;
M9=M8;
for i =1:n
    for j=1:m
    if M9(i, j)==1;
    M9(i, j)=rand>=1/3  ;
    end
    end
end
 
for r = 1:n
    for c = 1:m
         
         if  M9(r,c) ==0
             M9(r,c) = NaN;
         end
    end
end

%make m+1 clolumn to be 1
for i = 1:n
    M9(i,m+1)=1;
end
R_h_num099=R_1.*M9;
R_h_num099 =  R_h_num099(randperm(end),:);

%Check percentage of missing
%sum(sum(isnan(R_h_num099(:, 1:1024))))/1024/1024

