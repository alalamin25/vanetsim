
  fs = 16;
    fn = 'Times New Roman';
    
          load data1.txt
          x = data1(:,1);
          y = data1(:,2);
         
          plot(x,y,'--mo');
          hold all;
          
          load data2.txt
          xb = data2(:,1);
          yb = data2(:,2);
          
         plot(xb,yb,'-ks'); 

          
    ylabel('Subnet Residence Time (Sec)','FontSize',fs,'FontName',fn);
    xlabel({'Speed of Mobile Network  (m/s)'},'FontSize',fs,'FontName',fn);
    
fs = 12;
h = legend('RWP','CitySec',0);
set(h,'FontSize',fs,'FontName',fn,'Location','Best');
set(h,'Interpreter','latex')
set(h, 'Box', 'on');
set(h, 'Color', 'none');

fs = 14;
set(gca,'FontSize',fs,'FontName',fn);
