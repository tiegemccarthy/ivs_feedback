function [ networks,processLists,stationsOfDifNet,indexOfDifNet ] = findNetW( process_list,nameOfFolder )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    global stations
    
    [numOfSess,numOfChars]=size(process_list);

    [networks,data]=getNetW(process_list,nameOfFolder);

    [r,c,l]=size(networks);

    
    % distinguish networks  
    
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
        switch i
            case 1
                indexOfDifNet{i}=patternSort(1:index(i),2);
            case numOfDifNet
                stationsOfDifNet{i+1}=stations(find(sum(networkLogic(:,:,patternSort(index(i)+1,2)))>0));
                indexOfDifNet{i+1}=patternSort(index(i)+1:length(pattern(1,:)),2);            
                indexOfDifNet{i}=patternSort(index(i-1)+1:index(i),2);
            otherwise
                indexOfDifNet{i}=patternSort(index(i-1)+1:index(i),2);
        end
    end

    % generate new process list for each stationnetwork

    for i=1:length(indexOfDifNet)
        processLists{i}=process_list(indexOfDifNet{i},1:numOfChars);
    end
    
    % add input process_list two processLists array (and other params)
    processLists{1,length(processLists)+1}=process_list;
    indexOfDifNet{1,length(indexOfDifNet)+1}=[1:numOfSess]';
    stationsOfDifNet{1,length(stationsOfDifNet)+1}=stations;
end

