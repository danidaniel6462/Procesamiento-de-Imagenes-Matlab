function IM = rotarcero(I,ang)
    IM=I;
    [f,c] = size(I);
    ang=deg2rad(ang);
    for i=1:f
        for j=1:c
            x=floor(i*cos(ang)-j*sin(ang));
            y=floor(i*sin(ang)+j*cos(ang));
            if(x<=0||y<=0||x>f||y>c)                
                IM(i,j) =0;
            else
                IM(i,j) =I(x,y);
            end
        end
    end
end