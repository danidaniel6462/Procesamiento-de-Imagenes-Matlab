function img_adjusted2 = histStretching (im,low_l,high_l)
    bins = linspace(0,255,256);
    [f,c] = size(im)
    img_adjusted2 = im;
    cdf = zeros(1,256);
    for i=1:f
        for j=1:c
            k = im(i,j);
            cdf(k+1) = cdf(k+1)+1;  
        end
    end
    %Quitamos los ceros para que la cdf sea invertible
    cdf(cdf==0) = 1;
    for i=1:256
        cdf(i) = cdf(i) / (f*c);
    end
    for i=2:256
        cdf(i) = cdf(i) + cdf(i-1);
    end
    % H, could have bins with 0 counts. The problem is that, in the next step, we’ll be doing an inverse look-up, which means that we need an invertible function. If H has zeros, then cumsum(H) will have at least two identical values and will not be invertible. Setting the zero-count values in H to eps(sum(H)) ensures that H does not have non-zero values but only has a trivial effect on the CDF
    %Llegados a este punto, en cdf tenemos la frecuencia relativa acumulada, y en bin tenemos un linear de 0 a 255.
    h_low = interp1(cdf, bins, low_l/255);
    h_high = interp1(cdf, bins, high_l/255);
    %The next step is to adjust the image values so that the h_low and h_high values are remapped to the 0% and 100% brightness levels. Using simple histogram math,
    for i=1:f
        for j=1:c
            img_adjusted2(i,j) = ( double(im(i,j)) - h_low)/(h_high-h_low) * 255;
        end
    end
end
