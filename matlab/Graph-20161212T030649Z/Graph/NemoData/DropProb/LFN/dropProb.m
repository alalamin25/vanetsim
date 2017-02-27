
  fs = 16;
    fn = 'Times New Roman';
             
             
         
          load pktDropProbCSM.txt
          xa = pktDropProbCSM(:,1);
          ya = pktDropProbCSM(:,2);
          
          plot(xa,ya,'--bo'); 
          hold all;
%        axis([20, 100, 0, 820]);
          
%           load avgThrRWP.txt
%           xb = avgThrRWP(:,1);
%           yb = avgThrRWP(:,2);
%           
%           plot(xb,yb,'-ks'); 
%           hold all;

                    
          
    ylabel('Average Packet Drop Probability','FontSize',fs,'FontName',fn);
    xlabel({'Number of LFNs'},'FontSize',fs,'FontName',fn);
    
      fs = 14;
    
     h = legend('CSM',0);
set(h,'FontSize',fs,'FontName',fn,'Location','Best');
set(h,'Interpreter','latex')
set(h, 'Box', 'on');
set(h, 'Color', 'none');

fs = 14;
set(gca,'FontSize',fs,'FontName',fn);



          