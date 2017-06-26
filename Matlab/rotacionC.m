%w = 1/9*[1 1 1;1 1 1;1 1 1];
%w = [-1 -1 -1;-1 8 -1;-1 -1 -1];


function IM = rotacionC(I,x0,y0,ang)
[f,c,t] = size(I); 
IM=I; 
ang = deg2rad(ang);
for z=1:t
    for i=1:f 
     for j=1:c 
        IM(i,j,z) = 0;
        %x2 = floor(i*cos(ang) - j*sin(ang)) + 1;
        %y2 = floor(i*sin(ang) + j*cos(ang)) + 1;
        x2 = floor(cos(ang)*(i-x0)- sin(ang)*(j-y0) + x0) + 1;
        y2 = floor(sin(ang)*(i-x0)+ cos(ang)*(j-y0) + y0) + 1;  
        
        if(x2>0 & y2>0 & x2<f & y2<c)
            IM(i,j,z) = I(x2,y2,z);
        end
     end 
    end
end

