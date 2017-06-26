function IM = logaritmo2(I)
    IM=I;
    [f,c] = size(I);
    for i=1:f
        for j=1:c
            IM(i,j) = 255 * log(I(i,j))/log(255);
        end
    end
end