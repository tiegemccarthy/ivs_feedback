clear all
close all

% Outliers
pathData='C:\VieVS\DATA\OUTLIER\';
nameOfFolder='OutliersEstimatedSimpleRound7\';

load C:\VieVS\WORK\PROCESSLIST/pl_A13A14AUSTRAL.mat
%subdir='OutliersEstimatedSimpleRound3';
colors={'k','m','c','r','g','b','y'};


figure
legend('-DynamicLegend');

subdir='raw';

i=4;
[ mbas,wrms,basname ] = getBasRep( subdir,process_list );
plot(mbas,wrms*100,'x','Color',colors{i},'MarkerSize',15,'LineWidth',2,'DisplayName',subdir)
ylabel('cm')
    
for i=1:3
    
    hold on
    subdir=['OutliersEstimatedSimpleRound',num2str(i)];
    
    [ mbas,wrms,basname ] = getBasRep( subdir,process_list );
   
    plot(mbas,wrms*100,'x','Color',colors{i},'MarkerSize',15,'LineWidth',2,'DisplayName',subdir)
    ylabel('cm')
    
   
end

legend('show')


for isl=1:length(mbas)
        text(mbas(isl),3,basname(isl,:),'Rotation',90);
end

