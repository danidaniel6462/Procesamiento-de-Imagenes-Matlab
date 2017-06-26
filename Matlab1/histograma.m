function IM = histograma(I)
    IM=I;
    [f,c] = size(I);
    for i=1:256
        arr(i)=0;
    end
    for i=1:f
        for j=1:c
            color = I(i,j);
            arr(color+1)=arr(color+1)+1;
        end
    end
    
    plot(arr);
end