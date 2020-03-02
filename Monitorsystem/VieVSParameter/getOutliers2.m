function [ OUTLIER ] = getOutliers2( nameOfFolder,process_list )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
global stations
global path

%% {seesionName,mjd]
[sessionNameMjd,mjd] = mjdOfSession( process_list );

pathData=[path,'DATA\OUTLIER\'];
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
    OUTLIER{i}=zeros(length(mjd),length(stations));
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
        OUTLIER{i}(sessionID,stationID)=OUTLIER{i}(sessionID,stationID)+1;
    end
    
end


end

