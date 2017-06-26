function ft2(I,f)
    subplot(1,2,1), imshow(I);
    subplot(1,2,2), image(abs(fftshift(fft2(I))).^f);
    
end
