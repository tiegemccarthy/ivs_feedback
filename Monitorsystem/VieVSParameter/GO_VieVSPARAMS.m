clc
close all
clear all

global stations
global path
global numOfSess

%% USER AREA
% new station? stations={'HOBART12','KATH12M','YARRA12M','WARK12M','HART15M','HARTRAO','newStation'};
stations={'HOBART12','KATH12M','YARRA12M','WARK12M','HART15M','HARTRAO'};

% set path to your VieVS folder
path='G:\UTAS\VieVS\';

% set path to processlist
pathProcessList='G:\UTAS\VieVS\WORK\PROCESSLIST\';

% set name of processlist
nameOfProcessList='pl_A13A14AUSTRAL.mat';

% set name of \VieVS\DATA\LEVEL3\OutliersEstimatedSimpleRound7\
% results-folder
nameOfExperiment='OutliersEstimatedSimpleRound7\';

%% LOAD PROCESSLIST
load([pathProcessList,nameOfProcessList]);
[sessionNameMjd,mjd] = mjdOfSession( process_list );

%% GET DATA
    % Outlier    
       % [ OUTLIER ] = getOutliers2( nameOfExperiment,process_list );
    
    % Networks
        [ networks,processLists,stationsOfDifNet,indexOfDifNet ] = findNetW( process_list,nameOfExperiment );

        numOfNetW=length(indexOfDifNet); % number of different Networks
        for i=1:length(indexOfDifNet)-1 % -1 because last one contains all sessions
            for j=1:length(indexOfDifNet{i}) 
                networks2(indexOfDifNet{i}(j),1)=i;
            end
        end
    
    % VieVS parameter
        [ X,Y,data ] = getDataInVieVS( nameOfExperiment,process_list );
        
%% PLOT DATA

