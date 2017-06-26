% A=imread('paisaje.jpg');

function IM= negativo(I) 
[f,c] = size(I); 
IM=I; 
for i=1:f 
 for j=1:c 
 IM(i,j)=255 - IM(i,j); 
 end 
 end 
end