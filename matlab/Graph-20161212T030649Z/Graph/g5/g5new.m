
fs = 16;
fn = 'Times New Roman'; 

phi = 0.4;
tau = 50;
Sx = 320;
Sy = 70;
chi = 0.1;

%Na = a / Sx + 1 ; 
%Ns = b / Sy + 1;



for ratio=[0.5,1]
     i=1;
    for Vp =5:5:25
        j=1;
        for  Na=50:10:201
            x(i,j)= Na;
            y(i,j)= Vp;
            Ns = ratio * Na;
            ELx =  ( Na + 1) / (3 * Na);
            ELy =  ratio* ( Ns + 1) / (3 * Ns);

            % a = Sx (Na-1);  So Sx = a /(Na-1)                   
            
            txroad = phi * tau * (ELx / Sx + ELy / Sy);
            tx =  4 * chi / ( Vp * (Na - 1) )    + ELx * (1 + 2 * phi * chi ) / Vp;
            ty =  4 * chi  / ( Vp * (Ns - 1) )   + ELy * (1 + 2 * phi * chi ) / Vp;
            
            z(i,j) = (txroad + tx + ty)*1000;
            j = j+1;
        end
        i = i+1;
    end
    x
    y
    z
   surf(x,y,z);

%      plot3(x,y,z);
hold on
end
fs = 16;
zlabel('E(T)/a   msec/m','FontSize',fs,'FontName',fn);
ylabel('Speed limit  (m/sec)','FontSize',fs,'FontName',fn);
xlabel('Number of Avenues','FontSize',fs,'FontName',fn);
fs = 14;
set(gca,'FontSize',fs,'FontName',fn);

