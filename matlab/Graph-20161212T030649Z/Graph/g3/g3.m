
fs = 16;
fn = 'Times New Roman'; 

for Na=100:100:201
    i=1;
     for i1=0.1:0.02:1
%     for i1=0.1:0.1:1
        j=1;
        for j1 = 0.05:0.005:0.2
%           for j1 = 0.05:0.05:0.2
            x(i,j)=i1;
            y(i,j)=j1;
            z(i,j) = j1*(Na+1)/18 + j1*(i1*Na+1)*i1/18;
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

zlabel('V(L)/a  (km)','FontSize',fs,'FontName',fn);
ylabel('Inter-road spacing (km)','FontSize',fs,'FontName',fn);
xlabel({'b/a'},'FontSize',fs,'FontName',fn);

% surf(x,y,x.^2+y.^2)
fs = 14;
set(gca,'FontSize',fs,'FontName',fn);



