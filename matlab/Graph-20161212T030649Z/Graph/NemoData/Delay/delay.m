                 
         load pktDrop.txt
          xa = pktDrop(:,1);
          ya = pktDrop(:,2);
          yb = pktDrop(:,3);
          yc = pktDrop(:,4);
          
          plot(xa,ya,'--bo'); 
          hold all;
          plot(xa,yb,'-ks'); 
%        axis([20, 100, 0, 820]);
         plot(xa,yc,'-rp'); 
          
    fs = 16;
    fn = 'Times New Roman';   
       
    ylabel('Avg. packet drop probability','FontSize',fs,'FontName',fn);
    xlabel({'Speed limit (meter/sec)'},'FontSize',fs,'FontName',fn);
    
      fs = 14;
   h = legend('S_x = S_y = 120 m','S_x = S_y = 240 m','S_x = S_y = 360 m', 0);
set(h,'FontSize',fs,'FontName',fn,'Location','Best');

fs = 14;
set(gca,'FontSize',fs,'FontName',fn);



          