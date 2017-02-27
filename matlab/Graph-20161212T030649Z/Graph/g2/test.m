fs = 16;
    fn = 'Times New Roman';   

k=1;   
a  = 36;
   for Na = 50:50:200
    j=1;
    for i = 0.1:0.1:1
        x1(k,j) = i;
        Ns = i* Na;
        Sx = a/(Na-1);
        y1(k,j) = Sx;
        z1(k,j) = (1/6)*(Na+1)*Sx + (i/6)*(Ns+1)*Sx;
        
        j = j+1;        
    end
 k = k+1;
 end    


plot3(x1(1,:),y1(1,:),z1(1,:),'-bo');
hold all;
plot3(x1(2,:),y1(2,:),z1(2,:),'-gd');
plot3(x1(3,:),y1(3,:),z1(3,:),'-r.');
plot3(x1(4,:),y1(4,:),z1(4,:),'-kx');

zlabel('E(L^2)/a (km)','FontSize',fs,'FontName',fn);
ylabel('S_x (Km)','FontSize',fs,'FontName',fn);
xlabel({'b/a'},'FontSize',fs,'FontName',fn);


fs = 12;
   
h = legend('City Na=50','City Na=100','City Na=150', 'City Na=200',0);
set(h,'FontSize',fs,'FontName',fn,'Location','Best');
set(h,'Interpreter','latex')
set(h, 'Box', 'on');
set(h, 'Color', 'none');

