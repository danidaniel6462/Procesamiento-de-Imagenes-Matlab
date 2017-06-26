function IM = minimo(I)
    IM=I;
    [f,c] = size(I);
    for i=2:f-1
        for j=2:c-1
            lista= [I(i-1,j-1),I(i-1,j),I(i-1,j+1),I(i,j-1),I(i,j),I(i,j+1),I(i+1,j-1),I(i+1,j),I(i+1,j+1)];           
            IM(i,j) = min(lista);
        end
    end
end