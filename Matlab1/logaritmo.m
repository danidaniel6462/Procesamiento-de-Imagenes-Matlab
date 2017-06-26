function IM = logaritmo(I, d)
    IM=I;
    [f,c] = size(I);
    for i=1:f
        for j=1:c
            IM(i,j) = d * log(1 + I(i,j));
        end
    end
end