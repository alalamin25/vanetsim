                 
         load bind.txt
          xa = bind(:,1);
          ya = bind(:,2);
          yb = bind(:,3);
          yc = bind(:,4);
          
          plot(xa,ya,'--bo'); 
          hold all;
          plot(xa,yb,'-ks'); 
%        axis([20, 100, 0, 820]);
         plot(xa,yc,'-rp'); 
          
    fs = 16;
    fn = 'Times New Roman';   
       
    ylabel('Number of binding updates / 1000 sec','FontSize',fs,'FontName',fn);
    xlabel({'Speed limit (meter/sec)'},'FontSize',fs,'FontName',fn);
    
      fs = 14;
   h = legend('\phi = 0.3, \tau = 30 sec','\phi = 0.4, \tau = 50 sec','\phi = 0.5, \tau = 70 sec', 0);
set(h,'FontSize',fs,'FontName',fn,'Location','Best');

fs = 14;
set(gca,'FontSize',fs,'FontName',fn);



          