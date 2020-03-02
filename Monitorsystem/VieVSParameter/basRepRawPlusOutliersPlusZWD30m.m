clear all
close all

load('C:\VieVS\WORK\PROCESSLIST/pl_A14.mat')
%subdir='OutliersEstimatedSimpleRound3';
colors={'k','m','c','y','r','g','b'};


figure
hold on
legend('-DynamicLegend');

i=7;
subdir=['OutliersEstimatedSimpleRound',num2str(i)];
[ mbas,wrms,basname ] = getBasRep( subdir,process_list );
plot(mbas,wrms*100,'x','Color',colors{i},'MarkerSize',15,'LineWidth',2,'DisplayName','ZWD60m')
ylabel('cm')



i=2;
subdir='estZWD20m';    
[ mbas,wrms,basname ] = getBasRep( subdir,process_list );   
plot(mbas,wrms*100,'x','Color',colors{i},'MarkerSize',15,'LineWidth',2,'DisplayName','ZWD20m')
ylabel('cm')

i=1;
subdir='estZWD30mV2';    
[ mbas,wrms,basname ] = getBasRep( subdir,process_list );   
plot(mbas,wrms*100,'x','Color',colors{i},'MarkerSize',15,'LineWidth',2,'DisplayName','ZWD30m')
ylabel('cm')

% for i=1:3
%     
%     hold on
%     subdir='estZWD30m';
%     
%     [ mbas,wrms,basname ] = getBasRep( subdir,process_list );
%    
%     plot(mbas,wrms*100,'x','Color',colors{i},'MarkerSize',15,'LineWidth',2,'DisplayName',subdir)
%     ylabel('cm')
%     
%    
% end

legend('show')


for isl=1:length(mbas)
        text(mbas(isl),3,basname(isl,:),'Rotation',90);
end

