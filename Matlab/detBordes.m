%w = 1/9*[1 1 1;1 1 1;1 1 1];
%w = [-1 -1 -1;-1 8 -1;-1 -1 -1];


function IM = detBordes(I)
w1 = [1 1 1;0 0 0;-1 -1 -1];
w2 = [-1 0 1;-1 0 1;-1 0 1];

a = mascara(w1,I);
b = mascara(w2,I);
[f,c] = size(I); 
IM=I; 
    for i=1:f 
     for j=1:c 
        IM(i,j)=sqrt(a(i,j)^2+b(i,j)^2);
     end 
    end
end

