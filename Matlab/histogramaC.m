function histogramaC (im)
[f,c,z]=size(im);

%histograma
for i=1:256
    r(i) = 0;
    g(i) = 0;
    b(i) = 0; 
end
 
for i=1:f
       for j=1:c
           cr = im(i,j,1);
           cg = im(i,j,2);
           cb = im(i,j,3);
           r(cr+1) = r(cr+1) +1;
           g(cg+1) = g(cg+1) +1;
           b(cb+1) = b(cb+1) +1;
       end
end
subplot(2,4,1), imshow(im)
subplot(2,4,2), imshow(im(:,:,1))
subplot(2,4,3), imshow(im(:,:,2))
subplot(2,4,4), imshow(im(:,:,3))
subplot(2,4,6), plot(r)
subplot(2,4,7), plot(g)
subplot(2,4,8), plot(b)
%subplot(1,2,2), plot(h), hold on, image(w), hold off
end
