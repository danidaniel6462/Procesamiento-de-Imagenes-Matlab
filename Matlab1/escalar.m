function IM = escalar(I,e)
    [f,c] = size(I);
    IM=I;
    for i=1:f
        for j=1:c
            if(floor(i/e)>f||floor(j/e)>c||floor(i/e)<=0||floor(j/e)<=0)
               IM(i,j)=0;           
            else
                 IM(i,j)=I(floor(i/e), floor(j/e));
            end
        end
    end