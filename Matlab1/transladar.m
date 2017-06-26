function IM = transladar(I,dx,dy)
    [f,c] = size(I);
    IM=I;
    for i=1:f
        for j=1:c
            if(i+dy>f||j-dx>c)
               IM(i,j)=0;
            elseif(i+dy<=0||j-dx<=0)
                 IM(i,j)=0;
            else
                 IM(i,j)=I(i+dy,j-dx);
            end
        end
    end