function IM = mascara(I,w)
    IM=I;
    [f,c] = size(I);
    for j=2:(f-1)
        for i=2:(c-1)
            IM(i,j) = w(1,1)*I(i-1,j-1) + w(1,2)*I(i,j-1) + w(1,3)*I(i+1,j-1) + w(2,1)*I(i-1,j) + w(2,2)*I(i,j)+w(2,3)*I(i+1,j) + w(3,1)*I(i-1,j+1) + w(3,2)*I(i,j+1) + w(3,3)*I(i+1,j+1);
        end
    end
end