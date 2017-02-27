
    fs = 16;
    fn = 'Times New Roman';

%    j=1;
%    for i = 0.1:0.1:1
%        x(j) = i;
%        y(j) = 1/3 + i/3;
%        j = j+1;
%    end
%    plot(x,y,'-k');
% Four Curve for CitySec x1(1,:) to y1(4,:)
    k=1;    
   for Na = 50:50:150
    j=1;
    for i = 0.1:0.1:1
        x1(k,j) = i;
        Ns = i* Na;
        y1(k,j) = (1/3)*((Na+1)/Na) + (i/3)*((Ns+1)/Ns);
        j = j+1;        
    end
    k=k+1;
   end

   y1(1,:)
   y1(2,:)
   y1(3,:)
%   y1(4,:)

   
  
   
    plot(x1(1,:),y1(1,:),'-bo');
    hold all; 
    axis([0.1, 1.002, 0.3, 0.7002]);
       
 %  plot(x1(2,:),y1(2,:),'-gd');
   plot(x1(2,:),y1(2,:),'-r.');
   plot(x1(3,:),y1(3,:),'-kx');
%   plot(x1(4,:),y1(4,:),'--ms');
   
   %---------------------------------------       
     fs = 14;
    fn = 'Times New Roman';
    set(gca,'FontSize',fs,'FontName',fn);    
    
    fs = 18;
    ylabel('E(L)/a','FontSize',17,'FontName',fn);
    xlabel({'b/a'},'FontSize',fs,'FontName',fn);
   
    fs = 14;
     h = legend('Na = 50','Na = 100','Na = 150', 0);
    set(h,'FontSize',fs,'FontName',fn,'Location','Best');
          
        