% Bar chart code

function mipv6_hist

load times.txt
 y1 = times(:,1);
 y1 = y1 /60;

mean_y1 = mean(y1);
txt = sprintf('NEMO BSP mean = %f', mean_y1);
disp(txt);

plot_bar(y1);
end

%--------plot bar chart-----------------------------
function plot_bar (y)


    bar(y, 0.4 ) ;
      axis([0, 40, 0, 80]);
    fs = 16;
    fn = 'Times New Roman';
    set(gca,'FontSize',fs,'FontName',fn);
    xlabel('Measurement Trial #');
    ylabel('Expected Epoch Time (minutes)');
end
%-------------------------------------------------
