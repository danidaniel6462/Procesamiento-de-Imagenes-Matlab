function IM = degradeh(I)
    IM=I;
    [f,c] = size(I);
    for i=1:f
        for j=1:c
            IM(i,j) = (255 - (i))*(I(i,j)/(255 - f));
        end
    end
end