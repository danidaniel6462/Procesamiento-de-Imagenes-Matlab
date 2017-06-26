%w = 1/9*[1 1 1;1 1 1;1 1 1];
%w = [-1 -1 -1;-1 8 -1;-1 -1 -1];


function IM = traslacionC(x,y,I)
[f,c,t] = size(I); 
IM=I;
for z=1:t 
    for i=1:f 
     for j=1:c 
        IM(i,j,z) = 0;
        if(i-y>0 & j-x>0 & i-y<f & j-x<c)
            IM(i,j,z) = I(i-y,j-x,z);
        end
     end 
    end
end

