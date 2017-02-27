% Bar chart code

function City_Street_Tr

load variance.txt
 y1 = variance(:,1);
 y1 = y1 /1000000;

mean_y1 = mean(y1);
txt = sprintf('mean = %f', mean_y1);
disp(txt);

plot_bar(y1);
end

%--------plot bar chart-----------------------------
function plot_bar (y)

   % bar(y, 'k') ;
    bar(y, 0.4) ;
    fs = 16;
    fn = 'Times New Roman';
    set(gca,'FontSize',fs,'FontName',fn);
    xlabel('Measurement Trial #');
   ylabel('Variance of Epoch Lengths (km ^2)');
end
%-------------------------------------------------
