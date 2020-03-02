function [ X,Y,data ] = getDataInVieVS( nameOfExperiment,process_list )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    global stations
    global path
    global numOfSess
    
    [ process_list] = sortProcessList( process_list );
    [numOfSess,numOfChars]=size(process_list);

    %% dataStationWise
   
    [ data ] = dataStationWise( process_list,nameOfExperiment );

    %% {seesionName,mjd]
    [sessionNameMjd,mjdSessionName] = mjdOfSession( process_list );


    % %% sessionName --> process_list
    % [ newProcessList ] = generateProcessList( nameOfSess );

    
    
   


    %% plot data stationwise

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

end

