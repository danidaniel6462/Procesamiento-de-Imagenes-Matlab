%w = 1/9*[1 1 1;1 1 1;1 1 1];
%w = [-1 -1 -1;-1 8 -1;-1 -1 -1];
%con la imagen de la flor  imagenes pequeñas se aprecia meor el efecto


function IM = maximo(I)
[f,c] = size(I); 
IM=I; 
    for i=2:f-1 
     for j=2:c-1 
        lista = [I(i-1,j-1),I(i,j-1),I(i+1,j-1),I(i-1,j),I(i,j),I(i,j+1),I(i+1,j-1),I(i+1,j),I(i+1,j+1)];
        lista = sort(lista);
        IM(i,j) = max(lista);
     end 
    end
end

