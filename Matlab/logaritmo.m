% A=imread('paisaje.jpg');
% A=double(A);

function IM= logaritmo(I) 
    [f,c] = size(I); 
    IM=I; 
    for i=1:f 
     for j=1:c 
        IM(i,j)=255 * log(IM(i,j))/log(255); 
     end 
    end 
end
