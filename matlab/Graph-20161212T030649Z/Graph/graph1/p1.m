
  fs = 16;
    fn = 'Times New Roman';
             
         axis([20, 120, 0, 900]); 
         
         
          load data1.txt
          xa = data1(:,1);
          ya = data1(:,2);
          
          plot(xa,ya,'--bo'); 
          hold all;
          
          load data2.txt
          xb = data2(:,1);
          yb = data2(:,2);
          
          plot(xb,yb,'-ks'); 
          hold all;
%           plot(xb,zb,'-bV');
%           plot(xb,ub,'-.r*');

    ylabel('Location Update Cost','FontSize',fs,'FontName',fn);
    xlabel({'Number of Mobile Hosts'},'FontSize',fs,'FontName',fn);
    
      fs = 14;
    
    h = legend('RWP','CitySec',0);
set(h,'FontSize',fs,'FontName',fn,'Location','Best');
set(h,'Interpreter','latex')
set(h, 'Box', 'on');
set(h, 'Color', 'none');

fs = 14;
set(gca,'FontSize',fs,'FontName',fn);



          