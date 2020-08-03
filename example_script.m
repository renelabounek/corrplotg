% Authors:
% Rene Labounek, PhD and Igor Nestrasil, MD, PhD
% Division of Clinical Behavioral Neuroscience, Department of Pediatrics, University of Minnesota
% Minneapolis, MN, USA
% contact emails: rene.labounek@gmail.com, rlaboune@umn.edu
% Last edits: 3th August 2020

load('example_data.mat') % 3th August 2020 - " " replaced at ' '.
variable_name = {'var1' 'var2' 'var3' 'var4'};

clr='ygbrb';
sym='....*';

[R, Rpval] = corrplotg(data,grp,clr,sym,'VarNames',variable_name,'testR','on','alpha',0.001);

subplot(4,2,4)
H1=scatter(1,1,1,850,[clr(1) sym(1)]);
hold on
H2=scatter(1,1,1,850,[clr(2) sym(2)]);
H3=scatter(1,1,1,850,[clr(3) sym(3)]);
H4=scatter(1,1,1,100,[clr(5) sym(5)]);
H5=scatter(1,1,1,850,[clr(4) sym(4)]);
hold off
legend([H1 H2 H3 H4 H5],{'grp1','grp2','grp3','grp4','grp5'},'location','southwest')
set(gca,'FontSize',14)
axis([-3 -2 -3 -2])
axis off

[R2, Rpval2] = corrplot(data,'VarNames',variable_name,'testR','on','alpha',0.001);
