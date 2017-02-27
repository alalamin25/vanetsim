
fs = 16;
fn = 'Times New Roman'; 

vmin = 2;
for ratio=[0.5,1]
     i=1;
    for vmax =10:5:35
        j=1;
        for  Na=50:10:201
            x(i,j)=Na;
            y(i,j)=vmax;
            Ns = ratio * Na;
            t1 = ((Na+1)/(3*Na))* (log(vmax/vmin)/(vmax-vmin));           
            t2 = (ratio*(Ns+1)/(3*Ns))* (log(vmax/vmin)/(vmax-vmin));
            z(i,j) = (t1 + t2)*1000;
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
zlabel('E(T)/a   msec/m','FontSize',fs,'FontName',fn);
ylabel('Speed limit  (m/sec)','FontSize',fs,'FontName',fn);
xlabel('Number of Avenues','FontSize',fs,'FontName',fn);
fs = 14;
set(gca,'FontSize',fs,'FontName',fn);

