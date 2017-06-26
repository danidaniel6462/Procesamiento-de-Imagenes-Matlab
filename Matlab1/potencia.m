function IM = potencia(I, n)
    IM=I;
    [f,c] = size(I);
    for i=1:f
        for j=1:c
            IM(i,j) = I(i,j)^ n;
        end
    end
end