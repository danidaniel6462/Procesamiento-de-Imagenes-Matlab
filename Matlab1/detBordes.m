function IM = detBordes(I)
   w1 = [-1 0 1;-1 0 1;-1 0 1];
   w2 = [-1 -1 -1;0 0 0;1 1 1];
   a = mascara(I,w1);
   b = mascara(I,w2);
   IM=I;
   [f,c] = size(I);
        for i=1:f
            for j=1:c
                IM(i,j) = sqrt(a(i,j)^2+b(i,j)^2);
            end
        end
end