x = [1.8 5 9 12 18];

miron_l = [53.10160	52.58500	55.56260	55.59400	56.57880];
spd_l = [54.89470	56.74980	59.59180	61.71560	66.98920];
opr_l = [53.26270	53.80850	52.72690	53.33350	53.60210];

plot(x,miron_l,'o-k',x,spd_l,'x-k',x,opr_l,'*-k');
set(gca, 'Box', 'off');

%title('Throughput vs Time')

fs = 14;
fn = 'Times New Roman';
set(gca,'FontName',fn,'FontSize',fs);
xlabel('Router-HA link delay (ms)','FontSize',fs,'FontName',fn);
ylabel('Average end-to-end delay (ms)','FontSize',fs,'FontName',fn);

%axis([1 4 0 120])
fs = 12;
h = legend('MIRON','SPD','OPR',0);
set(h,'FontSize',fs,'FontName',fn,'Location','Best');
set(h,'Interpreter','latex')
set(h, 'Box', 'off');
set(h, 'Color', 'none');
