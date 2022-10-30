 
function [R_hat]=ordinal_encoding(data)
 
%DATASETS
%1.4/3/2021 data: The dataset to be encoded;  Not include the clustering label
%2/25/2021: data include the clustering label;some program used this file
%may need to change. 
%2. R_hat: code the categorical values by ordinal encoding; missings are
%coded as 0 vectors. 
%m = length(data(1,:))-1 ;%m: # of attributes
m = length(data(1,:)) ;%m: # of attributes
n = length(data(:,1));%n: smaple size
 
d=0;
for j=1:m
    k=myUnique(data(:,j));
    lk=length(k);
    cat(j)=lk;
 if lk==1  
   for i =1:n
       if isnan([data(i,j)])==0
       R_hat(i,d+1)=1;
       elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0;    
       end 
   end
   
    
 elseif lk==2
  for i =1:n
    if data(i,j)==k(1)
        R_hat(i,d+1)=1;
        R_hat(i,d+2)=0;
         
    elseif data(i,j)==k(2)
        R_hat(i,d+1)=-1;
        R_hat(i,d+2)=0;
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0; 
    end
  end
   
 elseif lk==3
  for i =1:n
    if data(i,j)==k(1)
        R_hat(i,d+1)=1;
        R_hat(i,d+2)=0;
    elseif data(i,j)==k(2)
        R_hat(i,d+1)=cos(pi/2);
        R_hat(i,d+2)=sin(pi/2);
    elseif data(i,j)==k(3)
        R_hat(i,d+1)=cos(2*pi/2);
        R_hat(i,d+2)=sin(2*pi/2);
    elseif isnan([data(i,j)])==1
        R_hat(i,d+1)=0;
        R_hat(i,d+2)=0;
    end
  end
 elseif lk==4
  for i =1:n
    if data(i,j)==k(1)
        R_hat(i,d+1)=1;
        R_hat(i,d+2)=0;
    elseif data(i,j)==k(2)
        R_hat(i,d+1)=cos(pi/3);
        R_hat(i,d+2)=sin(pi/3);
    elseif data(i,j)==k(3)
        R_hat(i,d+1)=cos(2*pi/3);
        R_hat(i,d+2)=sin(2*pi/3);
    elseif data(i,j)==k(4)
        R_hat(i,d+1)=cos(3*pi/3);
        R_hat(i,d+2)=sin(3*pi/3);
    elseif isnan([data(i,j)])==1
        R_hat(i,d+1)=0;
        R_hat(i,d+2)=0;
    end
  end
   
  elseif lk==5
  for i =1:n
    if data(i,j)==k(1)
        R_hat(i,d+1)=1;
        R_hat(i,d+2)=0;
    elseif data(i,j)==k(2)
        R_hat(i,d+1)=cos(pi/4);
        R_hat(i,d+2)=sin(pi/4);
    elseif data(i,j)==k(3)
        R_hat(i,d+1)=cos(2*pi/4);
        R_hat(i,d+2)=sin(2*pi/4);
    elseif data(i,j)==k(4)
        R_hat(i,d+1)=cos(3*pi/4);
        R_hat(i,d+2)=sin(3*pi/4);
    elseif data(i,j)==k(5)
        R_hat(i,d+1)=cos(4*pi/4);
        R_hat(i,d+2)=sin(4*pi/4);
            
    elseif isnan([data(i,j)])==1
        R_hat(i,d+1)=0;
        R_hat(i,d+2)=0;
    end
  end
  
  
  elseif lk==6
  for i =1:n
    if data(i,j)==k(1)
        R_hat(i,d+1)=1;
        R_hat(i,d+2)=0;
    elseif data(i,j)==k(2)
        R_hat(i,d+1)=cos(pi/5);
        R_hat(i,d+2)=sin(pi/5);
    elseif data(i,j)==k(3)
        R_hat(i,d+1)=cos(2*pi/5);
        R_hat(i,d+2)=sin(2*pi/5);
    elseif data(i,j)==k(4)
        R_hat(i,d+1)=cos(3*pi/5);
        R_hat(i,d+2)=sin(3*pi/5);
    elseif data(i,j)==k(5)
        R_hat(i,d+1)=cos(4*pi/5);
        R_hat(i,d+2)=sin(4*pi/5);
    elseif data(i,j)==k(6)
        R_hat(i,d+1)=cos(5*pi/5);
        R_hat(i,d+2)=sin(5*pi/5);
            
    elseif isnan([data(i,j)])==1
        R_hat(i,d+1)=0;
        R_hat(i,d+2)=0;
    end
  end
  
  
  elseif lk==7
  for i =1:n
    if data(i,j)==k(1)
        R_hat(i,d+1)=1;
        R_hat(i,d+2)=0;
    elseif data(i,j)==k(2)
        R_hat(i,d+1)=cos(pi/6);
        R_hat(i,d+2)=sin(pi/6);
    elseif data(i,j)==k(3)
        R_hat(i,d+1)=cos(2*pi/6);
        R_hat(i,d+2)=sin(2*pi/6);
    elseif data(i,j)==k(4)
        R_hat(i,d+1)=cos(3*pi/6);
        R_hat(i,d+2)=sin(3*pi/6);
    elseif data(i,j)==k(5)
        R_hat(i,d+1)=cos(4*pi/6);
        R_hat(i,d+2)=sin(4*pi/6);
    elseif data(i,j)==k(6)
        R_hat(i,d+1)=cos(5*pi/6);
        R_hat(i,d+2)=sin(5*pi/6);
    elseif data(i,j)==k(7)
        R_hat(i,d+1)=cos(6*pi/6);
        R_hat(i,d+2)=sin(6*pi/6);
            
    elseif isnan([data(i,j)])==1
        R_hat(i,d+1)=0;
        R_hat(i,d+2)=0;
    end
  end
  
  elseif lk==8
  for i =1:n
    if data(i,j)==k(1)
        R_hat(i,d+1)=1;
        R_hat(i,d+2)=0;
    elseif data(i,j)==k(2)
        R_hat(i,d+1)=cos(pi/7);
        R_hat(i,d+2)=sin(pi/7);
    elseif data(i,j)==k(3)
        R_hat(i,d+1)=cos(2*pi/7);
        R_hat(i,d+2)=sin(2*pi/7);
    elseif data(i,j)==k(4)
        R_hat(i,d+1)=cos(3*pi/7);
        R_hat(i,d+2)=sin(3*pi/7);
    elseif data(i,j)==k(5)
        R_hat(i,d+1)=cos(4*pi/7);
        R_hat(i,d+2)=sin(4*pi/7);
    elseif data(i,j)==k(6)
        R_hat(i,d+1)=cos(5*pi/7);
        R_hat(i,d+2)=sin(5*pi/7);
    elseif data(i,j)==k(7)
        R_hat(i,d+1)=cos(6*pi/7);
        R_hat(i,d+2)=sin(6*pi/7);
    elseif data(i,j)==k(8)
        R_hat(i,d+1)=cos(7*pi/7);
        R_hat(i,d+2)=sin(7*pi/7);
        
            
    elseif isnan([data(i,j)])==1
        R_hat(i,d+1)=0;
        R_hat(i,d+2)=0;
    end
  end
    
     
   
 end
 
  if lk>1
    d=d+2; 
  elseif lk==1
    d=d+lk;
  end
end
