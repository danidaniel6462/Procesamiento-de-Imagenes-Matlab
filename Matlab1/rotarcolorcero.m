function IM = rotarcolorcero(I,ang)
    r = I(:,:,1);
    g = I(:,:,2);
    b = I(:,:,3);
    IM=I;
    rm=rotarcero(r,ang);
    gm=rotarcero(g,ang);
    bm=rotarcero(b,ang);
    IM(:,:,1)=rm;
    IM(:,:,2)=gm;
    IM(:,:,3)=bm;
end