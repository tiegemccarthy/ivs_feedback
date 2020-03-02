close all
clear all

% Number of Observations
global stations

stations={'HOBART12','KATH12M','YARRA12M','WARK12M','HART15M','HARTRAO','HOBART26','PARKES'};


load C:\VieVS\WORK\PROCESSLIST/pl_A13A14AUSTRAL.mat

i=4;
subdir=['OutliersEstimatedSimpleRound',num2str(i)]
nameOfFolder=[subdir,'/'];

networks=findNetW( process_list,nameOfFolder );

sessionIndex=1:81;
[ sumOfObsv ] = numOfObsSessions( networks,sessionIndex );
[ barInput,nameOfBL ]=prepareBar(sessionIndex,sumOfObsv);

[ sessionNameMjd,mjdSessionName,index ] = mjdOfSession( process_list );

figure
barInput=barInput(:,index);
[maxX,asdf]=size(barInput);

bar(barInput','stack')
set(gca, 'XTickLabel',sessionNameMjd,'XTick',1:length(mjdSessionName));
xlabel('Sessions')
ylabel('Number of Observations')
rotateXLabels(gca,90)
legend(nameOfBL(1:maxX))
