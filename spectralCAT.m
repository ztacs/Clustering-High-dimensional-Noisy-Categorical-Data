%spectralCAT
function [Acc et C T] =spectralCAT2(data, r,replicate,ran)
tic;
rng(ran);
n = length(data(1,:)) - 1;%# of attributes
m = length(data(:,1));%# of subjects

for j=1:n
    u=(myUnique(data(:,j)))';%u: row vector, unique values of jth attribute
    cat(j)=length(u);%number of categorie of jth attribute
end
 
%eqn(7): pairwise distance matrix Delta(i,j)
for i=1:m
    for j=i:m
        Delta(i,j)=0;
      for k=1:n  
        if (isnan(data(i,k))==0 & isnan( data(j,k))==0) & ( data(i,k)~=999 &  data(j,k)~=999)  
         Delta(i,j)=Delta(i,j)+(data(i,k)~=data(j,k))/cat(k);
         end
      end
    end
end

for i=2:m
    for j=1:i-1
Delta(i,j)=Delta(j,i);
    end
end

%Define X_bar in eq(4)
for i=1:m
percent(i) = prctile(Delta(i,1:m),100/3);
%percent(i) = prctile(Delta(i,1:m),100);
end
for i=1:m
    X_bar(i)=0;
    c(i)=0; %c(i) is the size of 1/3 could around point i;
    for j=1:m
    if Delta(i,j)<=percent(i)
        X_bar(i)= X_bar(i)+Delta(i,j);
        c(i)=c(i)+1;
    end
    end
     X_bar(i)= X_bar(i)/c(i);
end

%define epsilon eq(4) by hamming idstance
for i=1:m
    epsilon(i)=0;
    for j=1:m
        if Delta(i,j)<=percent(i)
        epsilon(i)=epsilon(i)+(Delta(i,j)-X_bar(i))^2/c(i);
        %epsilon(i)=epsilon(i)+(Delta(i,j)-X_bar(i))^2/X_bar(i);
        end
    end
end

%eqn(3):part of eqn (5)
for i=1:m
     omeg(i)=0;
     if X_bar(i)~= 0
     %if percent(i)>=0.06
    %if percent(i)>0 
        for j=1:m
            if Delta(i,j)<=percent(i)  
            omeg(i)=omeg(i)+exp(-Delta(i,j)/epsilon(i));
            end
        end
     %elseif percent(i)<0.06
     else
     %elseif percent(i)==0
         omeg(i)=c(i);
     end
end

%Adaptive Gaussian kernel eqn(6);
for i=1:m
  for j=1:m
W(i,j)=exp(-Delta(i,j)/sqrt(omeg(i)* omeg(j)));
  end
end
d=sum(W,2);
for i=1:m
  for j=1:m
P(i,j)=W(i,j)/sqrt(d(i))/sqrt(d(j));
  end
end
[U,S,V] = svds(P,r);
 
%[U,S,V] = svd(P,r);
%[U,S,V] = svd(R_hat);
%Pr_R_hat = U(:,1:r)*S(1:r,1:r) ;    
Pr_P = U *S ; 
%Pr_P = U(:,1:r)*S(1:r,1:r) ; 

 C = kmeans(Pr_P,r,...
                      'Display','final','MaxIter',100,'Replicates',replicate);
 
%m+2 column is the  cluser label from K means;
data(:,m+2)=C;
T=transpose(data(:,n+1));%true cluster label
idx=transpose(C);
if r<=8
  Acc= AccMeasure(T,idx);
   
else
%[crate com] = correctrate(T,idx);
Acc = correctrate(T',idx');%T' and idx are cloumn vector;
end
        
   et=toc;      

 
    
    
    
    
    
    
    
    
    
    
    
     