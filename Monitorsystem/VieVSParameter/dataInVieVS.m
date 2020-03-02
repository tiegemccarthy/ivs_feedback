clear all
close all

global stations
global path
global numOfSess

global parameters
global colorMap
global X
global Y

stations={'HOBART12','KATH12M','YARRA12M','WARK12M','HART15M','HARTRAO'};
path='C:\VieVS\';

%% which sessions?

% process_list
pathProcessList='C:\VieVS\WORK\PROCESSLIST\';
nameOfProcessList='pl_A13A14AUSTRAL.mat';
%dir(pathProcessList)
load([pathProcessList,nameOfProcessList]);

%%
[ process_list] = sortProcessList( process_list );
[numOfSess,numOfChars]=size(process_list);

%% dataStationWise
nameOfExperiment='OutliersEstimatedSimpleRound7\';
[ data ] = dataStationWise( process_list,nameOfExperiment )

%% {seesionName,mjd]
[sessionNameMjd,mjdSessionName] = mjdOfSession( process_list );


% %% sessionName --> process_list
% [ newProcessList ] = generateProcessList( nameOfSess );

%% Networks
% station='HOBART12';
% [ indexOfStation ] = getStationIndex( data,station )

[ networks,processLists,stationsOfDifNet,indexOfDifNet ] = findNetW( process_list,nameOfExperiment );
numOfNetW=length(indexOfDifNet); % number of different Networks
for i=1:length(indexOfDifNet)-1 % -1 because last one contains all sessions
    for j=1:length(indexOfDifNet{i}) 
        networks2(indexOfDifNet{i}(j),1)=i;
    end
end




%% plot data stationwise


% CorrelationCoeff

parameters={'zwd','ngr','egr','xpol','ypol','dut1','nutdx','nutdy','coorx','coory','coorz','res','sources','wrms','mo','numOfObs','numOfScans','stationHeightError'};

for i=1:length(stations)
    station=stations{i};
    [x,y]=dataVector(data,parameters,station);
    X{i}=x;
    Y{i}=y;
    for p=1:length(parameters)
        if strcmp(parameters{p},'mo')
            X{i}{p}(find(Y{i}{p}~=0),1)=mjdSessionName(find(Y{i}{p}~=0));
        end
        if strcmp(parameters{p},'numOfObs')
            X{i}{p}(find(sum(Y{i}{p},2)~=0),1)=mjdSessionName(find(sum(Y{i}{p},2)~=0));            
        end
        if strcmp(parameters{p},'numOfScans')
            X{i}{p}(find(sum(Y{i}{p},2)~=0),1)=mjdSessionName(find(sum(Y{i}{p},2)~=0));
        end
        if strcmp(parameters{p},'stationHeightError')
            X{i}{p}(find(Y{i}{p}~=0),1)=mjdSessionName(find(Y{i}{p}~=0));
        end
    end
end

colorMap=distinguishable_colors(length(parameters));

% Table 
for i=1:length(stations)
    wrms=zeros(numOfSess,1);
    wrms(1:length(Y{i}{14}))=Y{i}{14};
    mo=zeros(numOfSess,1);
    mo(1:length(Y{i}{15}))=Y{i}{15};
    numOfObservations=zeros(numOfSess,1);
    numOfObservations(1:length(sum(Y{i}{16},2)))=sum(Y{i}{16},2);
    numOfScans=zeros(numOfSess,1);
    numOfScans(1:length(Y{i}{17}))=Y{i}{17};
    T{i} = table(numOfObservations,numOfScans,wrms,mo,...
    'RowNames',sessionNameMjd);
end

%% Plot
time=0;
if time~=1
    x=1:numOfSess;
else
    x=mjdSessionName;
end

% numberOfObservations vs numberOfScans all Stations


for i=1:length(stations)
    A(1:length(sum(Y{i}{16},2)),i)=sum(Y{i}{16},2);
    B(1:length(Y{i}{17}),i)=Y{i}{17};
end
a=sum(A,2);
b=sum(B,2);
y=[a,b];

