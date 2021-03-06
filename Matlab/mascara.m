%w = 1/9*[1 1 1;1 1 1;1 1 1];
%w = [-1 -1 -1;-1 8 -1;-1 -1 -1];
%h = ones(15,15) / (15*15);
%image(imfilter(I,h));


function IM = mascara(w,I)
IM = I;
[f,c] = size(I);
for i=2:f-1
    for j=2:c-1
        IM(i,j) = w(1,1)*I(i-1,j-1) + w(1,2)*I(i-1,j) + w(1,3)*I(i-1,j+1) + w(2,1)*I(i,j-1) + w(2,2)*I(i,j) + w(2,3)*I(i,j+1) +  w(3,1)*I(i+1,j-1) + w(3,2)*I(i+1,j) + w(3,3)*I(i+1,j+1);
        if IM(i,j) < 0 
         IM(i,j) = 0;
        end
    end
end
end