% creat output folder
formatOut = 'mm_dd_yy';
outfold=datestr(now,formatOut);
mkdir([pwd,'\output\',outfold])

time=0;
if time~=1
    x=1:numOfSess;
else
    x=mjdSessionName;
end

%         figure(0)
%         number of sessions of each station
for i=1:length(stations)
    k=1;
    for j=1:length(data)
        if isstruct(data(j).(genvarname(stations{i})))
            k=k+1;
        end
    end
    nOSES(i)=k;
end

%         figure(1)
%         number of:
%             +REAL OBSERVSATIONS
%             +REAL SCANS
%             +SCHEDULED OBSERVATIONS

            % {16}...real observations
            % {17}...scans
            load('sched.mat') % scheduled observation: 'outSummary','outRatio','Info'
            [ sched ] = prepareSched(outSummary,outRatio,Info,process_list);
            a=Y{1}{16}(:,length(stations)+1);
            b=Y{1}{17};
%             for i=1:length(stations)
%                 %A(1:length(sum(Y{i}{16},2)),i)=sum(Y{i}{16},2);
%                 B(1:length(Y{i}{17}),i)=Y{i}{17};
%             end
            %a=sum(A,2);
            %b=sum(B,2);
            y=[a,b];

% manuel simplification: have a look at stationsOFDifNet cell array and
% decide which networks you want to pool.
pool{1}=[1];
pool{2}=[4,5];
pool{3}=[6];
pool{4}=[8];
pool{5}=[2,3,7,9,10];
for i=1:length(pool)
    for j=1:length(pool{i})
        numOfPoolStation{i}(j)=length(indexOfDifNet{pool{i}(j)});
        numOfPoolStation1{i}=sum(numOfPoolStation{i});
    end
    rpool(pool{i})=i;
end
sum(indexOfDifNet{pool{1}})
NAME{1}=['AUSCOPE: HOBART12 KATH12M YARRA12M -  ',num2str(numOfPoolStation1{1})];
NAME{2}=['AUSCOPE + WARK12M -  ',num2str(numOfPoolStation1{2})];
NAME{3}=['AUSCOPE + HART15M -  ',num2str(numOfPoolStation1{3})];
NAME{4}=['AUSCOPE + WARK12M + HART15M -  ',num2str(numOfPoolStation1{4})];
NAME{5}=['others -  ',num2str(numOfPoolStation1{5})];

%cM1=distinguishable_colors(length(stationsOfDifNet));
%cM1=distinguishable_colors(length(rpool));
cM1=[[255 0 0];[0 0 205];[0 100 0];[189 183 107];[255 0 255];[255 20 147];[255 140 0];[128 0 0];[0 255 255]]./255;
width1=0.5;

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

figureOut1=figure(1);
subplot(2,1,1)
hold on

c=bar(sched,0.9);
set(c,'FaceColor','w','EdgeColor','k');
for i=1:numOfSess
    b(i,:)=bar(x(i),y(i,1),width1,'DisplayName',NAME{rpool(networks2(i))});
    set(b(i,:),'FaceColor',cM1(rpool(networks2(i)),1:3),'EdgeColor',cM1(rpool(networks2(i)),1:3));
end
width2 = width1/1.5;

% for i=1:numOfSess
%     
%     a=bar(x(i),y(i,2),width2);
%     set(a,'FaceColor','w');
% end




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

title('number of scheduled observations and real obsverations')
legend(b(idL,:),'Location','northwest')
hold off



% Ratio
subplot(2,1,2)
rat=a./sched;

p=polyfit(find(isfinite(rat)),rat(isfinite(rat)),1);
y1=polyval(p,find(isfinite(rat)));

h1=plot(rat,'x','LineWidth',2);
hold on
h2=plot(find(isfinite(rat)),y1,'r','LineWidth',2);

set(gca, 'XTickLabel',sessionNameMjd(1:numOfSess),'XTick',x);
rotateXLabels(gca,90)

title('ratio of scheduled observations and real obsverations')
legend([h1,h2],'ratio','trend')
hold off

saveas(figureOut1,[pwd,'\output\',outfold,'\schedVSreal','.png'])

% %         figure(2)
% %         OUTLIER
% 
%     figureOut2=figure(2)
% 
%     for i=1:length(OUTLIER)
%         out=OUTLIER{i};
%         % estimate average number of outliers    
%         sum1=sum(out,2);
%         averageOutlier(i)=sum(sum1)/nOSES(i);
%         allOutlier(i)=sum(sum1);
%         stationOut{i}=stations{i};
%         subplot(round(length(OUTLIER)/2),2,i)
%         
%         bar(sum(out,2))
%         title([stations{i}])
%         xlabel('sessions')
%         ylabel('number of Outliers')
%     end
%     Tout = table(averageOutlier',allOutlier',...
%     'RowNames',stationOut);
%     saveas(figureOut2,[pwd,'\output\',outfold,'\outlier','.png'])



%         figure(3)
%         standard deviation of unit weight

    figureOut3=figure(3);
    
    hold on
    x31=x(Y{1,1}{14}~=0);
    y31=Y{1,1}{14}(find(Y{1,1}{14}~=0));
    x32=x(find(Y{1,1}{14}~=0));
    y32=Y{1,1}{15}(find(Y{1,1}{14}~=0));
    p1=plot(x31,y31,'x','Color','k','LineWidth',2,'DisplayName','wrms');    % wrms
    p2=plot(x32,y32,'x','Color','r','LineWidth',2,'DisplayName','standard deviation of unit weight');    % mo
    
    p=polyfit(x31,y31',2);
    y31a=polyval(p,x31);    
    h1=plot(x31,y31a,'k','LineWidth',3);
    p=polyfit(x32,y32',2);
    y32a=polyval(p,x32);    
    h2=plot(x32,y32a,'r','LineWidth',3);
    
    legend([p1,p2])
    ylabel('cm')
    set(gca, 'XTickLabel',sessionNameMjd(1:numOfSess),'XTick',x);
    rotateXLabels(gca,90)
    saveas(figureOut3,[pwd,'\output\',outfold,'\sessionfit','.png'])
    
%           figure(4)
%           accuarcy of station coordinates
    
   
    for i=1:length(Y)
        figureOuti=figure(4+i);
        %title(['3D station error -  ',stations{i}])
        o=sqrt(Y{i}{9}(:,:,1).^2+Y{i}{10}(:,:,1).^2+Y{i}{11}(:,:,1).^2);
        e=sqrt((Y{i}{9}(:,:,1)./o.*Y{i}{9}(:,:,2)).^2+(Y{i}{10}(:,:,1)./o.*Y{i}{10}(:,:,2)).^2+(Y{i}{11}(:,:,1)./o.*Y{i}{11}(:,:,2)).^2);
        sigi=sqrt(Y{i}{9}(:,:,2).^2+Y{i}{10}(:,:,2).^2+Y{i}{11}(:,:,2).^2);
      %  subplot(2,1,1)
%         errorbar(x(find(o~=0)),o(o~=0),e(o~=0),'x')
%         ylabel('cm')
       % subplot(2,1,2)
        hold on
        x42=x(find(o~=0&e<3));
        y42=sigi(o~=0&e<3);
        h1=plot(x42,y42,'x','LineWidth',3);
        
        p=polyfit(x42,y42',2);
        y42a=polyval(p,x42);    
        h2=plot(x42,y42a,'r','LineWidth',3);
        
        legend([h1,h2],['3D station error -  ',stations{i}],'trend')
        ylim([0 3])
        ylabel('cm') 
        set(gca, 'XTickLabel',sessionNameMjd(1:numOfSess),'XTick',x);
        rotateXLabels(gca,90)
        xlabel('sessions')
        meanStErr(i)=mean(y42);
%         set(gca, 'XTickLabel',sessionNameMjd(1:numOfSess),'XTick',x);
%         rotateXLabels(gca,90)
        saveas(figureOuti,[pwd,'\output\',outfold,'\stationErr',stations{i},'.png'])
    end
    
        