% manuel simplification: have a look at stationsOFDifNet cell array and
% decide which networks you want to pool.
pool{1}=[1];
pool{2}=[4,5];
pool{3}=[6];
pool{4}=[8];
pool{5}=[2,3,7,9,10,11];
for i=1:length(pool)
    rpool(pool{i})=i;
end
NAME{1}='AUSCOPE: HOBART12 KATH12M WARK12M';
NAME{2}='AUSCOPE + WARK12M';
NAME{3}='AUSCOPE + HART15M';
NAME{4}='AUSCOPE + WARK12M + HART15M';
NAME{5}='others';

%cM1=distinguishable_colors(length(stationsOfDifNet));
cM1=distinguishable_colors(length(rpool));
width1=0.7;

manual=1;
if manual==0
    clear NAME;
    rpool=1:length(stationsOfDifNet);
    % prepare Legend
    for i=1:length(stationsOfDifNet)-1
        for j=1:length(stationsOfDifNet{i})        
            if j==1
                name(1:length(stationsOfDifNet{i}{j}))=stationsOfDifNet{i}{j};
            else
                name(length(name)+1:length(name)+length(stationsOfDifNet{i}{j})+1)=[' ',stationsOfDifNet{i}{j}];
            end
        end
        NAME{i}=name;
        clear name;
    end
end

figure(1)
hold on
for i=1:numOfSess
    b(i,:)=bar(x(i),y(i,1),width1,'DisplayName',NAME{rpool(networks2(i))});
    set(b(i,:),'FaceColor',cM1(rpool(networks2(i)),1:3),'EdgeColor',cM1(rpool(networks2(i)),1:3));
end
width2 = width1/1.5;

for i=1:numOfSess
    
    a=bar(x(i),y(i,2),width2);
    set(a,'FaceColor','w');
end

% Legend
if manual==1
    for i=1:length(pool)
    %     for j=1:length(indexOfDifNet{i})
            idL(i)=indexOfDifNet{pool{i}(1)}(1);
    %     end
    end
else
    for i=1:length(indexOfDifNet)-1
    %     for j=1:length(indexOfDifNet{i})
            idL(i)=indexOfDifNet{i}(1);
    %     end
    end
end


set(gca, 'XTickLabel',sessionNameMjd(1:numOfSess),'XTick',x);
rotateXLabels(gca,90)

title('number of observations and number of scans')
legend(b(idL,:))
hold off

% numberOfObservations each station

for i=1:length(stations)
    figure(1+i);
    hold on
    b=bar(x,Y{1,i}{1,16}(:,sum(Y{1,i}{1,16})~=0),'stack','EdgeColor','w');
    set(gca, 'XTickLabel',sessionNameMjd(1:numOfSess),'XTick',x);
    rotateXLabels(gca,90)
    iL=find(sum(Y{1,i}{1,16})~=0);
    for j=1:length(Y{1,i}{1,16}(1,:))
        if 0<length(find(Y{1,i}{1,16}(:,j)~=0))
            average(j)=sum(Y{1,i}{1,16}(:,j))/length(find(Y{1,i}{1,16}(:,j)~=0));            
        end
    end
    for j=iL
        stationsL{j}=sprintf([stations{j},' average: %d'],round(average(j)));
    end
    legend(b,stationsL{iL})
end
for i=1:length(stations)
    figure(1+i);
    title([stations{i},': number of Observations with other stations']) 
end

% Observations: wrms and mo and outlier

for i=1:length(stations)
    figure(7+i)
    title(['observations ', stations{i}])
    hold on
    p1=plot(x(find(Y{1,i}{14}~=0)),Y{1,i}{14}(find(Y{1,i}{14}~=0)),'x','Color','k','DisplayName','wrms');    % wrms
    p2=plot(x(find(Y{1,i}{14}~=0)),Y{1,i}{15}(find(Y{1,i}{14}~=0)),'x','Color','r','DisplayName','standard deviation of unit weight');    % mo
    legend([p1,p2])
    ylabel('cm')
    set(gca, 'XTickLabel',sessionNameMjd(1:numOfSess),'XTick',x);
    rotateXLabels(gca,90)
end


%legend('First Series','Second Series') % add legend

