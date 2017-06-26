function IM = degrader(I)
    IM=I;
    [f,c] = size(I);
    for i=1:f
        for j=1:c
            IM(i,j) = (255 - I(i,j))*(I(i,j)/(255 - (f-c)));
        end
    end
end