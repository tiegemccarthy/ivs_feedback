close all
clear all

colors=[[0 0 0]
[0 1 1]
[1 0 0]
[0 1 0]
[0 0 1]
[1 1 1]
[1 0 1]];

global stations

stations={'HOBART12','KATH12M','YARRA12M','WARK12M','HART15M','HARTRAO','HOBART26','PARKES'};



%%

load C:\VieVS\WORK\PROCESSLIST/pl_A13A14AUSTRAL.mat

i=4;
subdir=['OutliersEstimatedSimpleRound',num2str(i)];
nameOfFolder=[subdir,'/'];

%% sort process_list
[numOfSess,numOfChars]=size(process_list);

[ sessionNameMjd,mjdSessionName,index ] = mjdOfSession( process_list );
process_list=process_list(index,1:numOfChars);

%% Which Sessions do you want to analyze?

sessDate='2014SEP04';
sessDate2='2014SEP24';
descript='until';
descript='from';
descript='range';

sessDate='all';

if ~strcmp(sessDate,'all')
    mjd = date2mjd( sessDate );

    [ sessionNameMjd,mjdSessionName,index ] = mjdOfSession( process_list );

    if strcmp(descript,'until')
        process_list=process_list(find(mjdSessionName<=mjd),1:numOfChars);
    end
    if strcmp(descript,'from')
        process_list=process_list(find(mjdSessionName>=mjd),1:numOfChars);
    end
    if strcmp(descript,'range')
        mjd2 = date2mjd( sessDate2 );
        mjdrange=sort([mjd,mjd2]);
        process_list=process_list(find(mjdSessionName>=mjdrange(1)&mjdSessionName<=mjdrange(2)),1:numOfChars);
    end
end



 


[ networks,processLists1,stationsOfDifNet,indexOfDifNet ] = findNetW( process_list,nameOfFolder );

%% compute sum of Observations
[ sumOfObsv ] = numOfObsvNetW( networks,indexOfDifNet );

%% prepare bar plot
[ barInput,nameOfBL ] = prepareBar( indexOfDifNet,sumOfObsv );

%%
figure 

subplot(2,1,1)
hold on

ic=1;
for i=1:length(processLists1)
    [r,c]=size(processLists1{i});
    if r>3
        [ mbas,wrms,basname ] = getBasRep( subdir,processLists1{i} );
        legend('-DynamicLegend'); 
        
        plot(mbas,wrms*100,'x','Color',colors(ic,:),'MarkerSize',15,'LineWidth',2,'DisplayName',[stationsOfDifNet{i}{:}])
        for isl=1:length(mbas)
            text(mbas(isl),1,basname(isl,:),'Rotation',90);
        end
        ylabel('cm')
        legend('show','Location','NorthWest')
        
       
        barInput_(:,ic)=barInput(:,i);
        colorIndex(ic)=ic;
        map(ic,1:3)=colors(ic,:);
        ic=ic+1;
        
    end
    
end


subplot(2,1,2)
hold on
colormap(map);
bar(barInput_)
        
[maxX,asdf]=size(barInput_);
% set(gca,'XTick',1:14)
set(gca, 'XTickLabel',nameOfBL(1:maxX),'XTick',1:numel(nameOfBL(1:maxX)));
rotateXLabels(gca,45)
legend('show','Location','NorthWest')



   



