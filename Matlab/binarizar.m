function IM= binarizar(I, n) 
[f,c] = size(I); 
IM=I; 
    for i=1:f 
     for j=1:c 
     if(IM(i,j)> n) 
     IM(i,j)=1; 
     else
     IM(i,j)=0; 
     end 
     end 
    end
end
