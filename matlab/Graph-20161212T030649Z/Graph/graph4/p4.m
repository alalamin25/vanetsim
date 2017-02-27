
  fs = 16;
    fn = 'Times New Roman';
    
          
          
                   

          load data1.txt
          x = data1(:,1);
          y = data1(:,2);
          z = data1(:,3);
          u = data1(:,4);
          
          plot(x,y,'--ks');
           axis([1 10  15 65]);  

          hold all;
          plot(x,z,'-gx');
          hold all;
          plot(x,u,'-cd');
          
          load data2.txt
          xb = data2(:,1);
          yb = data2(:,2);
          zb = data2(:,3);
          ub = data2(:,4);
          
          plot(xb,yb,'--mo'); 
          plot(xb,zb,'-bV');
          plot(xb,ub,'-.r*');

    
          

    ylabel('Location Update Cost','FontSize',fs,'FontName',fn);
    xlabel({'Number of Mobile Routers'},'FontSize',fs,'FontName',fn);
      fs = 12;
    h = legend('RWP Speed=10 m/s','RWP Speed=20 m/s','RWP Speed=30 m/s','City Speed=10 m/s','City Speed=20 m/s','City Speed=30 m/s',0);
set(h,'FontSize',fs,'FontName',fn,'Location','Best');
set(h,'Interpreter','latex')
set(h, 'Box', 'on');
set(h, 'Color', 'none');


          