% Network

close all
clear all

global stations

stations={'HOBART12','KATH12M','YARRA12M','WARK12M','HART15M','HARTRAO','HOBART26','PARKES'};

% process_list
load 'C:\VieVS\WORK\PROCESSLIST\pl_A13A14AUSTRAL.mat';
[numOfSess,numOfChars]=size(process_list);
nameOfFolder='OutliersEstimatedSimpleRound3\';
[networks,data]=getNetW(process_list,nameOfFolder);

[r,c,l]=size(networks);

% distinguish networks
j=1;
networkLogic=networks(:,:,:)>0;

for i=1:l
   pattern(i)=sum(find(networkLogic(:,:,i)==1));   
end
pattern(2,1:length(pattern))=1:length(pattern);
patternSort=sortrows(pattern');
index=find(diff(patternSort(:,1)));
numOfDifNet=length(index);

for i=1:numOfDifNet    
    stationsOfDifNet{i}=stations(find(sum(networkLogic(:,:,patternSort(index(i),2)))>0));
    if i==1
        indexOfDifNet{i}=patternSort(1:index(i),2);
    else
        indexOfDifNet{i}=patternSort(index(i-1)+1:index(i),2);
    end
end

% generate new process list for each stationnetwork

for i=1:length(indexOfDifNet)
    processLists{i}=process_list(indexOfDifNet{i},1:numOfChars);
end



% worldmap([-50 0],[0 180])
% load coast
% geoshow(lat, long)