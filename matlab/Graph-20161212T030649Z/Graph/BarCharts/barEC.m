% Bar chart code

function City_Street_EC

load crossing.txt
 y1 = crossing(:,1);
% y1 = y1 /60;

mean_y1 = mean(y1);
txt = sprintf('NEMO BSP mean = %f', mean_y1);
disp(txt);

plot_bar(y1);
end

%--------plot bar chart-----------------------------
function plot_bar (y)

    bar(y, 0.4, 'k') ;
    fs = 16;
    fn = 'Times New Roman';
    set(gca,'FontSize',fs,'FontName',fn);
    xlabel('Measurement Trial #');
    ylabel('Number of Subnet Crossing');
end
%-------------------------------------------------
