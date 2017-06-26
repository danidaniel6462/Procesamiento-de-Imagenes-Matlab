%w = 1/9*[1 1 1;1 1 1;1 1 1];
%w = [-1 -1 -1;-1 8 -1;-1 -1 -1];


function IM = mediana(I)
[f,c] = size(I); 
IM=I; 
    for i=2:f-1 
     for j=2:c-1 
        lista = [I(i-1,j-1),I(i,j-1),I(i+1,j-1),I(i-1,j),I(i,j),I(i,j+1),I(i+1,j-1),I(i+1,j),I(i+1,j+1)];
        lista = sort(lista);
        IM(i,j) = lista(5);
     end 
    end
end

