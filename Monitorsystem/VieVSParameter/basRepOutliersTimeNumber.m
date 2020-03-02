clear all
close all

% Outliers
pathData='C:\VieVS\DATA\OUTLIER\';
nameOfFolder='OutliersEstimatedSimpleRound7\';

load C:\VieVS\WORK\PROCESSLIST/pl_A13A14AUSTRAL.mat
%subdir='OutliersEstimatedSimpleRound3';
colors={'k','m','c','r','g','b','y'};

%legend('-DynamicLegend');
for i=1:7
    figure(i)
    hold on
    subdir=['OutliersEstimatedSimpleRound',num2str(i)];
    
    [ mbas,wrms,basname ] = getBasRep( subdir,process_list );
    
    % Outliers
    nameOfFolder=['OutliersEstimatedSimpleRound',num2str(i),'\'];
    [outliers,nameOfBL] = getOutliers( pathData,nameOfFolder);
    [ data ] = numberOfOutliersPerBL( basname,nameOfBL,outliers );
    
    
    
    numOfWindows=length(data)+1;
    
    set(0,'DefaultFigureColor','white')
    set(gca,'FontSize',16,'FontWeight','demi')
    subplot(2,numOfWindows/2,1)
    plot(mbas,wrms*100,'x','Color',colors{i},'MarkerSize',15,'LineWidth',2)%,'DisplayName',subdir)
    ylabel('cm')
    
    
    for j=2:numOfWindows
        subplot(2,numOfWindows/2,j)
        hist(data{1,j-1})
    end
   
end

legend('show')


for isl=1:length(mbas)
        text(mbas(isl),3,basname(isl,:),'Rotation',90);
end

