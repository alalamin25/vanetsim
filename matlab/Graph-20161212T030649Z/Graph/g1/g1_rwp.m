
    fs = 16;
    fn = 'Times New Roman';

%    j=1;
%    for i = 0.1:0.1:1
%        x(j) = i;
%        y(j) = 1/3 + i/3;
%        j = j+1;
%    end
%    plot(x,y,'-k');

    k=5;
    j=1;
   for i = 0.1:0.1:1
        x1(k,j) = i;
        
         
        t1 = sqrt (1 + 1/(i*i));
        arcosht1 = log (t1 + sqrt (t1*t1 -1) );
        
        t2 = sqrt (1 + i*i);
        arcosht2 = log (t2 + sqrt (t2*t2 -1) );
        
        y1(k,j) =  (1/15) * (1/(i*i) + i*i*i + sqrt (1 + i*i) * (3-i*i- 1/(i*i)) ) + (1/6) * ( i*i*arcosht1 + (1/i)*arcosht2);
        j = j+1;        
    end
   
   x1(5,:)
   y1(5,:)
   
   % axis([0.1, 1, 0.3, 0.72]); 
   
    plot(x1(5,:),y1(5,:),'-bo');
  
          
    ylabel('E(L)/a','FontSize',fs,'FontName',fn);
    xlabel({'b/a'},'FontSize',fs,'FontName',fn);
    
%   fs = 12;
    
% h = legend('Na=30','Na=80','Na=130', 'Na=180',0);
% set(h,'FontSize',fs,'FontName',fn,'Location','Best');
% set(h,'Interpreter','latex')
% set(h, 'Box', 'on');
% set(h, 'Color', 'none');


          