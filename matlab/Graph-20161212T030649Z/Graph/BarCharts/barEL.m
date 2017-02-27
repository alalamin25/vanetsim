% t-test Matlab code & Bar chart code

function mipv6_hist

%y1 = [0.05157 0.07501 0.07987 0.08168 0.06391 0.0883 0.06671 0.08775 0.06867 0.08373 ];
%y2 = [14.1435 11.0485 13.3806 14.821 12.615 13.4067 12.0617 11.5871 14.1806 12.1822];

 load length.txt
 y1 = length(:,1);
 y1 = y1 /1000;

mean_y1 = mean(y1);
var_y1 = var(y1);
%mean_y2 = mean(y2);

txt = sprintf('mean E(L) = %f, Variance of E(L) = %f', mean_y1, var_y1);
disp(txt);
%make_ttest(y1, y2);


plot_bar(y1);
%plot_hist(y1);

end


%---------------------------------------

function make_ttest(y_mipv6, y_semo6)
%H0 is that the two groups are equal. If you prove
%that they are not equal, then you get to reject the null hypothesis
%In our case, H0 is that the mean of handoff latancy of Mipv6 and SEMO6
%are equal..

    alpha =0.05;

    [h,p,ci, stats] = ttest2(y_mipv6, y_semo6,alpha, 'right');
    txt = sprintf('h = %d, p = %e, ci = [%f %f]',h,p, ci(1), ci(2));
    disp(txt);
    if h
        disp('Null hypothesis is rejected');
    else
        disp('Unable to reject Null hypothesis');
    end

end
%--------plot bar chart-----------------------------
function plot_bar (y)

    bar(y, 0.4, 'k') ;
%       bar(y_semo6, 'k') ;
    fs = 16;
    fn = 'Times New Roman';
    set(gca,'FontSize',fs,'FontName',fn);
    xlabel('Measurement Trial #');
    ylabel('Expected Epoch Length (km)');



end
%-------------------------------------------------
%--------plot histogram---------------------------
function plot_hist (y)

    hist(y_mipv6)
    
    fs = 16;
    fn = 'Times New Roman';
    set(gca,'FontSize',fs,'FontName',fn);
    ylabel('Frequency');
    xlabel('MIPv6 Handoff latency (sec.)');
end
%-------------------------------------------------