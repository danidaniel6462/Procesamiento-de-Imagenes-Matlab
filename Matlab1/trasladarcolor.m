function IM = trasladarcolor(I,dx,dy)
    r = I(:,:,1);
    g = I(:,:,2);
    b = I(:,:,3);
    IM=I;
    rm=trasladar(r,dx,dy);
    gm=trasladar(g,dx,dy);
    bm=trasladar(b,dx,dy);
    IM(:,:,1)=rm;
    IM(:,:,2)=gm;
    IM(:,:,3)=bm;
end