% colors=['b','r','m','k','y'];
% figure(1)
% hold on
% 
% 
% %% XAxis: time
% 
% figure(1)
% 
% first=1;
% for p=1:length(parameters)
%     if strcmp(typeOfPlot{p},'plot')
%         currentMax=max(Y{p}(:));
%         if first==1
%             absMax=currentMax;
%             first=first+1;
%         end       
%         if currentMax>absMax
%             absMax=currentMax;
%         end        
%     end
% end
% 
% for p=1:length(parameters)        
%         
%         if strcmp(typeOfPlot{p},'plot')
%             [r,c,l]=size(Y{p});
%             
%             switch l
%                 case 1                    
%                     x=X{p}(:);
%                     y=Y{p}(:);
% 
%                     x=x(find(y~=0));
%                     y=y(find(y~=0));
% 
%                     plot(x,y,'x','Color',colors(p),'MarkerSize',15);                    
%                 case 2
%                     x=X{p}(:);
%                     y=Y{p}(:,:,1);
%                     y=y(:);
%                     e=Y{p}(:,:,2);  % error
%                     e=e(:);
%                     x=x(find(y~=0));
%                     y=y(find(y~=0));
%                     e=e(find(e~=0));
%                     errorbar(x,y,e,'x','Color',colors(p),'MarkerSize',15);
%             end     
%         end
%     
% end
% 
% for p=1:length(parameters)
%     
%     if strcmp(typeOfPlot{p},'bar')
% 
%                 y=sum(Y{p},2);
%                 factor=max(max(y));
%                 x=mjdSessionName(find(y~=0));
%                 y=y(find(y~=0));
%                 y=(y./max(y)).*absMax;
% 
%                 bar(x,y);
%     end
%             
% end
% 
% %% Estimation
% 
% for p=1:length(parameters)        
%         
%     if strcmp(typeOfPlot{p},'plot')
%         
%         y=mean(Y{p}(:,:,2),2);           
%         y=y(find(y~=0));
% 
%         corrMatrix(:,p)=y;
%     end
%     
% end
% 
% for p=1:length(parameters)
%     
%     if strcmp(typeOfPlot{p},'bar')
% 
%         y=sum(Y{p},2);
%         y=y(find(y~=0));            
%         
%         corrMatrix(:,p)=y;
%     end
%             
% end
% 
% figure(2)
% hold on
% for p=1:length(parameters)
%    h(p)=plot( corrMatrix(:,p)/max(corrMatrix(:,p)), colors(p) );
% end
% legend(h,parameters);
% 
% corrcoef(corrMatrix)
% % %% XAxis: Session
% % 
% % first=1;
% % for p=1:length(parameters)
% %     if strcmp(typeOfPlot{p},'plot')
% %         currentMax=max(Y{p}(:));
% %         if first==1
% %             absMax=currentMax;
% %             first=first+1;
% %         end       
% %         if currentMax>absMax
% %             absMax=currentMax;
% %         end        
% %     end
% % end
% % 
% % for p=1:length(parameters)        
% %         
% %         if strcmp(typeOfPlot{p},'plot')
% %             
% %             x=X{p}(:);
% %             y=Y{p}(:);
% %             
% %             x=x(find(x~=0));
% %             y=y(find(y~=0));
% %             
% %             plot(x,y,'x','Color',colors(p),'MarkerSize',15);            
% %         end      
% %     
% % end
% % 
% % for p=1:length(parameters)
% %     
% %     if strcmp(typeOfPlot{p},'bar')
% % 
% %                 y=sum(Y{p},2);
% %                 factor=max(max(y));
% %                 x=mjdSessionName(find(y~=0));
% %                 y=y(find(y~=0));
% %                 y=(y./max(y)).*absMax;
% % 
% %                 bar(x,y);
% %     end
% %             
% % end
% % figure(2)
% % [ax,b,p] = plotyy(x,y,mjdSessionName,numOfObs,'bar','plot');
% % legend(h,parameters)
% % 
% % title(station)
% % xlabel('mjd')
% %    
% %  max(numOfObs(:))/factor  
% 
% 
% 
% 
% 
%     
% 
