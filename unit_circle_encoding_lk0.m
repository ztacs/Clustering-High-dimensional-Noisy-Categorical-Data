 
function [R_hat cat] =unit_circle_encodinglk0(data)
 
%DATASETS
%1. data: The dataset to be encoded; the last column needs to be the ture cluster label;
%2. R_hat: code the categorical values by unit cicle encoding; missings are
%coded as 0 vectors. 
%cat: number of unque values (not include NaN) of each attribute.
m = length(data(1,:)) - 1;%m: # of attributes
n = length(data(:,1));%n: smaple size
 
d=0;
for j=1:m
    k=myUnique(data(:,j));
    lk=length(k);
    cat(j)=lk;
    if lk==0  
       for i =1:n
       R_hat(i,d+1)=0;    
       end 
    elseif lk==1  
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
         
    elseif data(i,j)==k(2)
        R_hat(i,d+1)=-1;
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0;     
    end
  end
   
 elseif lk==3
  for i =1:n
    if data(i,j)==k(1)
        R_hat(i,d+1)=1;
        R_hat(i,d+2)=0;
    elseif data(i,j)==k(2)
        R_hat(i,d+1)=-1/2;
        R_hat(i,d+2)=sqrt(3)/2;
    elseif data(i,j)==k(3)
        R_hat(i,d+1)=-1/2;
        R_hat(i,d+2)=-sqrt(3)/2;
    elseif isnan([data(i,j)])==1
            R_hat(i,d+1)=0;
        R_hat(i,d+2)=0;
    end
  end
 elseif lk==4  
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i,d+1)=sqrt(2/3);
        R_hat(i,d+2)=0;
        R_hat(i,d+3)=sqrt(1/3);
    elseif data(i,j)==k(2)
        R_hat(i, d+1)=0;
        R_hat(i, d+2)=sqrt(2/3);
        R_hat(i, d+3)=-sqrt(1/3);
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=-sqrt(2/3);
        R_hat(i, d+2)=0;
        R_hat(i, d+3)=sqrt(1/3);
    elseif data(i,j)==k(4)
        R_hat(i, d+1)=0;
        R_hat(i, d+2)=-sqrt(2/3);
        R_hat(i, d+3)=-sqrt(1/3);
     elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0;
    end
   end
   
   elseif lk==5  
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i, d+1)=cos(2/5*pi*0)*sqrt(1/2);
        R_hat(i, d+2)=sin(2/5*pi*0)*sqrt(1/2);
        R_hat(i, d+3)=cos(2/5*pi*2*0)*sqrt(1/2);
        R_hat(i, d+4)=sin(2/5*pi*2*0)*sqrt(1/2);
    elseif data(i,j)==k(2)
        R_hat(i, d+1)=cos(2/5*pi*1)*sqrt(1/2);
        R_hat(i, d+2)=sin(2/5*pi*1)*sqrt(1/2);
        R_hat(i, d+3)=cos(2/5*pi*2*1)*sqrt(1/2);
        R_hat(i, d+4)=sin(2/5*pi*2*1)*sqrt(1/2);
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=cos(2/5*pi*2)*sqrt(1/2);
        R_hat(i, d+2)=sin(2/5*pi*2)*sqrt(1/2);
        R_hat(i, d+3)=cos(2/5*pi*2*2)*sqrt(1/2);
        R_hat(i, d+4)=sin(2/5*pi*2*2)*sqrt(1/2);
    elseif data(i,j)==k(4)
        R_hat(i, d+1)=cos(2/5*pi*3)*sqrt(1/2);
        R_hat(i, d+2)=sin(2/5*pi*3)*sqrt(1/2);
        R_hat(i, d+3)=cos(2/5*pi*2*3)*sqrt(1/2);
        R_hat(i, d+4)=sin(2/5*pi*2*3)*sqrt(1/2);
    elseif data(i,j)==k(5)
        R_hat(i, d+1)=cos(2/5*pi*4)*sqrt(1/2);
        R_hat(i, d+2)=sin(2/5*pi*4)*sqrt(1/2);
        R_hat(i, d+3)=cos(2/5*pi*2*4)*sqrt(1/2);
        R_hat(i, d+4)=sin(2/5*pi*2*4)*sqrt(1/2);
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0; 
       R_hat(i,d+4)=0; 
    end
   end
   elseif lk==6  
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i, d+1)=1*sqrt(2/5);
        R_hat(i, d+2)=0;
        R_hat(i, d+3)=1*sqrt(2/5);
        R_hat(i, d+4)=0;
        R_hat(i, d+5)=1/sqrt(2)*sqrt(2/5);
        
    elseif data(i,j)==k(2)
        R_hat(i, d+1)=0.5*sqrt(2/5);
        R_hat(i, d+2)=sin(2/6*pi)*sqrt(2/5);
        R_hat(i, d+3)=-0.5*sqrt(2/5);
        R_hat(i, d+4)=sin(2/6*pi*2)*sqrt(2/5);
        R_hat(i, d+5)=-1/sqrt(2)*sqrt(2/5);
       
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=-0.5*sqrt(2/5);
        R_hat(i, d+2)=sin(2/6*pi*2)*sqrt(2/5);
        R_hat(i, d+3)=-0.5*sqrt(2/5);
        R_hat(i, d+4)=sin(2/6*pi*2*2)*sqrt(2/5);
        R_hat(i, d+5)=1/sqrt(2)*sqrt(2/5);
    elseif data(i,j)==k(4)
        R_hat(i, d+1)=-sqrt(2/5);
        R_hat(i, d+2)=sin(2/6*pi*3)*sqrt(2/5);
        R_hat(i, d+3)=sqrt(2/5);
        R_hat(i, d+4)=sin(2/6*pi*2*3)*sqrt(2/5);
        R_hat(i, d+5)=-1/sqrt(2)*sqrt(2/5);
      
    elseif data(i,j)==k(5)
        R_hat(i, d+1)=-0.5*sqrt(2/5);
        R_hat(i, d+2)=sin(2/6*pi*4)*sqrt(2/5);
        R_hat(i, d+3)=-0.5*sqrt(2/5);
        R_hat(i, d+4)=sin(2/6*pi*2*4)*sqrt(2/5);
        R_hat(i, d+5)=1/sqrt(2)*sqrt(2/5);
        
     elseif data(i,j)==k(6) 
        R_hat(i, d+1)=0.5*sqrt(2/5);
        R_hat(i, d+2)=sin(2/6*pi*5)*sqrt(2/5);
        R_hat(i, d+3)=-0.5*sqrt(2/5);
        R_hat(i, d+4)=sin(2/6*pi*2*5)*sqrt(2/5);
        R_hat(i, d+5)=-1/sqrt(2)*sqrt(2/5);  
        
     
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0; 
       R_hat(i,d+4)=0;
       R_hat(i,d+5)=0;
     end
   end
   
  elseif lk==7  
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i, d+1)=1/sqrt(3);
        R_hat(i, d+2)=0;
        R_hat(i, d+3)=1/sqrt(3);
        R_hat(i, d+4)=0;
        R_hat(i, d+5)=1/sqrt(3);
        R_hat(i, d+6)=0;
    elseif data(i,j)==k(2)
        R_hat(i, d+1)=sin(3/14*pi)/sqrt(3);
        R_hat(i, d+2)=cos(3/14*pi)/sqrt(3);
        R_hat(i, d+3)=-sin(1/14*pi)/sqrt(3);
        R_hat(i, d+4)=cos(1/14*pi)/sqrt(3);
        R_hat(i, d+5)=-cos(1/7*pi)/sqrt(3);
        R_hat(i, d+6)=sin(1/7*pi)/sqrt(3);
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=-sin(1/14*pi)/sqrt(3);
        R_hat(i, d+2)=cos(1/14*pi)/sqrt(3);
        R_hat(i, d+3)=-cos(1/7*pi)/sqrt(3);
        R_hat(i, d+4)=-sin(1/7*pi)/sqrt(3);
        R_hat(i, d+5)=sin(3/14*pi)/sqrt(3);
        R_hat(i, d+6)=-cos(3/14*pi)/sqrt(3);
    elseif data(i,j)==k(4)
        R_hat(i, d+1)=-cos(1/7*pi)/sqrt(3);
        R_hat(i, d+2)=sin(1/7*pi)/sqrt(3);
        R_hat(i, d+3)=sin(3/14*pi)/sqrt(3);
        R_hat(i, d+4)=-cos(3/14*pi)/sqrt(3);
        R_hat(i, d+5)=-sin(1/14*pi)/sqrt(3);
        R_hat(i, d+6)=cos(1/14*pi)/sqrt(3);
      
    elseif data(i,j)==k(5)
        R_hat(i, d+1)=-cos(1/7*pi)/sqrt(3);
        R_hat(i, d+2)=-sin(1/7*pi)/sqrt(3);
        R_hat(i, d+3)=sin(3/14*pi)/sqrt(3);
        R_hat(i, d+4)=cos(3/14*pi)/sqrt(3);
        R_hat(i, d+5)=-sin(1/14*pi)/sqrt(3);
        R_hat(i, d+6)=-cos(1/14*pi)/sqrt(3);
        
     elseif data(i,j)==k(6) 
        R_hat(i, d+1)=-sin(1/14*pi)/sqrt(3);
        R_hat(i, d+2)=-cos(1/14*pi)/sqrt(3);
        R_hat(i, d+3)=-cos(1/7*pi)/sqrt(3);
        R_hat(i, d+4)=sin(1/7*pi)/sqrt(3);
        R_hat(i, d+5)=sin(3/14*pi)/sqrt(3);
        R_hat(i, d+6)=cos(3/14*pi)/sqrt(3);   
        
    elseif data(i,j)==k(7) 
        R_hat(i, d+1)=sin(3/14*pi)/sqrt(3);
        R_hat(i, d+2)=-cos(3/14*pi)/sqrt(3);
        R_hat(i, d+3)=-sin(1/14*pi)/sqrt(3);
        R_hat(i, d+4)=-cos(1/14*pi)/sqrt(3);
        R_hat(i, d+5)=-cos(1/7*pi)/sqrt(3);
        R_hat(i, d+6)=-sin(1/7*pi)/sqrt(3);
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0; 
       R_hat(i,d+4)=0;
       R_hat(i,d+5)=0;
       R_hat(i,d+6)=0;
    end
   end
   
    elseif lk==8 
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i, d+1)=sqrt(2/7);
        R_hat(i, d+2)=0;
        R_hat(i, d+3)=sqrt(2/7);
        R_hat(i, d+4)=0;
        R_hat(i, d+5)=sqrt(2/7);
        R_hat(i, d+6)=0;
        R_hat(i, d+7)=sqrt(2/7)/sqrt(2);
       
    elseif data(i,j)==k(2)
        R_hat(i, d+1)=sqrt(2/7)*cos(2/8*pi) ;
        R_hat(i, d+2)=sqrt(2/7)*sin(2/8*pi) ;
        R_hat(i, d+3)=sqrt(2/7)*cos(4/8*pi) ;
        R_hat(i, d+4)=sqrt(2/7)*sin(4/8*pi) ;
        R_hat(i, d+5)=sqrt(2/7)*cos(6/8*pi);
        R_hat(i, d+6)=sqrt(2/7)*sin(6/8*pi);
        R_hat(i, d+7)=-sqrt(2/7)/sqrt(2);
        
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=sqrt(2/7)*cos(4/8*pi);
        R_hat(i, d+2)=sqrt(2/7)*sin(4/8*pi);
        R_hat(i, d+3)=sqrt(2/7)*cos(8/8*pi);
        R_hat(i, d+4)=sqrt(2/7)*sin(8/8*pi);
        R_hat(i, d+5)=sqrt(2/7)*cos(12/8*pi);
        R_hat(i, d+6)=sqrt(2/7)*sin(12/8*pi);
        R_hat(i, d+7)=sqrt(2/7)/sqrt(2);
         
    elseif data(i,j)==k(4)
        R_hat(i, d+1)=sqrt(2/7)*cos(6/8*pi);
        R_hat(i, d+2)=sqrt(2/7)*sin(6/8*pi);
        R_hat(i, d+3)=sqrt(2/7)*cos(12/8*pi);
        R_hat(i, d+4)=sqrt(2/7)*sin(12/8*pi);
        R_hat(i, d+5)=sqrt(2/7)*cos(18/8*pi);
        R_hat(i, d+6)=sqrt(2/7)*sin(18/8*pi);
        R_hat(i, d+7)=-sqrt(2/7)/sqrt(2);
         
      
    elseif data(i,j)==k(5)
        R_hat(i, d+1)=sqrt(2/7)*cos(8/8*pi);
        R_hat(i, d+2)=sqrt(2/7)*sin(8/8*pi);
        R_hat(i, d+3)=sqrt(2/7)*cos(16/8*pi);
        R_hat(i, d+4)=sqrt(2/7)*sin(16/8*pi);
        R_hat(i, d+5)=sqrt(2/7)*cos(24/8*pi);
        R_hat(i, d+6)=sqrt(2/7)*sin(24/8*pi);
        R_hat(i, d+7)=sqrt(2/7)/sqrt(2);
        
     elseif data(i,j)==k(6) 
        R_hat(i, d+1)=sqrt(2/7)*cos(10/8*pi);
        R_hat(i, d+2)=sqrt(2/7)*sin(10/8*pi);
        R_hat(i, d+3)=sqrt(2/7)*cos(20/8*pi);
        R_hat(i, d+4)=sqrt(2/7)*sin(20/8*pi);
        R_hat(i, d+5)=sqrt(2/7)*cos(30/8*pi);
        R_hat(i, d+6)=sqrt(2/7)*sin(30/8*pi);
        R_hat(i, d+7)=-sqrt(2/7)/sqrt(2);
        
    elseif data(i,j)==k(7) 
       R_hat(i, d+1)=sqrt(2/7)*cos(12/8*pi);
        R_hat(i, d+2)=sqrt(2/7)*sin(12/8*pi);
        R_hat(i, d+3)=sqrt(2/7)*cos(24/8*pi);
        R_hat(i, d+4)=sqrt(2/7)*sin(24/8*pi);
        R_hat(i, d+5)=sqrt(2/7)*cos(36/8*pi);
        R_hat(i, d+6)=sqrt(2/7)*sin(36/8*pi);
        R_hat(i, d+7)=sqrt(2/7)/sqrt(2);
        
     elseif data(i,j)==k(8) 
       R_hat(i, d+1)=sqrt(2/7)*cos(14/8*pi);
        R_hat(i, d+2)=sqrt(2/7)*sin(14/8*pi);
        R_hat(i, d+3)=sqrt(2/7)*cos(28/8*pi);
        R_hat(i, d+4)=sqrt(2/7)*sin(28/8*pi);
        R_hat(i, d+5)=sqrt(2/7)*cos(42/8*pi);
        R_hat(i, d+6)=sqrt(2/7)*sin(42/8*pi);
        R_hat(i, d+7)=-sqrt(2/7)/sqrt(2);
         
     
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0; 
       R_hat(i,d+4)=0;
       R_hat(i,d+5)=0;
       R_hat(i,d+6)=0;
       R_hat(i,d+7)=0;
       
    end
   end
   
  elseif lk==9 
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i, d+1)=1/2;
        R_hat(i, d+2)=0;
        R_hat(i, d+3)=1/2;
        R_hat(i, d+4)=0;
        R_hat(i, d+5)=1/2;
        R_hat(i, d+6)=0;
        R_hat(i, d+7)=1/2;
        R_hat(i, d+8)=0;
    elseif data(i,j)==k(2)
        R_hat(i, d+1)=cos(2/9*pi)/2;
        R_hat(i, d+2)=sin(2/9*pi)/2;
        R_hat(i, d+3)=cos(4/9*pi)/2;
        R_hat(i, d+4)=sin(4/9*pi)/2;
        R_hat(i, d+5)=cos(6/9*pi)/2;
        R_hat(i, d+6)=sin(6/9*pi)/2;
        R_hat(i, d+7)=cos(8/9*pi)/2;
        R_hat(i, d+8)=sin(8/9*pi)/2;
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=cos(4/9*pi)/2;
        R_hat(i, d+2)=sin(4/9*pi)/2;
        R_hat(i, d+3)=cos(8/9*pi)/2;
        R_hat(i, d+4)=sin(8/9*pi)/2;
        R_hat(i, d+5)=cos(12/9*pi)/2;
        R_hat(i, d+6)=sin(12/9*pi)/2;
        R_hat(i, d+7)=cos(16/9*pi)/2;
        R_hat(i, d+8)=sin(16/9*pi)/2;
    elseif data(i,j)==k(4)
        R_hat(i, d+1)=cos(6/9*pi)/2;
        R_hat(i, d+2)=sin(6/9*pi)/2;
        R_hat(i, d+3)=cos(12/9*pi)/2;
        R_hat(i, d+4)=sin(12/9*pi)/2;
        R_hat(i, d+5)=cos(18/9*pi)/2;
        R_hat(i, d+6)=sin(18/9*pi)/2;
        R_hat(i, d+7)=cos(24/9*pi)/2;
        R_hat(i, d+8)=sin(24/9*pi)/2;
      
    elseif data(i,j)==k(5)
        R_hat(i, d+1)=cos(8/9*pi)/2;
        R_hat(i, d+2)=sin(8/9*pi)/2;
        R_hat(i, d+3)=cos(16/9*pi)/2;
        R_hat(i, d+4)=sin(16/9*pi)/2;
        R_hat(i, d+5)=cos(24/9*pi)/2;
        R_hat(i, d+6)=sin(24/9*pi)/2;
        R_hat(i, d+7)=cos(32/9*pi)/2;
        R_hat(i, d+8)=sin(32/9*pi)/2;
        
     elseif data(i,j)==k(6) 
        R_hat(i, d+1)=cos(10/9*pi)/2;
        R_hat(i, d+2)=sin(10/9*pi)/2;
        R_hat(i, d+3)=cos(20/9*pi)/2;
        R_hat(i, d+4)=sin(20/9*pi)/2;
        R_hat(i, d+5)=cos(30/9*pi)/2;
        R_hat(i, d+6)=sin(30/9*pi)/2;
        R_hat(i, d+7)=cos(40/9*pi)/2;
        R_hat(i, d+8)=sin(40/9*pi)/2; 
        
    elseif data(i,j)==k(7) 
       R_hat(i, d+1)=cos(12/9*pi)/2;
        R_hat(i, d+2)=sin(12/9*pi)/2;
        R_hat(i, d+3)=cos(24/9*pi)/2;
        R_hat(i, d+4)=sin(24/9*pi)/2;
        R_hat(i, d+5)=cos(36/9*pi)/2;
        R_hat(i, d+6)=sin(36/9*pi)/2;
        R_hat(i, d+7)=cos(48/9*pi)/2;
        R_hat(i, d+8)=sin(48/9*pi)/2;
     elseif data(i,j)==k(8) 
       R_hat(i, d+1)=cos(14/9*pi)/2;
        R_hat(i, d+2)=sin(14/9*pi)/2;
        R_hat(i, d+3)=cos(28/9*pi)/2;
        R_hat(i, d+4)=sin(28/9*pi)/2;
        R_hat(i, d+5)=cos(42/9*pi)/2;
        R_hat(i, d+6)=sin(42/9*pi)/2;
        R_hat(i, d+7)=cos(56/9*pi)/2;
        R_hat(i, d+8)=sin(56/9*pi)/2;
      elseif data(i,j)==k(9) 
        R_hat(i, d+1)=cos(16/9*pi)/2;
        R_hat(i, d+2)=sin(16/9*pi)/2;
        R_hat(i, d+3)=cos(32/9*pi)/2;
        R_hat(i, d+4)=sin(32/9*pi)/2;
        R_hat(i, d+5)=cos(48/9*pi)/2;
        R_hat(i, d+6)=sin(48/9*pi)/2;
        R_hat(i, d+7)=cos(64/9*pi)/2;
        R_hat(i, d+8)=sin(64/9*pi)/2;
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0; 
       R_hat(i,d+4)=0;
       R_hat(i,d+5)=0;
       R_hat(i,d+6)=0;
       R_hat(i,d+7)=0;
       R_hat(i,d+8)=0;
    end
   end
 
   elseif lk==10 
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i, d+1)=sqrt(2)/3;
        R_hat(i, d+2)=0;
        R_hat(i, d+3)=sqrt(2)/3;
        R_hat(i, d+4)=0;
        R_hat(i, d+5)=sqrt(2)/3;
        R_hat(i, d+6)=0;
        R_hat(i, d+7)=sqrt(2)/3;
        R_hat(i, d+8)=0;
        R_hat(i, d+9)=1/3;
   elseif data(i,j)==k(2)
        R_hat(i, d+1)=sqrt(2)/3*cos(2/10*pi);
        R_hat(i, d+2)=sqrt(2)/3*sin(2/10*pi);
        R_hat(i, d+3)=sqrt(2)/3*cos(4/10*pi);
        R_hat(i, d+4)=sqrt(2)/3*sin(4/10*pi);
        R_hat(i, d+5)=sqrt(2)/3*cos(6/10*pi);
        R_hat(i, d+6)=sqrt(2)/3*sin(6/10*pi);
        R_hat(i, d+7)=sqrt(2)/3*cos(8/10*pi);
        R_hat(i, d+8)=sqrt(2)/3*sin(8/10*pi);
        R_hat(i, d+9)=1/3*cos(pi);
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=sqrt(2)/3*cos(4/10*pi);
        R_hat(i, d+2)=sqrt(2)/3*sin(4/10*pi);
        R_hat(i, d+3)=sqrt(2)/3*cos(8/10*pi);
        R_hat(i, d+4)=sqrt(2)/3*sin(8/10*pi);
        R_hat(i, d+5)=sqrt(2)/3*cos(12/10*pi);
        R_hat(i, d+6)=sqrt(2)/3*sin(12/10*pi);
        R_hat(i, d+7)=sqrt(2)/3*cos(16/10*pi);
        R_hat(i, d+8)=sqrt(2)/3*sin(16/10*pi);
        R_hat(i, d+9)=1/3*cos(2*pi);
    elseif data(i,j)==k(4)
        R_hat(i, d+1)=sqrt(2)/3*cos(6/10*pi);
        R_hat(i, d+2)=sqrt(2)/3*sin(6/10*pi);
        R_hat(i, d+3)=sqrt(2)/3*cos(12/10*pi);
        R_hat(i, d+4)=sqrt(2)/3*sin(12/10*pi);
        R_hat(i, d+5)=sqrt(2)/3*cos(18/10*pi);
        R_hat(i, d+6)=sqrt(2)/3*sin(18/10*pi);
        R_hat(i, d+7)=sqrt(2)/3*cos(24/10*pi);
        R_hat(i, d+8)=sqrt(2)/3*sin(24/10*pi);
        R_hat(i, d+9)=1/3*cos(3*pi);
    elseif data(i,j)==k(5)
        R_hat(i, d+1) = sqrt(2)/3*cos(8/10*pi);
        R_hat(i, d+2) = sqrt(2)/3*sin(8/10*pi);
        R_hat(i, d+3) = sqrt(2)/3*cos(16/10*pi);
        R_hat(i, d+4) = sqrt(2)/3*sin(16/10*pi);
        R_hat(i, d+5) = sqrt(2)/3*cos(24/10*pi);
        R_hat(i, d+6) = sqrt(2)/3*sin(24/10*pi);
        R_hat(i, d+7) = sqrt(2)/3*cos(32/10*pi);
        R_hat(i, d+8) = sqrt(2)/3*sin(32/10*pi);
        R_hat(i, d+9)=1/3*cos(4*pi);
        
     elseif data(i,j) ==k(6)
        R_hat(i, d+1) = sqrt(2)/3*cos(10/10*pi);
        R_hat(i, d+2) = sqrt(2)/3*sin(10/10*pi);
        R_hat(i, d+3) = sqrt(2)/3*cos(20/10*pi);
        R_hat(i, d+4) = sqrt(2)/3*sin(20/10*pi);
        R_hat(i, d+5) = sqrt(2)/3*cos(30/10*pi);
        R_hat(i, d+6) = sqrt(2)/3*sin(30/10*pi);
        R_hat(i, d+7) = sqrt(2)/3*cos(40/10*pi);
        R_hat(i, d+8) = sqrt(2)/3*sin(40/10*pi); 
        R_hat(i, d+9)=1/3*cos(5*pi);
        
    elseif data(i,j) ==k(7)
       R_hat(i, d+1) = sqrt(2)/3*cos(12/10*pi);
        R_hat(i, d+2) = sqrt(2)/3*sin(12/10*pi);
        R_hat(i, d+3) = sqrt(2)/3*cos(24/10*pi);
        R_hat(i, d+4) = sqrt(2)/3*sin(24/10*pi);
        R_hat(i, d+5) = sqrt(2)/3*cos(36/10*pi);
        R_hat(i, d+6) = sqrt(2)/3*sin(36/10*pi);
        R_hat(i, d+7) = sqrt(2)/3*cos(48/10*pi);
        R_hat(i, d+8) = sqrt(2)/3*sin(48/10*pi);
        R_hat(i, d+9)=1/3*cos(6*pi);
     elseif data(i,j) ==k(8)
       R_hat(i, d+1) = sqrt(2)/3*cos(14/10*pi);
        R_hat(i, d+2) = sqrt(2)/3*sin(14/10*pi);
        R_hat(i, d+3) = sqrt(2)/3*cos(28/10*pi);
        R_hat(i, d+4) = sqrt(2)/3*sin(28/10*pi);
        R_hat(i, d+5) = sqrt(2)/3*cos(42/10*pi);
        R_hat(i, d+6) = sqrt(2)/3*sin(42/10*pi);
        R_hat(i, d+7) = sqrt(2)/3*cos(56/10*pi);
        R_hat(i, d+8) = sqrt(2)/3*sin(56/10*pi);
        R_hat(i, d+9)=1/3*cos(7*pi);
      elseif data(i,j) ==k(9) 
        R_hat(i, d+1) = sqrt(2)/3*cos(16/10*pi);
        R_hat(i, d+2) = sqrt(2)/3*sin(16/10*pi);
        R_hat(i, d+3) = sqrt(2)/3*cos(32/10*pi);
        R_hat(i, d+4) = sqrt(2)/3*sin(32/10*pi);
        R_hat(i, d+5) = sqrt(2)/3*cos(48/10*pi);
        R_hat(i, d+6) = sqrt(2)/3*sin(48/10*pi);
        R_hat(i, d+7) = sqrt(2)/3*cos(64/10*pi);
        R_hat(i, d+8) = sqrt(2)/3*sin(64/10*pi); 
        R_hat(i, d+9)=1/3*cos(8*pi);
        
        elseif data(i,j) ==k(10) 
        R_hat(i, d+1) = sqrt(2)/3*cos(18/10*pi);
        R_hat(i, d+2) = sqrt(2)/3*sin(18/10*pi);
        R_hat(i, d+3) = sqrt(2)/3*cos(36/10*pi);
        R_hat(i, d+4) = sqrt(2)/3*sin(36/10*pi);
        R_hat(i, d+5) = sqrt(2)/3*cos(54/10*pi);
        R_hat(i, d+6) = sqrt(2)/3*sin(54/10*pi);
        R_hat(i, d+7) = sqrt(2)/3*cos(72/10*pi);
        R_hat(i, d+8) = sqrt(2)/3*sin(72/10*pi); 
        R_hat(i, d+9)=1/3*cos(9*pi);
              
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0; 
       R_hat(i,d+4)=0;
       R_hat(i,d+5)=0;
       R_hat(i,d+6)=0;
       R_hat(i,d+7)=0;
       R_hat(i,d+8)=0;
       R_hat(i,d+9)=0;
    end
   end 
   
   
   elseif lk==12 
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i, d+1)=sqrt(2/11);
        R_hat(i, d+2)=0;
        R_hat(i, d+3)=sqrt(2/11);
        R_hat(i, d+4)=0;
        R_hat(i, d+5)=sqrt(2/11);
        R_hat(i, d+6)=0;
        R_hat(i, d+7)=sqrt(2/11);
        R_hat(i, d+8)=0;
        R_hat(i, d+9)=sqrt(2/11);
        R_hat(i, d+10)=0;
        R_hat(i, d+11)=sqrt(1/11);
   elseif data(i,j)==k(2)
        R_hat(i, d+1)=sqrt(2/11)*cos(2/12*pi);
        R_hat(i, d+2)=sqrt(2/11)*sin(2/12*pi);
        R_hat(i, d+3)=sqrt(2/11)*cos(4/12*pi);
        R_hat(i, d+4)=sqrt(2/11)*sin(4/12*pi);
        R_hat(i, d+5)=sqrt(2/11)*cos(6/12*pi);
        R_hat(i, d+6)=sqrt(2/11)*sin(6/12*pi);
        R_hat(i, d+7)=sqrt(2/11)*cos(8/12*pi);
        R_hat(i, d+8)=sqrt(2/11)*sin(8/12*pi);
        R_hat(i, d+9)=sqrt(2/11)*cos(10/12*pi);
        R_hat(i, d+10)=sqrt(2/11)*sin(10/12*pi);
        R_hat(i, d+11)=sqrt(1/11)*cos(pi);
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=sqrt(2/11)*cos(4/12*pi);
        R_hat(i, d+2)=sqrt(2/11)*sin(4/12*pi);
        R_hat(i, d+3)=sqrt(2/11)*cos(8/12*pi);
        R_hat(i, d+4)=sqrt(2/11)*sin(8/12*pi);
        R_hat(i, d+5)=sqrt(2/11)*cos(12/12*pi);
        R_hat(i, d+6)=sqrt(2/11)*sin(12/12*pi);
        R_hat(i, d+7)=sqrt(2/11)*cos(16/12*pi);
        R_hat(i, d+8)=sqrt(2/11)*sin(16/12*pi);
        R_hat(i, d+9)=sqrt(2/11)*cos(20/12*pi);
        R_hat(i, d+10)=sqrt(2/11)*sin(20/12*pi);
        R_hat(i, d+11)=sqrt(1/11)*cos(2*pi);
    
       elseif data(i,j)==k(4)
        R_hat(i, d+1)=sqrt(2/11)*cos(6/12*pi);
        R_hat(i, d+2)=sqrt(2/11)*sin(6/12*pi);
        R_hat(i, d+3)=sqrt(2/11)*cos(12/12*pi);
        R_hat(i, d+4)=sqrt(2/11)*sin(12/12*pi);
        R_hat(i, d+5)=sqrt(2/11)*cos(18/12*pi);
        R_hat(i, d+6)=sqrt(2/11)*sin(18/12*pi);
        R_hat(i, d+7)=sqrt(2/11)*cos(24/12*pi);
        R_hat(i, d+8)=sqrt(2/11)*sin(24/12*pi);
        R_hat(i, d+9)=sqrt(2/11)*cos(30/12*pi);
        R_hat(i, d+10)=sqrt(2/11)*sin(30/12*pi);
        R_hat(i, d+11)=sqrt(1/11)*cos(3*pi);
                
        
    elseif data(i,j)==k(5)
        R_hat(i, d+1) = sqrt(2/11)*cos(8/12*pi);
        R_hat(i, d+2) = sqrt(2/11)*sin(8/12*pi);
        R_hat(i, d+3) = sqrt(2/11)*cos(16/12*pi);
        R_hat(i, d+4) = sqrt(2/11)*sin(16/12*pi);
        R_hat(i, d+5) = sqrt(2/11)*cos(24/12*pi);
        R_hat(i, d+6) = sqrt(2/11)*sin(24/12*pi);
        R_hat(i, d+7) = sqrt(2/11)*cos(32/12*pi);
        R_hat(i, d+8) = sqrt(2/11)*sin(32/12*pi);
        R_hat(i, d+9)=sqrt(2/11)*cos(40/12*pi);
        R_hat(i, d+10)=sqrt(2/11)*sin(40/12*pi);
        R_hat(i, d+11)=sqrt(1/11)*cos(4*pi);
            
     elseif data(i,j) ==k(6)
        R_hat(i, d+1) = sqrt(2/11)*cos(10/12*pi);
        R_hat(i, d+2) = sqrt(2/11)*sin(10/12*pi);
        R_hat(i, d+3) = sqrt(2/11)*cos(20/12*pi);
        R_hat(i, d+4) = sqrt(2/11)*sin(20/12*pi);
        R_hat(i, d+5) = sqrt(2/11)*cos(30/12*pi);
        R_hat(i, d+6) = sqrt(2/11)*sin(30/12*pi);
        R_hat(i, d+7) = sqrt(2/11)*cos(40/12*pi);
        R_hat(i, d+8) = sqrt(2/11)*sin(40/12*pi); 
        R_hat(i, d+9)=sqrt(2/11)*cos(50/12*pi);
        R_hat(i, d+10)=sqrt(2/11)*sin(50/12*pi);
        R_hat(i, d+11)=sqrt(1/11)*cos(5*pi);
               
    elseif data(i,j) ==k(7)
       R_hat(i, d+1) = sqrt(2/11)*cos(12/12*pi);
        R_hat(i, d+2) = sqrt(2/11)*sin(12/12*pi);
        R_hat(i, d+3) = sqrt(2/11)*cos(24/12*pi);
        R_hat(i, d+4) = sqrt(2/11)*sin(24/12*pi);
        R_hat(i, d+5) = sqrt(2/11)*cos(36/12*pi);
        R_hat(i, d+6) = sqrt(2/11)*sin(36/12*pi);
        R_hat(i, d+7) = sqrt(2/11)*cos(48/12*pi);
        R_hat(i, d+8) = sqrt(2/11)*sin(48/12*pi);
        R_hat(i, d+9)=sqrt(2/11)*cos(60/12*pi);
        R_hat(i, d+10)=sqrt(2/11)*sin(60/12*pi);
        R_hat(i, d+11)=sqrt(1/11)*cos(6*pi);
     elseif data(i,j) ==k(8)
       R_hat(i, d+1) = sqrt(2/11)*cos(14/12*pi);
        R_hat(i, d+2) = sqrt(2/11)*sin(14/12*pi);
        R_hat(i, d+3) = sqrt(2/11)*cos(28/12*pi);
        R_hat(i, d+4) = sqrt(2/11)*sin(28/12*pi);
        R_hat(i, d+5) = sqrt(2/11)*cos(42/12*pi);
        R_hat(i, d+6) = sqrt(2/11)*sin(42/12*pi);
        R_hat(i, d+7) = sqrt(2/11)*cos(56/12*pi);
        R_hat(i, d+8) = sqrt(2/11)*sin(56/12*pi);
        R_hat(i, d+9)=sqrt(2/11)*cos(70/12*pi);
        R_hat(i, d+10)=sqrt(2/11)*sin(70/12*pi);
        R_hat(i, d+11)=sqrt(1/11)*cos(7*pi);
      elseif data(i,j) ==k(9) 
        R_hat(i, d+1) = sqrt(2/11)*cos(16/12*pi);
        R_hat(i, d+2) = sqrt(2/11)*sin(16/12*pi);
        R_hat(i, d+3) = sqrt(2/11)*cos(32/12*pi);
        R_hat(i, d+4) = sqrt(2/11)*sin(32/12*pi);
        R_hat(i, d+5) = sqrt(2/11)*cos(48/12*pi);
        R_hat(i, d+6) = sqrt(2/11)*sin(48/12*pi);
        R_hat(i, d+7) = sqrt(2/11)*cos(64/12*pi);
        R_hat(i, d+8) = sqrt(2/11)*sin(64/12*pi); 
        R_hat(i, d+9)=sqrt(2/11)*cos(80/12*pi);
        R_hat(i, d+10)=sqrt(2/11)*sin(80/12*pi);
        R_hat(i, d+11)=sqrt(1/11)*cos(8*pi);
        
        elseif data(i,j) ==k(10) 
        R_hat(i, d+1) = sqrt(2/11)*cos(18/12*pi);
        R_hat(i, d+2) = sqrt(2/11)*sin(18/12*pi);
        R_hat(i, d+3) = sqrt(2/11)*cos(36/12*pi);
        R_hat(i, d+4) = sqrt(2/11)*sin(36/12*pi);
        R_hat(i, d+5) = sqrt(2/11)*cos(54/12*pi);
        R_hat(i, d+6) = sqrt(2/11)*sin(54/12*pi);
        R_hat(i, d+7) = sqrt(2/11)*cos(72/12*pi);
        R_hat(i, d+8) = sqrt(2/11)*sin(72/12*pi);
        R_hat(i, d+9)=sqrt(2/11)*cos(90/12*pi);
        R_hat(i, d+10)=sqrt(2/11)*sin(90/12*pi);
        R_hat(i, d+11)=sqrt(1/11)*cos(9*pi);
              
        
        
        elseif data(i,j) ==k(11) 
        R_hat(i, d+1) = sqrt(2/11)*cos(20/12*pi);
        R_hat(i, d+2) = sqrt(2/11)*sin(20/12*pi);
        R_hat(i, d+3) = sqrt(2/11)*cos(40/12*pi);
        R_hat(i, d+4) = sqrt(2/11)*sin(40/12*pi);
        R_hat(i, d+5) = sqrt(2/11)*cos(60/12*pi);
        R_hat(i, d+6) = sqrt(2/11)*sin(60/12*pi);
        R_hat(i, d+7) = sqrt(2/11)*cos(80/12*pi);
        R_hat(i, d+8) = sqrt(2/11)*sin(80/12*pi);
        R_hat(i, d+9)=sqrt(2/11)*cos(100/12*pi);
        R_hat(i, d+10)=sqrt(2/11)*sin(100/12*pi);
        R_hat(i, d+11)=sqrt(1/11)*cos(10*pi);
        
        
        elseif data(i,j) ==k(12) 
        R_hat(i, d+1) = sqrt(2/11)*cos(22/12*pi);
        R_hat(i, d+2) = sqrt(2/11)*sin(22/12*pi);
        R_hat(i, d+3) = sqrt(2/11)*cos(44/12*pi);
        R_hat(i, d+4) = sqrt(2/11)*sin(44/12*pi);
        R_hat(i, d+5) = sqrt(2/11)*cos(66/12*pi);
        R_hat(i, d+6) = sqrt(2/11)*sin(66/12*pi);
        R_hat(i, d+7) = sqrt(2/11)*cos(88/12*pi);
        R_hat(i, d+8) = sqrt(2/11)*sin(88/12*pi);
        R_hat(i, d+9)=sqrt(2/11)*cos(110/12*pi);
        R_hat(i, d+10)=sqrt(2/11)*sin(110/12*pi);
        R_hat(i, d+11)=sqrt(1/11)*cos(11*pi);
        
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0; 
       R_hat(i,d+4)=0;
       R_hat(i,d+5)=0;
       R_hat(i,d+6)=0;
       R_hat(i,d+7)=0;
       R_hat(i,d+8)=0;
       R_hat(i, d+9)=0;
       R_hat(i, d+10)=0;
       R_hat(i, d+11)=0;
    end
   end 
   
   
   
   
    elseif lk==14
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i, d+1)=sqrt(2/13);
        R_hat(i, d+2)=0;
        R_hat(i, d+3)=sqrt(2/13);
        R_hat(i, d+4)=0;
        R_hat(i, d+5)=sqrt(2/13);
        R_hat(i, d+6)=0;
        R_hat(i, d+7)=sqrt(2/13);
        R_hat(i, d+8)=0;
        R_hat(i, d+9)=sqrt(2/13);
        R_hat(i, d+10)=0;
        R_hat(i, d+11)=sqrt(2/13);
        R_hat(i, d+12)=0;
         
        
        R_hat(i, d+13)=sqrt(1/13)*cos(0*pi);
         
        
   elseif data(i,j)==k(2)
        R_hat(i, d+1)=sqrt(2/13)*cos(2/14*pi);
        R_hat(i, d+2)=sqrt(2/13)*sin(2/14*pi);
        R_hat(i, d+3)=sqrt(2/13)*cos(4/14*pi);
        R_hat(i, d+4)=sqrt(2/13)*sin(4/14*pi);
        R_hat(i, d+5)=sqrt(2/13)*cos(6/14*pi);
        R_hat(i, d+6)=sqrt(2/13)*sin(6/14*pi);
        R_hat(i, d+7)=sqrt(2/13)*cos(8/14*pi);
        R_hat(i, d+8)=sqrt(2/13)*sin(8/14*pi);
        R_hat(i, d+9)=sqrt(2/13)*cos(10/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(10/14*pi);
        R_hat(i, d+11)=sqrt(2/13)*cos(12/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(12/14*pi);
         
       
        R_hat(i, d+13)=sqrt(1/13)*cos(1*pi);
        
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=sqrt(2/13)*cos(4/14*pi);
        R_hat(i, d+2)=sqrt(2/13)*sin(4/14*pi);
        R_hat(i, d+3)=sqrt(2/13)*cos(8/14*pi);
        R_hat(i, d+4)=sqrt(2/13)*sin(8/14*pi);
        R_hat(i, d+5)=sqrt(2/13)*cos(12/14*pi);
        R_hat(i, d+6)=sqrt(2/13)*sin(12/14*pi);
        R_hat(i, d+7)=sqrt(2/13)*cos(16/14*pi);
        R_hat(i, d+8)=sqrt(2/13)*sin(16/14*pi);
        R_hat(i, d+9)=sqrt(2/13)*cos(20/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(20/14*pi);
        
        R_hat(i, d+11)=sqrt(2/13)*cos(24/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(24/14*pi);
        
        
        R_hat(i, d+13)=sqrt(1/13)*cos(2*pi);
        
       elseif data(i,j)==k(4)
        R_hat(i, d+1)=sqrt(2/13)*cos(6/14*pi);
        R_hat(i, d+2)=sqrt(2/13)*sin(6/14*pi);
        R_hat(i, d+3)=sqrt(2/13)*cos(12/14*pi);
        R_hat(i, d+4)=sqrt(2/13)*sin(12/14*pi);
        R_hat(i, d+5)=sqrt(2/13)*cos(18/14*pi);
        R_hat(i, d+6)=sqrt(2/13)*sin(18/14*pi);
        R_hat(i, d+7)=sqrt(2/13)*cos(24/14*pi);
        R_hat(i, d+8)=sqrt(2/13)*sin(24/14*pi);
        R_hat(i, d+9)=sqrt(2/13)*cos(30/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(30/14*pi);
        
        R_hat(i, d+11)=sqrt(2/13)*cos(36/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(36/14*pi);
         
         
        R_hat(i, d+13)=sqrt(1/13)*cos(3*pi);        
        
    elseif data(i,j)==k(5)
        R_hat(i, d+1) = sqrt(2/13)*cos(8/14*pi);
        R_hat(i, d+2) = sqrt(2/13)*sin(8/14*pi);
        R_hat(i, d+3) = sqrt(2/13)*cos(16/14*pi);
        R_hat(i, d+4) = sqrt(2/13)*sin(16/14*pi);
        R_hat(i, d+5) = sqrt(2/13)*cos(24/14*pi);
        R_hat(i, d+6) = sqrt(2/13)*sin(24/14*pi);
        R_hat(i, d+7) = sqrt(2/13)*cos(32/14*pi);
        R_hat(i, d+8) = sqrt(2/13)*sin(32/14*pi);
        R_hat(i, d+9)=sqrt(2/13)*cos(40/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(40/14*pi);
        
        R_hat(i, d+11)=sqrt(2/13)*cos(48/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(48/14*pi);
         
        
        R_hat(i, d+13)=sqrt(1/13)*cos(4*pi); 
        
     elseif data(i,j) ==k(6)
        R_hat(i, d+1) = sqrt(2/13)*cos(10/14*pi);
        R_hat(i, d+2) = sqrt(2/13)*sin(10/14*pi);
        R_hat(i, d+3) = sqrt(2/13)*cos(20/14*pi);
        R_hat(i, d+4) = sqrt(2/13)*sin(20/14*pi);
        R_hat(i, d+5) = sqrt(2/13)*cos(30/14*pi);
        R_hat(i, d+6) = sqrt(2/13)*sin(30/14*pi);
        R_hat(i, d+7) = sqrt(2/13)*cos(40/14*pi);
        R_hat(i, d+8) = sqrt(2/13)*sin(40/14*pi); 
        R_hat(i, d+9)=sqrt(2/13)*cos(50/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(50/14*pi);
        
        R_hat(i, d+11)=sqrt(2/13)*cos(60/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(60/14*pi);
        
        R_hat(i, d+13)=sqrt(1/13)*cos(5*pi);       
    elseif data(i,j) ==k(7)
       R_hat(i, d+1) = sqrt(2/13)*cos(12/14*pi);
        R_hat(i, d+2) = sqrt(2/13)*sin(12/14*pi);
        R_hat(i, d+3) = sqrt(2/13)*cos(24/14*pi);
        R_hat(i, d+4) = sqrt(2/13)*sin(24/14*pi);
        R_hat(i, d+5) = sqrt(2/13)*cos(36/14*pi);
        R_hat(i, d+6) = sqrt(2/13)*sin(36/14*pi);
        R_hat(i, d+7) = sqrt(2/13)*cos(48/14*pi);
        R_hat(i, d+8) = sqrt(2/13)*sin(48/14*pi);
        R_hat(i, d+9)=sqrt(2/13)*cos(60/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(60/14*pi);
        R_hat(i, d+11)=sqrt(2/13)*cos(72/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(72/14*pi);
         
        R_hat(i, d+13)=sqrt(1/13)*cos(6*pi);
        
     elseif data(i,j) ==k(8)
       R_hat(i, d+1) = sqrt(2/13)*cos(14/14*pi);
        R_hat(i, d+2) = sqrt(2/13)*sin(14/14*pi);
        R_hat(i, d+3) = sqrt(2/13)*cos(28/14*pi);
        R_hat(i, d+4) = sqrt(2/13)*sin(28/14*pi);
        R_hat(i, d+5) = sqrt(2/13)*cos(42/14*pi);
        R_hat(i, d+6) = sqrt(2/13)*sin(42/14*pi);
        R_hat(i, d+7) = sqrt(2/13)*cos(56/14*pi);
        R_hat(i, d+8) = sqrt(2/13)*sin(56/14*pi);
        R_hat(i, d+9)=sqrt(2/13)*cos(70/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(70/14*pi);
       
        R_hat(i, d+11)=sqrt(2/13)*cos(84/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(84/14*pi);
         
               
        R_hat(i, d+13)=sqrt(1/13)*cos(7*pi);
        
      elseif data(i,j) ==k(9) 
        R_hat(i, d+1) = sqrt(2/13)*cos(16/14*pi);
        R_hat(i, d+2) = sqrt(2/13)*sin(16/14*pi);
        R_hat(i, d+3) = sqrt(2/13)*cos(32/14*pi);
        R_hat(i, d+4) = sqrt(2/13)*sin(32/14*pi);
        R_hat(i, d+5) = sqrt(2/13)*cos(48/14*pi);
        R_hat(i, d+6) = sqrt(2/13)*sin(48/14*pi);
        R_hat(i, d+7) = sqrt(2/13)*cos(64/14*pi);
        R_hat(i, d+8) = sqrt(2/13)*sin(64/14*pi); 
        R_hat(i, d+9)=sqrt(2/13)*cos(80/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(80/14*pi);
        
        R_hat(i, d+11)=sqrt(2/13)*cos(96/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(96/14*pi);
         
        
        R_hat(i, d+13)=sqrt(1/13)*cos(8*pi);
        
    elseif data(i,j) ==k(10) 
        R_hat(i, d+1) = sqrt(2/13)*cos(18/14*pi);
        R_hat(i, d+2) = sqrt(2/13)*sin(18/14*pi);
        R_hat(i, d+3) = sqrt(2/13)*cos(36/14*pi);
        R_hat(i, d+4) = sqrt(2/13)*sin(36/14*pi);
        R_hat(i, d+5) = sqrt(2/13)*cos(54/14*pi);
        R_hat(i, d+6) = sqrt(2/13)*sin(54/14*pi);
        R_hat(i, d+7) = sqrt(2/13)*cos(72/14*pi);
        R_hat(i, d+8) = sqrt(2/13)*sin(72/14*pi);
        R_hat(i, d+9)=sqrt(2/13)*cos(90/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(90/14*pi);
        
        R_hat(i, d+11)=sqrt(2/13)*cos(108/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(108/14*pi);
         
         
        R_hat(i, d+13)=sqrt(1/13)*cos(9*pi);
        
        elseif data(i,j) ==k(11) 
        R_hat(i, d+1) = sqrt(2/13)*cos(20/14*pi);
        R_hat(i, d+2) = sqrt(2/13)*sin(20/14*pi);
        R_hat(i, d+3) = sqrt(2/13)*cos(40/14*pi);
        R_hat(i, d+4) = sqrt(2/13)*sin(40/14*pi);
        R_hat(i, d+5) = sqrt(2/13)*cos(60/14*pi);
        R_hat(i, d+6) = sqrt(2/13)*sin(60/14*pi);
        R_hat(i, d+7) = sqrt(2/13)*cos(80/14*pi);
        R_hat(i, d+8) = sqrt(2/13)*sin(80/14*pi);
        R_hat(i, d+9)=sqrt(2/13)*cos(100/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(100/14*pi);
        
        R_hat(i, d+11)=sqrt(2/13)*cos(120/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(120/14*pi);
         
        R_hat(i, d+13)=sqrt(1/13)*cos(10*pi);
        
        elseif data(i,j) ==k(12) 
        R_hat(i, d+1) = sqrt(2/13)*cos(22/14*pi);
        R_hat(i, d+2) = sqrt(2/13)*sin(22/14*pi);
        R_hat(i, d+3) = sqrt(2/13)*cos(44/14*pi);
        R_hat(i, d+4) = sqrt(2/13)*sin(44/14*pi);
        R_hat(i, d+5) = sqrt(2/13)*cos(66/14*pi);
        R_hat(i, d+6) = sqrt(2/13)*sin(66/14*pi);
        R_hat(i, d+7) = sqrt(2/13)*cos(88/14*pi);
        R_hat(i, d+8) = sqrt(2/13)*sin(88/14*pi);
        R_hat(i, d+9)=sqrt(2/13)*cos(110/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(110/14*pi);
         
        R_hat(i, d+11)=sqrt(2/13)*cos(132/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(132/14*pi);
         
        R_hat(i, d+13)=sqrt(1/13)*cos(11*pi);
        
        elseif data(i,j) ==k(13) 
        R_hat(i, d+1) = sqrt(2/13)*cos(24/14*pi);
        R_hat(i, d+2) = sqrt(2/13)*sin(24/14*pi);
        R_hat(i, d+3) = sqrt(2/13)*cos(48/14*pi);
        R_hat(i, d+4) = sqrt(2/13)*sin(48/14*pi);
        R_hat(i, d+5) = sqrt(2/13)*cos(72/14*pi);
        R_hat(i, d+6) = sqrt(2/13)*sin(72/14*pi);
        R_hat(i, d+7) = sqrt(2/13)*cos(96/14*pi);
        R_hat(i, d+8) = sqrt(2/13)*sin(96/14*pi);
        R_hat(i, d+9)=sqrt(2/13)*cos(120/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(120/14*pi);
         
        R_hat(i, d+11)=sqrt(2/13)*cos(144/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(144/14*pi);
         
               
        R_hat(i, d+13)=sqrt(1/13)*cos(12*pi);
        
        elseif data(i,j) ==k(14) 
        R_hat(i, d+1) = sqrt(2/13)*cos(26/14*pi);
        R_hat(i, d+2) = sqrt(2/13)*sin(26/14*pi);
        R_hat(i, d+3) = sqrt(2/13)*cos(52/14*pi);
        R_hat(i, d+4) = sqrt(2/13)*sin(52/14*pi);
        R_hat(i, d+5) = sqrt(2/13)*cos(78/14*pi);
        R_hat(i, d+6) = sqrt(2/13)*sin(78/14*pi);
        R_hat(i, d+7) = sqrt(2/13)*cos(104/14*pi);
        R_hat(i, d+8) = sqrt(2/13)*sin(104/14*pi);
        R_hat(i, d+9)=sqrt(2/13)*cos(130/14*pi);
        R_hat(i, d+10)=sqrt(2/13)*sin(130/14*pi);
         
        R_hat(i, d+11)=sqrt(2/13)*cos(156/14*pi);
        R_hat(i, d+12)=sqrt(2/13)*sin(156/14*pi);
         
        
        R_hat(i, d+13)=sqrt(1/13)*cos(13*pi);
        
        
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0; 
       R_hat(i,d+4)=0;
       R_hat(i,d+5)=0;
       R_hat(i,d+6)=0;
       R_hat(i,d+7)=0;
       R_hat(i,d+8)=0;
       R_hat(i, d+9)=0;
       R_hat(i, d+10)=0;
       R_hat(i, d+11)=0;
       R_hat(i, d+12)=0;
        
       R_hat(i, d+13)=0;
       
     end
   end 
 
   
   elseif lk==15 
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i, d+1)=sqrt(1/7);
        R_hat(i, d+2)=0;
        R_hat(i, d+3)=sqrt(1/7);
        R_hat(i, d+4)=0;
        R_hat(i, d+5)=sqrt(1/7);
        R_hat(i, d+6)=0;
        R_hat(i, d+7)=sqrt(1/7);
        R_hat(i, d+8)=0;
        R_hat(i, d+9)=sqrt(1/7);
        R_hat(i, d+10)=0;
        R_hat(i, d+11)=sqrt(1/7);
        R_hat(i, d+12)=0;
        R_hat(i, d+13)=sqrt(1/7);
        R_hat(i, d+14)=0;
        
   elseif data(i,j)==k(2)
        R_hat(i, d+1)=sqrt(1/7)*cos(2/15*pi);
        R_hat(i, d+2)=sqrt(1/7)*sin(2/15*pi);
        R_hat(i, d+3)=sqrt(1/7)*cos(4/15*pi);
        R_hat(i, d+4)=sqrt(1/7)*sin(4/15*pi);
        R_hat(i, d+5)=sqrt(1/7)*cos(6/15*pi);
        R_hat(i, d+6)=sqrt(1/7)*sin(6/15*pi);
        R_hat(i, d+7)=sqrt(1/7)*cos(8/15*pi);
        R_hat(i, d+8)=sqrt(1/7)*sin(8/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(10/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(10/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(12/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(12/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(14/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(14/15*pi);
        
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=sqrt(1/7)*cos(4/15*pi);
        R_hat(i, d+2)=sqrt(1/7)*sin(4/15*pi);
        R_hat(i, d+3)=sqrt(1/7)*cos(8/15*pi);
        R_hat(i, d+4)=sqrt(1/7)*sin(8/15*pi);
        R_hat(i, d+5)=sqrt(1/7)*cos(12/15*pi);
        R_hat(i, d+6)=sqrt(1/7)*sin(12/15*pi);
        R_hat(i, d+7)=sqrt(1/7)*cos(16/15*pi);
        R_hat(i, d+8)=sqrt(1/7)*sin(16/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(20/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(20/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(24/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(24/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(28/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(28/15*pi);
    
       elseif data(i,j)==k(4)
        R_hat(i, d+1)=sqrt(1/7)*cos(6/15*pi);
        R_hat(i, d+2)=sqrt(1/7)*sin(6/15*pi);
        R_hat(i, d+3)=sqrt(1/7)*cos(12/15*pi);
        R_hat(i, d+4)=sqrt(1/7)*sin(12/15*pi);
        R_hat(i, d+5)=sqrt(1/7)*cos(18/15*pi);
        R_hat(i, d+6)=sqrt(1/7)*sin(18/15*pi);
        R_hat(i, d+7)=sqrt(1/7)*cos(24/15*pi);
        R_hat(i, d+8)=sqrt(1/7)*sin(24/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(30/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(30/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(36/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(36/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(42/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(42/15*pi);
          
    elseif data(i,j)==k(5)
        R_hat(i, d+1) = sqrt(1/7)*cos(8/15*pi);
        R_hat(i, d+2) = sqrt(1/7)*sin(8/15*pi);
        R_hat(i, d+3) = sqrt(1/7)*cos(16/15*pi);
        R_hat(i, d+4) = sqrt(1/7)*sin(16/15*pi);
        R_hat(i, d+5) = sqrt(1/7)*cos(24/15*pi);
        R_hat(i, d+6) = sqrt(1/7)*sin(24/15*pi);
        R_hat(i, d+7) = sqrt(1/7)*cos(32/15*pi);
        R_hat(i, d+8) = sqrt(1/7)*sin(32/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(40/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(40/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(48/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(48/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(56/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(56/15*pi);
             
     elseif data(i,j) ==k(6)
        R_hat(i, d+1) = sqrt(1/7)*cos(10/15*pi);
        R_hat(i, d+2) = sqrt(1/7)*sin(10/15*pi);
        R_hat(i, d+3) = sqrt(1/7)*cos(20/15*pi);
        R_hat(i, d+4) = sqrt(1/7)*sin(20/15*pi);
        R_hat(i, d+5) = sqrt(1/7)*cos(30/15*pi);
        R_hat(i, d+6) = sqrt(1/7)*sin(30/15*pi);
        R_hat(i, d+7) = sqrt(1/7)*cos(40/15*pi);
        R_hat(i, d+8) = sqrt(1/7)*sin(40/15*pi); 
        R_hat(i, d+9)=sqrt(1/7)*cos(50/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(50/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(60/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(60/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(70/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(70/15*pi);
                   
    elseif data(i,j) ==k(7)
       R_hat(i, d+1) = sqrt(1/7)*cos(12/15*pi);
        R_hat(i, d+2) = sqrt(1/7)*sin(12/15*pi);
        R_hat(i, d+3) = sqrt(1/7)*cos(24/15*pi);
        R_hat(i, d+4) = sqrt(1/7)*sin(24/15*pi);
        R_hat(i, d+5) = sqrt(1/7)*cos(36/15*pi);
        R_hat(i, d+6) = sqrt(1/7)*sin(36/15*pi);
        R_hat(i, d+7) = sqrt(1/7)*cos(48/15*pi);
        R_hat(i, d+8) = sqrt(1/7)*sin(48/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(60/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(60/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(72/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(72/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(84/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(84/15*pi);
        
     elseif data(i,j) ==k(8)
       R_hat(i, d+1) = sqrt(1/7)*cos(14/15*pi);
        R_hat(i, d+2) = sqrt(1/7)*sin(14/15*pi);
        R_hat(i, d+3) = sqrt(1/7)*cos(28/15*pi);
        R_hat(i, d+4) = sqrt(1/7)*sin(28/15*pi);
        R_hat(i, d+5) = sqrt(1/7)*cos(42/15*pi);
        R_hat(i, d+6) = sqrt(1/7)*sin(42/15*pi);
        R_hat(i, d+7) = sqrt(1/7)*cos(56/15*pi);
        R_hat(i, d+8) = sqrt(1/7)*sin(56/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(70/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(70/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(84/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(84/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(98/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(98/15*pi);
        
      elseif data(i,j) ==k(9) 
        R_hat(i, d+1) = sqrt(1/7)*cos(16/15*pi);
        R_hat(i, d+2) = sqrt(1/7)*sin(16/15*pi);
        R_hat(i, d+3) = sqrt(1/7)*cos(32/15*pi);
        R_hat(i, d+4) = sqrt(1/7)*sin(32/15*pi);
        R_hat(i, d+5) = sqrt(1/7)*cos(48/15*pi);
        R_hat(i, d+6) = sqrt(1/7)*sin(48/15*pi);
        R_hat(i, d+7) = sqrt(1/7)*cos(64/15*pi);
        R_hat(i, d+8) = sqrt(1/7)*sin(64/15*pi); 
        R_hat(i, d+9)=sqrt(1/7)*cos(80/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(80/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(96/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(96/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(112/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(112/15*pi);
        
        elseif data(i,j) ==k(10) 
        R_hat(i, d+1) = sqrt(1/7)*cos(18/15*pi);
        R_hat(i, d+2) = sqrt(1/7)*sin(18/15*pi);
        R_hat(i, d+3) = sqrt(1/7)*cos(36/15*pi);
        R_hat(i, d+4) = sqrt(1/7)*sin(36/15*pi);
        R_hat(i, d+5) = sqrt(1/7)*cos(54/15*pi);
        R_hat(i, d+6) = sqrt(1/7)*sin(54/15*pi);
        R_hat(i, d+7) = sqrt(1/7)*cos(72/15*pi);
        R_hat(i, d+8) = sqrt(1/7)*sin(72/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(90/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(90/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(108/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(108/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(126/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(126/15*pi);
         
        
        elseif data(i,j) ==k(11) 
        R_hat(i, d+1) = sqrt(1/7)*cos(20/15*pi);
        R_hat(i, d+2) = sqrt(1/7)*sin(20/15*pi);
        R_hat(i, d+3) = sqrt(1/7)*cos(40/15*pi);
        R_hat(i, d+4) = sqrt(1/7)*sin(40/15*pi);
        R_hat(i, d+5) = sqrt(1/7)*cos(60/15*pi);
        R_hat(i, d+6) = sqrt(1/7)*sin(60/15*pi);
        R_hat(i, d+7) = sqrt(1/7)*cos(80/15*pi);
        R_hat(i, d+8) = sqrt(1/7)*sin(80/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(100/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(100/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(120/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(120/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(140/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(140/15*pi);
   
        elseif data(i,j) ==k(12) 
        R_hat(i, d+1) = sqrt(1/7)*cos(22/15*pi);
        R_hat(i, d+2) = sqrt(1/7)*sin(22/15*pi);
        R_hat(i, d+3) = sqrt(1/7)*cos(44/15*pi);
        R_hat(i, d+4) = sqrt(1/7)*sin(44/15*pi);
        R_hat(i, d+5) = sqrt(1/7)*cos(66/15*pi);
        R_hat(i, d+6) = sqrt(1/7)*sin(66/15*pi);
        R_hat(i, d+7) = sqrt(1/7)*cos(88/15*pi);
        R_hat(i, d+8) = sqrt(1/7)*sin(88/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(110/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(110/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(132/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(132/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(154/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(154/15*pi);
   
        elseif data(i,j) ==k(13) 
        R_hat(i, d+1) = sqrt(1/7)*cos(24/15*pi);
        R_hat(i, d+2) = sqrt(1/7)*sin(24/15*pi);
        R_hat(i, d+3) = sqrt(1/7)*cos(48/15*pi);
        R_hat(i, d+4) = sqrt(1/7)*sin(48/15*pi);
        R_hat(i, d+5) = sqrt(1/7)*cos(72/15*pi);
        R_hat(i, d+6) = sqrt(1/7)*sin(72/15*pi);
        R_hat(i, d+7) = sqrt(1/7)*cos(96/15*pi);
        R_hat(i, d+8) = sqrt(1/7)*sin(96/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(120/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(120/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(144/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(144/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(168/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(168/15*pi);
        
        elseif data(i,j) ==k(14) 
        R_hat(i, d+1) = sqrt(1/7)*cos(26/15*pi);
        R_hat(i, d+2) = sqrt(1/7)*sin(26/15*pi);
        R_hat(i, d+3) = sqrt(1/7)*cos(52/15*pi);
        R_hat(i, d+4) = sqrt(1/7)*sin(52/15*pi);
        R_hat(i, d+5) = sqrt(1/7)*cos(78/15*pi);
        R_hat(i, d+6) = sqrt(1/7)*sin(78/15*pi);
        R_hat(i, d+7) = sqrt(1/7)*cos(104/15*pi);
        R_hat(i, d+8) = sqrt(1/7)*sin(104/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(130/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(130/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(156/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(156/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(182/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(182/15*pi);
   
        elseif data(i,j) ==k(15) 
        R_hat(i, d+1) = sqrt(1/7)*cos(28/15*pi);
        R_hat(i, d+2) = sqrt(1/7)*sin(28/15*pi);
        R_hat(i, d+3) = sqrt(1/7)*cos(56/15*pi);
        R_hat(i, d+4) = sqrt(1/7)*sin(56/15*pi);
        R_hat(i, d+5) = sqrt(1/7)*cos(84/15*pi);
        R_hat(i, d+6) = sqrt(1/7)*sin(84/15*pi);
        R_hat(i, d+7) = sqrt(1/7)*cos(112/15*pi);
        R_hat(i, d+8) = sqrt(1/7)*sin(112/15*pi);
        R_hat(i, d+9)=sqrt(1/7)*cos(140/15*pi);
        R_hat(i, d+10)=sqrt(1/7)*sin(140/15*pi);
        R_hat(i, d+11)=sqrt(1/7)*cos(168/15*pi);
        R_hat(i, d+12)=sqrt(1/7)*sin(168/15*pi);
        R_hat(i, d+13)=sqrt(1/7)*cos(196/15*pi);
        R_hat(i, d+14)=sqrt(1/7)*sin(196/15*pi);
        
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0; 
       R_hat(i,d+4)=0;
       R_hat(i,d+5)=0;
       R_hat(i,d+6)=0;
       R_hat(i,d+7)=0;
       R_hat(i,d+8)=0;
       R_hat(i, d+9)=0;
       R_hat(i, d+10)=0;
       R_hat(i, d+11)=0;
       R_hat(i, d+12)=0;
       R_hat(i, d+13)=0;
       R_hat(i, d+14)=0;
         
    end
   end 
   
   
   
    elseif lk==16
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i, d+1)=sqrt(2/15);
        R_hat(i, d+2)=0;
        R_hat(i, d+3)=sqrt(2/15);
        R_hat(i, d+4)=0;
        R_hat(i, d+5)=sqrt(2/15);
        R_hat(i, d+6)=0;
        R_hat(i, d+7)=sqrt(2/15);
        R_hat(i, d+8)=0;
        R_hat(i, d+9)=sqrt(2/15);
        R_hat(i, d+10)=0;
        R_hat(i, d+11)=sqrt(2/15);
        R_hat(i, d+12)=0;
        R_hat(i, d+13)=sqrt(2/15);
        R_hat(i, d+14)=0;
        
        
        R_hat(i, d+15)=sqrt(1/15)*cos(0*pi);
         
        
   elseif data(i,j)==k(2)
        R_hat(i, d+1)=sqrt(2/15)*cos(2/16*pi);
        R_hat(i, d+2)=sqrt(2/15)*sin(2/16*pi);
        R_hat(i, d+3)=sqrt(2/15)*cos(4/16*pi);
        R_hat(i, d+4)=sqrt(2/15)*sin(4/16*pi);
        R_hat(i, d+5)=sqrt(2/15)*cos(6/16*pi);
        R_hat(i, d+6)=sqrt(2/15)*sin(6/16*pi);
        R_hat(i, d+7)=sqrt(2/15)*cos(8/16*pi);
        R_hat(i, d+8)=sqrt(2/15)*sin(8/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(10/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(10/16*pi);
        R_hat(i, d+11)=sqrt(2/15)*cos(12/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(12/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(14/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(14/16*pi);
       
        R_hat(i, d+15)=sqrt(1/15)*cos(1*pi);
        
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=sqrt(2/15)*cos(4/16*pi);
        R_hat(i, d+2)=sqrt(2/15)*sin(4/16*pi);
        R_hat(i, d+3)=sqrt(2/15)*cos(8/16*pi);
        R_hat(i, d+4)=sqrt(2/15)*sin(8/16*pi);
        R_hat(i, d+5)=sqrt(2/15)*cos(12/16*pi);
        R_hat(i, d+6)=sqrt(2/15)*sin(12/16*pi);
        R_hat(i, d+7)=sqrt(2/15)*cos(16/16*pi);
        R_hat(i, d+8)=sqrt(2/15)*sin(16/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(20/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(20/16*pi);
        
        R_hat(i, d+11)=sqrt(2/15)*cos(24/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(24/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(28/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(28/16*pi);
        
        
        R_hat(i, d+15)=sqrt(1/15)*cos(2*pi);
        
       elseif data(i,j)==k(4)
        R_hat(i, d+1)=sqrt(2/15)*cos(6/16*pi);
        R_hat(i, d+2)=sqrt(2/15)*sin(6/16*pi);
        R_hat(i, d+3)=sqrt(2/15)*cos(12/16*pi);
        R_hat(i, d+4)=sqrt(2/15)*sin(12/16*pi);
        R_hat(i, d+5)=sqrt(2/15)*cos(18/16*pi);
        R_hat(i, d+6)=sqrt(2/15)*sin(18/16*pi);
        R_hat(i, d+7)=sqrt(2/15)*cos(24/16*pi);
        R_hat(i, d+8)=sqrt(2/15)*sin(24/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(30/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(30/16*pi);
        
        R_hat(i, d+11)=sqrt(2/15)*cos(36/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(36/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(42/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(42/16*pi);
        
         
        R_hat(i, d+15)=sqrt(1/15)*cos(3*pi);        
        
    elseif data(i,j)==k(5)
        R_hat(i, d+1) = sqrt(2/15)*cos(8/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(8/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(16/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(16/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(24/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(24/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(32/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(32/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(40/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(40/16*pi);
        
        R_hat(i, d+11)=sqrt(2/15)*cos(48/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(48/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(56/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(56/16*pi);
        
        
        R_hat(i, d+15)=sqrt(1/15)*cos(4*pi); 
        
     elseif data(i,j) ==k(6)
        R_hat(i, d+1) = sqrt(2/15)*cos(10/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(10/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(20/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(20/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(30/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(30/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(40/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(40/16*pi); 
        R_hat(i, d+9)=sqrt(2/15)*cos(50/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(50/16*pi);
        
        R_hat(i, d+11)=sqrt(2/15)*cos(60/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(60/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(70/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(70/16*pi);
        
        R_hat(i, d+15)=sqrt(1/15)*cos(5*pi);       
    elseif data(i,j) ==k(7)
       R_hat(i, d+1) = sqrt(2/15)*cos(12/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(12/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(24/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(24/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(36/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(36/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(48/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(48/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(60/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(60/16*pi);
        R_hat(i, d+11)=sqrt(2/15)*cos(72/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(72/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(84/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(84/16*pi);
        
        R_hat(i, d+15)=sqrt(1/15)*cos(6*pi);
        
     elseif data(i,j) ==k(8)
       R_hat(i, d+1) = sqrt(2/15)*cos(14/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(14/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(28/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(28/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(42/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(42/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(56/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(56/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(70/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(70/16*pi);
       
        R_hat(i, d+11)=sqrt(2/15)*cos(84/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(84/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(98/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(98/16*pi);
         
               
        R_hat(i, d+15)=sqrt(1/15)*cos(7*pi);
        
      elseif data(i,j) ==k(9) 
        R_hat(i, d+1) = sqrt(2/15)*cos(16/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(16/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(32/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(32/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(48/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(48/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(64/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(64/16*pi); 
        R_hat(i, d+9)=sqrt(2/15)*cos(80/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(80/16*pi);
        
        R_hat(i, d+11)=sqrt(2/15)*cos(96/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(96/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(112/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(112/16*pi);
        
         
        
        R_hat(i, d+15)=sqrt(1/15)*cos(8*pi);
        
    elseif data(i,j) ==k(10) 
        R_hat(i, d+1) = sqrt(2/15)*cos(18/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(18/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(36/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(36/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(54/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(54/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(72/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(72/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(90/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(90/16*pi);
        
        R_hat(i, d+11)=sqrt(2/15)*cos(108/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(108/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(126/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(126/16*pi);
        
         
        R_hat(i, d+15)=sqrt(1/15)*cos(9*pi);
        
        elseif data(i,j) ==k(11) 
        R_hat(i, d+1) = sqrt(2/15)*cos(20/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(20/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(40/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(40/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(60/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(60/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(80/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(80/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(100/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(100/16*pi);
        
        R_hat(i, d+11)=sqrt(2/15)*cos(120/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(120/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(140/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(140/16*pi);
         
        R_hat(i, d+15)=sqrt(1/15)*cos(10*pi);
        
        elseif data(i,j) ==k(12) 
        R_hat(i, d+1) = sqrt(2/15)*cos(22/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(22/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(44/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(44/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(66/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(66/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(88/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(88/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(110/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(110/16*pi);
         
        R_hat(i, d+11)=sqrt(2/15)*cos(132/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(132/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(154/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(154/16*pi);
         
        R_hat(i, d+15)=sqrt(1/15)*cos(11*pi);
        
        elseif data(i,j) ==k(13) 
        R_hat(i, d+1) = sqrt(2/15)*cos(24/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(24/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(48/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(48/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(72/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(72/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(96/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(96/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(120/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(120/16*pi);
         
        R_hat(i, d+11)=sqrt(2/15)*cos(144/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(144/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(168/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(168/16*pi);
         
               
        R_hat(i, d+15)=sqrt(1/15)*cos(12*pi);
        
        elseif data(i,j) ==k(14) 
        R_hat(i, d+1) = sqrt(2/15)*cos(26/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(26/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(52/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(52/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(78/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(78/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(104/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(104/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(130/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(130/16*pi);
         
        R_hat(i, d+11)=sqrt(2/15)*cos(156/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(156/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(182/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(182/16*pi);
        
     
        
        R_hat(i, d+15)=sqrt(1/15)*cos(13*pi);
        
        elseif data(i,j) ==k(15) 
        R_hat(i, d+1) = sqrt(2/15)*cos(28/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(28/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(56/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(56/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(84/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(84/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(112/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(112/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(140/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(140/16*pi);
         
        R_hat(i, d+11)=sqrt(2/15)*cos(168/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(168/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(196/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(196/16*pi);
         
        
        R_hat(i, d+15)=sqrt(1/15)*cos(14*pi);
        
        
        elseif data(i,j) ==k(16) 
        R_hat(i, d+1) = sqrt(2/15)*cos(30/16*pi);
        R_hat(i, d+2) = sqrt(2/15)*sin(30/16*pi);
        R_hat(i, d+3) = sqrt(2/15)*cos(60/16*pi);
        R_hat(i, d+4) = sqrt(2/15)*sin(60/16*pi);
        R_hat(i, d+5) = sqrt(2/15)*cos(90/16*pi);
        R_hat(i, d+6) = sqrt(2/15)*sin(90/16*pi);
        R_hat(i, d+7) = sqrt(2/15)*cos(120/16*pi);
        R_hat(i, d+8) = sqrt(2/15)*sin(120/16*pi);
        R_hat(i, d+9)=sqrt(2/15)*cos(150/16*pi);
        R_hat(i, d+10)=sqrt(2/15)*sin(150/16*pi);
         
        R_hat(i, d+11)=sqrt(2/15)*cos(180/16*pi);
        R_hat(i, d+12)=sqrt(2/15)*sin(180/16*pi);
        R_hat(i, d+13)=sqrt(2/15)*cos(210/16*pi);
        R_hat(i, d+14)=sqrt(2/15)*sin(210/16*pi);
         
        
        R_hat(i, d+15)=sqrt(1/15)*cos(15*pi);
        
         
        
        
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0; 
       R_hat(i,d+4)=0;
       R_hat(i,d+5)=0;
       R_hat(i,d+6)=0;
       R_hat(i,d+7)=0;
       R_hat(i,d+8)=0;
       R_hat(i, d+9)=0;
       R_hat(i, d+10)=0;
       R_hat(i, d+11)=0;
       R_hat(i, d+12)=0;
       R_hat(i, d+13)=0;
       R_hat(i, d+14)=0;
       
       R_hat(i, d+15)=0;
       
     end
   end 
 

  elseif lk==18 
   for i =1:n
    if data(i,j)==k(1)
        R_hat(i, d+1)=sqrt(2/17);
        R_hat(i, d+2)=0;
        R_hat(i, d+3)=sqrt(2/17);
        R_hat(i, d+4)=0;
        R_hat(i, d+5)=sqrt(2/17);
        R_hat(i, d+6)=0;
        R_hat(i, d+7)=sqrt(2/17);
        R_hat(i, d+8)=0;
        R_hat(i, d+9)=sqrt(2/17);
        R_hat(i, d+10)=0;
        R_hat(i, d+11)=sqrt(2/17);
        R_hat(i, d+12)=0;
        R_hat(i, d+13)=sqrt(2/17);
        R_hat(i, d+14)=0;
        
        R_hat(i, d+15)=sqrt(2/17);
        R_hat(i, d+16)=0;
        R_hat(i, d+17)=sqrt(1/17)*cos(0*pi);
         
        
   elseif data(i,j)==k(2)
        R_hat(i, d+1)=sqrt(2/17)*cos(2/18*pi);
        R_hat(i, d+2)=sqrt(2/17)*sin(2/18*pi);
        R_hat(i, d+3)=sqrt(2/17)*cos(4/18*pi);
        R_hat(i, d+4)=sqrt(2/17)*sin(4/18*pi);
        R_hat(i, d+5)=sqrt(2/17)*cos(6/18*pi);
        R_hat(i, d+6)=sqrt(2/17)*sin(6/18*pi);
        R_hat(i, d+7)=sqrt(2/17)*cos(8/18*pi);
        R_hat(i, d+8)=sqrt(2/17)*sin(8/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(10/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(10/18*pi);
        R_hat(i, d+11)=sqrt(2/17)*cos(12/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(12/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(14/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(14/18*pi);
        R_hat(i, d+15)=sqrt(2/17)*cos(16/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(16/18*pi);
        R_hat(i, d+17)=sqrt(1/17)*cos(1*pi);
        
    elseif data(i,j)==k(3)
        R_hat(i, d+1)=sqrt(2/17)*cos(4/18*pi);
        R_hat(i, d+2)=sqrt(2/17)*sin(4/18*pi);
        R_hat(i, d+3)=sqrt(2/17)*cos(8/18*pi);
        R_hat(i, d+4)=sqrt(2/17)*sin(8/18*pi);
        R_hat(i, d+5)=sqrt(2/17)*cos(12/18*pi);
        R_hat(i, d+6)=sqrt(2/17)*sin(12/18*pi);
        R_hat(i, d+7)=sqrt(2/17)*cos(16/18*pi);
        R_hat(i, d+8)=sqrt(2/17)*sin(16/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(20/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(20/18*pi);
        
        R_hat(i, d+11)=sqrt(2/17)*cos(24/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(24/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(28/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(28/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(32/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(32/18*pi);
        R_hat(i, d+17)=sqrt(1/17)*cos(2*pi);
        
       elseif data(i,j)==k(4)
        R_hat(i, d+1)=sqrt(2/17)*cos(6/18*pi);
        R_hat(i, d+2)=sqrt(2/17)*sin(6/18*pi);
        R_hat(i, d+3)=sqrt(2/17)*cos(12/18*pi);
        R_hat(i, d+4)=sqrt(2/17)*sin(12/18*pi);
        R_hat(i, d+5)=sqrt(2/17)*cos(18/18*pi);
        R_hat(i, d+6)=sqrt(2/17)*sin(18/18*pi);
        R_hat(i, d+7)=sqrt(2/17)*cos(24/18*pi);
        R_hat(i, d+8)=sqrt(2/17)*sin(24/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(30/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(30/18*pi);
        
        R_hat(i, d+11)=sqrt(2/17)*cos(36/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(36/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(42/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(42/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(48/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(48/18*pi);
         
        R_hat(i, d+17)=sqrt(1/17)*cos(3*pi);        
        
    elseif data(i,j)==k(5)
        R_hat(i, d+1) = sqrt(2/17)*cos(8/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(8/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(16/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(16/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(24/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(24/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(32/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(32/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(40/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(40/18*pi);
        
        R_hat(i, d+11)=sqrt(2/17)*cos(48/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(48/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(56/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(56/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(64/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(64/18*pi);
        
        R_hat(i, d+17)=sqrt(1/17)*cos(4*pi); 
        
     elseif data(i,j) ==k(6)
        R_hat(i, d+1) = sqrt(2/17)*cos(10/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(10/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(20/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(20/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(30/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(30/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(40/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(40/18*pi); 
        R_hat(i, d+9)=sqrt(2/17)*cos(50/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(50/18*pi);
        
        R_hat(i, d+11)=sqrt(2/17)*cos(60/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(60/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(70/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(70/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(80/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(80/18*pi);
         
        R_hat(i, d+17)=sqrt(1/17)*cos(5*pi);       
    elseif data(i,j) ==k(7)
       R_hat(i, d+1) = sqrt(2/17)*cos(12/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(12/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(24/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(24/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(36/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(36/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(48/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(48/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(60/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(60/18*pi);
        R_hat(i, d+11)=sqrt(2/17)*cos(72/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(72/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(84/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(84/18*pi);
        R_hat(i, d+15)=sqrt(2/17)*cos(96/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(96/18*pi);
        
        R_hat(i, d+17)=sqrt(1/17)*cos(6*pi);
        
     elseif data(i,j) ==k(8)
       R_hat(i, d+1) = sqrt(2/17)*cos(14/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(14/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(28/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(28/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(42/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(42/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(56/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(56/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(70/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(70/18*pi);
       
        R_hat(i, d+11)=sqrt(2/17)*cos(84/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(84/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(98/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(98/18*pi);
        R_hat(i, d+15)=sqrt(2/17)*cos(112/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(112/18*pi);
               
        R_hat(i, d+17)=sqrt(1/17)*cos(7*pi);
        
      elseif data(i,j) ==k(9) 
        R_hat(i, d+1) = sqrt(2/17)*cos(16/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(16/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(32/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(32/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(48/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(48/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(64/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(64/18*pi); 
        R_hat(i, d+9)=sqrt(2/17)*cos(80/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(80/18*pi);
        
        R_hat(i, d+11)=sqrt(2/17)*cos(96/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(96/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(112/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(112/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(128/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(128/18*pi);
        
        R_hat(i, d+17)=sqrt(1/17)*cos(8*pi);
        
    elseif data(i,j) ==k(10) 
        R_hat(i, d+1) = sqrt(2/17)*cos(18/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(18/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(36/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(36/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(54/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(54/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(72/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(72/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(90/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(90/18*pi);
        
        R_hat(i, d+11)=sqrt(2/17)*cos(108/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(108/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(126/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(126/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(144/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(144/18*pi);
         
        R_hat(i, d+17)=sqrt(1/17)*cos(9*pi);
        
        elseif data(i,j) ==k(11) 
        R_hat(i, d+1) = sqrt(2/17)*cos(20/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(20/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(40/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(40/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(60/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(60/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(80/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(80/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(100/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(100/18*pi);
        
        R_hat(i, d+11)=sqrt(2/17)*cos(120/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(120/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(140/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(140/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(160/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(160/18*pi);
        
        R_hat(i, d+17)=sqrt(1/17)*cos(10*pi);
        
        elseif data(i,j) ==k(12) 
        R_hat(i, d+1) = sqrt(2/17)*cos(22/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(22/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(44/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(44/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(66/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(66/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(88/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(88/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(110/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(110/18*pi);
         
        R_hat(i, d+11)=sqrt(2/17)*cos(132/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(132/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(154/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(154/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(176/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(176/18*pi);
        R_hat(i, d+17)=sqrt(1/17)*cos(11*pi);
        
        elseif data(i,j) ==k(13) 
        R_hat(i, d+1) = sqrt(2/17)*cos(24/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(24/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(48/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(48/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(72/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(72/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(96/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(96/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(120/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(120/18*pi);
         
        R_hat(i, d+11)=sqrt(2/17)*cos(144/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(144/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(168/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(168/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(192/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(192/18*pi);
               
        R_hat(i, d+17)=sqrt(1/17)*cos(12*pi);
        
        elseif data(i,j) ==k(14) 
        R_hat(i, d+1) = sqrt(2/17)*cos(26/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(26/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(52/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(52/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(78/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(78/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(104/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(104/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(130/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(130/18*pi);
         
        R_hat(i, d+11)=sqrt(2/17)*cos(156/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(156/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(182/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(182/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(208/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(208/18*pi);
        
        R_hat(i, d+17)=sqrt(1/17)*cos(13*pi);
        
        elseif data(i,j) ==k(15) 
        R_hat(i, d+1) = sqrt(2/17)*cos(28/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(28/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(56/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(56/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(84/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(84/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(112/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(112/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(140/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(140/18*pi);
         
        R_hat(i, d+11)=sqrt(2/17)*cos(168/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(168/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(196/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(196/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(224/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(224/18*pi);
        
        R_hat(i, d+17)=sqrt(1/17)*cos(14*pi);
        
        
        elseif data(i,j) ==k(16) 
        R_hat(i, d+1) = sqrt(2/17)*cos(30/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(30/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(60/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(60/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(90/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(90/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(120/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(120/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(150/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(150/18*pi);
         
        R_hat(i, d+11)=sqrt(2/17)*cos(180/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(180/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(210/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(210/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(240/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(240/18*pi);
        
        R_hat(i, d+17)=sqrt(1/17)*cos(15*pi);
        
        
        elseif data(i,j) ==k(17) 
        R_hat(i, d+1) = sqrt(2/17)*cos(32/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(32/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(64/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(64/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(96/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(96/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(128/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(128/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(160/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(160/18*pi);
         
        R_hat(i, d+11)=sqrt(2/17)*cos(192/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(192/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(224/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(224/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(256/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(256/18*pi);
        
        R_hat(i, d+17)=sqrt(1/17)*cos(16*pi);
       
        
        elseif data(i,j) ==k(18) 
        R_hat(i, d+1) = sqrt(2/17)*cos(34/18*pi);
        R_hat(i, d+2) = sqrt(2/17)*sin(34/18*pi);
        R_hat(i, d+3) = sqrt(2/17)*cos(68/18*pi);
        R_hat(i, d+4) = sqrt(2/17)*sin(68/18*pi);
        R_hat(i, d+5) = sqrt(2/17)*cos(102/18*pi);
        R_hat(i, d+6) = sqrt(2/17)*sin(102/18*pi);
        R_hat(i, d+7) = sqrt(2/17)*cos(136/18*pi);
        R_hat(i, d+8) = sqrt(2/17)*sin(136/18*pi);
        R_hat(i, d+9)=sqrt(2/17)*cos(170/18*pi);
        R_hat(i, d+10)=sqrt(2/17)*sin(170/18*pi);
         
        R_hat(i, d+11)=sqrt(2/17)*cos(204/18*pi);
        R_hat(i, d+12)=sqrt(2/17)*sin(204/18*pi);
        R_hat(i, d+13)=sqrt(2/17)*cos(238/18*pi);
        R_hat(i, d+14)=sqrt(2/17)*sin(238/18*pi);
        
        R_hat(i, d+15)=sqrt(2/17)*cos(272/18*pi);
        R_hat(i, d+16)=sqrt(2/17)*sin(272/18*pi);
        
        R_hat(i, d+17)=sqrt(1/17)*cos(17*pi);
        
        
    elseif isnan([data(i,j)])==1
       R_hat(i,d+1)=0; 
       R_hat(i,d+2)=0;
       R_hat(i,d+3)=0; 
       R_hat(i,d+4)=0;
       R_hat(i,d+5)=0;
       R_hat(i,d+6)=0;
       R_hat(i,d+7)=0;
       R_hat(i,d+8)=0;
       R_hat(i, d+9)=0;
       R_hat(i, d+10)=0;
       R_hat(i, d+11)=0;
       R_hat(i, d+12)=0;
       R_hat(i, d+13)=0;
       R_hat(i, d+14)=0;
       R_hat(i, d+15)=0;
       R_hat(i, d+16)=0;
       R_hat(i, d+17)=0;
       
     end
   end 
 
   
 end
 
  if lk>1
    d=d+lk-1; 
  elseif lk==1
    d=d+lk;
     elseif lk==0
    d=d+1;
  end
end
