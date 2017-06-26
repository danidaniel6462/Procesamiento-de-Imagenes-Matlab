function hist=histograma (im)
imD = im;
[f,c]=size(imD);

%histograma
for i=1:256
    h(i) = 0;
end
 
for i=1:f
       for j=1:c
           k = imD(i,j);
           h(k+1) = h(k+1)+1;
       end
end

%mapa de color
for i=1:256
    for j=1:256
        w(i,j) = j;
    end
end


subplot(1,2,1), imshow(im)
subplot(1,2,2), plot(h)
%subplot(1,2,2), plot(h), hold on, image(w), hold off
hist = h; 
