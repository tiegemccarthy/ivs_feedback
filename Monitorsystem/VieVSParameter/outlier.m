clear all
close all


stations={'HOBART12','KATH12M','YARRA12M','WARK12M','HART15M','HARTRAO'};
% process_list
pathProcessList='C:\VieVS\WORK\PROCESSLIST\';
nameOfProcessList='pl_A13A14AUSTRAL.mat';
load([pathProcessList,nameOfProcessList]);
[ process_list] = sortProcessList( process_list );
[sessionNameMjd,mjd] = mjdOfSession( process_list );
%% Outliers
path='C:\VieVS\';
pathData=[path,'DATA\OUTLIER\'];
nameOfFolder='OutliersEstimatedSimpleRound7\';
folderContent=dir([pathData,nameOfFolder]);
outliers=[];

for i=1:length(folderContent)
   currentFolder=folderContent(i).name; 
   pathForCurrentFolder=[pathData,nameOfFolder,currentFolder];
   content=dir(pathForCurrentFolder);
   for j=1:length(content)
       fid=fopen([pathForCurrentFolder,'\',content(j).name]);
       if fid<0
           continue;
       end
        C = textscan(fid,'%s %s %f');
        stA=C{:,1};
        stB=C{:,2};
        currentOutliers=C{:,3};
        clear C
        BL{1}(length(outliers)+1:length(outliers)+length(currentOutliers))=stA;
        BL{2}(length(outliers)+1:length(outliers)+length(currentOutliers))=stB;
        outliers(length(outliers)+1:length(outliers)+length(currentOutliers))=currentOutliers;
   end
   
end

[sBL,id]=sortrows([BL{1};BL{2}]');
soutliers=outliers(id);
for i=1:length(stations)
    M{i}=zeros(length(mjd),length(stations));
    [r1,c1]=find(strcmp(sBL(:,1),stations{i}));
    [r2,c2]=find(strcmp(sBL(:,2),stations{i}));
    csoutliers=soutliers([r1;r2]);
    for j=1:length(csoutliers)
        cid=find(mjd>csoutliers(j));
        if isempty(cid)
            sessionID=length(mjd);
        else
            sessionID=cid(1)-1;
        end
        if j<=length(r1)
            stationID=find(strcmp(stations,sBL(r1(j),2)));
        else
            stationID=find(strcmp(stations,sBL(r2(j-length(r1)),1)));
        end
        M{i}(sessionID,stationID)=M{i}(sessionID,stationID)+1;
    end
    
end


cM=distinguishable_colors(length(stations));
x=1:length(mjd);

for i=1:length(stations)
    
    for j=1:length(M{i}(1,:))
        if 0<length(find(M{i}(:,j)~=0))
            outliersPerStation(j)=sum(M{i}(:,j));            
        end
    end
    
%     % prepare Legend
%     for k=1:length(stations)      
%         stationL{k}=[stations{i},': ',outliersPerStation(k),
    
    figure(i)
    b=bar(M{i}(:,find(sum(M{i})~=0)),'stack')%,'DisplayName',stations);
    title(['number of outliers in BL: ',stations{i},' - *'])
    legend(b,stations{find(sum(M{i})~=0)})
    set(gca, 'XTickLabel',sessionNameMjd(1:length(mjd)),'XTick',x);
    rotateXLabels(gca,90)
end
% clear multi stored outliers in vectores
% outliers=outliers(find(diff(outliers)));
% BL{1}=BL{1}(find(diff(outliers)));
% BL{2}=BL{2}(find(diff(outliers)));

% HOBART12 WARK12M  56838.820462962962
% HART15M  YARRA12M 56838.845671296302
% HOBART12 KATH12M  56839.105960648150
% HART15M  WARK12M  56839.118333333332
% KATH12M  WARK12M  56839.180474537032