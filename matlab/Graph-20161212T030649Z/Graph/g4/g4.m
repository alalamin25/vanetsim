
fs = 16;
fn = 'Times New Roman'; 

for ratio=0.5:0.5:1
    
    i=1;
    for k =3:1:7
        j=1;
        for  Na=50:10:201
            x(i,j)=Na;
            y(i,j)=k;
            m = ceil((2*Na-3)/(2*k-1));
            Ns = ratio * Na;
            n = ceil((2*Ns-3)/(2*k-1));
            t1 = (m*(m+1)*k/(6*Na*Na))*(6*Na-4*m*k+k+3);
            t2 = (n*(n+1)*k/(6*Ns*Ns))*(6*Ns-4*n*k+k+3);
            z(i,j) = t1 + t2;
            j = j+1;
        end
        i = i+1;
    end
    x
    y
    z
   surf(x,y,z);

    % plot3(x,y,z);
hold on
end
zlabel('E(C)','FontSize',fs,'FontName',fn);
ylabel('K','FontSize',fs,'FontName',fn);
xlabel('Number of Avenues (Na)','FontSize',fs,'FontName',fn);

fs = 14;
set(gca,'FontSize',fs,'FontName',fn);
% surf(x,y,x.^2+y.^2)
% [x,y]=meshgrid(0.1:0.1:1,0.05:0.05:0.4);

% fs = 12;
%     
% h = legend('City Na=100','City Na=200',0);
% set(h,'FontSize',fs,'FontName',fn,'Location','Best');
% set(h,'Interpreter','latex')
% set(h, 'Box', 'on');
% set(h, 'Color', 'none');


