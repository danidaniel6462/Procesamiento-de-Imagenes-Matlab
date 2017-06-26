function IM = fundidoh(I)
IM = I;
n=0;
[f,c] = size(I);
for i=1:f
    for j=1:c
        IM(i,j) = I(i,j)*i/f;
        n=n+1;
    end
end
end

