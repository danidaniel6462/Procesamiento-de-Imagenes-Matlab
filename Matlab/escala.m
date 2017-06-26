%w = 1/9*[1 1 1;1 1 1;1 1 1];
%w = [-1 -1 -1;-1 8 -1;-1 -1 -1];


function IM = escala(n,I)
    [f,c] = size(I); 
    IM=I; 
    for i=1:f 
     for j=1:c 
        IM(i,j) = 0;
        i2 = floor(i/n)+1;
        j2 = floor(j/n)+1;
        if(i2>0 & j2>0 & i2<f & j2<c)
            IM(i,j) = I(i2,j2);
        end
     end 
    end
end

