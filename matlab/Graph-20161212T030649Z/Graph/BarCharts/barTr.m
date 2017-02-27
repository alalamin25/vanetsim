% Bar chart code

function City_Street_Tr

load Tr.txt
 y1 = Tr(:,1);
% y1 = y1 /60;

mean_y1 = mean(y1);
txt = sprintf('mean = %f', mean_y1);
disp(txt);

plot_bar(y1);
end

%--------plot bar chart-----------------------------
function plot_bar (y)

   % bar(y, 'k') ;
    bar(y, 0.4) ;
      axis([0, 40, 0, 160]);
    fs = 16;
    fn = 'Times New Roman';
    set(gca,'FontSize',fs,'FontName',fn);
    xlabel('Measurement Trial #');
   ylabel('Subnet residence times (sec)');
end
%-------------------------------------------------
