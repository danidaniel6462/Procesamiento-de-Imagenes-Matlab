function IM = degradev(I)
    IM=I;
    [f,c] = size(I);
    for i=1:f
        for j=1:c
            IM(i,j) = (255 - (j))*(I(i,j)/(255 - c));
        end
    end
end