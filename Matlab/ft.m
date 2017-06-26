function t = ft2(I)
    subplot(1,2,1), image(I);
    subplot(1,2,2), image(abs(fftshift(fft2(I))));
end
