function IM = rotargenerica(I,ang,px,py)
    IM=I;
    [f,c] = size(I);
    for i=1:f
        for j=1:c
            x=floor((i-px)*cos(ang)-(j-py)*sin(ang)+px);
            y=floor((i-px)*sin(ang)+(j-py)*cos(ang)+py);
            if(x<=0||y<=0||x>f||y>c)                
                IM(i,j) =0;
            else
                IM(i,j) =I(x,y);
            end
        end
    end
end