function [ X,Y ] = getVieVsParameter( process_list,nameOfFolder,parameters,station )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    global stations
    global numOfSess
    pathData='C:\VieVS\DATA\LEVEL3\';
    
    numOfSess=length(process_list);

    % define Syntax of elements of process_list
    IndexOfYear=1:4; % first 4 elements correspond to year
    IndexOfnameOfSess=6:14; % correspond to Session name
    IndexOfWholeNameofSess=6:19; % correspond to whole Session name

    for i=1:numOfSess
       year{i}=process_list(i,IndexOfYear);
       nameOfSess{i}=process_list(i,IndexOfWholeNameofSess);
    end
    
    % specify Parameter
    name1='x_';
    name2='res_';
    name3='opt_';
    
    % store data stationwise
    for i=1:numOfSess
        session=nameOfSess{i};
        load([pathData,nameOfFolder,name1,session,'.mat']);    
        load([pathData,nameOfFolder,name2,session,'.mat']); 
        load([pathData,nameOfFolder,name3,session,'.mat']);

        for j=1:length(stations)

            [ stationIndex ] = getStationIndex_x_( x_,stations{j} );
            [ stationIndexRes ] = getStationIndex_res( res,stations{j} );

            if stationIndex~=stationIndexRes; disp('ui... something is wrong'); end;

                if ~isempty(stationIndex)
                    [ data(i).(genvarname(stations{j})) ] = getStationData( x_,res,opt_,stationIndex );
                end

        end

    end
    
    % Networks
    for i=1:numOfSess
        for j=1:length(stations)
            if isfield(data(i),(genvarname(stations{j})))
                for k=1:length(stations)
                    if isfield(data(i).(genvarname(stations{j})),(genvarname(stations{k})))                        
                        network(j,k,i)=length(data(i).(genvarname(stations{j})).(genvarname(stations{k})).mjd);                       
                    end
                end
            end
        end
    end
    
    % what do you want to plot?
    
    [X,Y]=dataVector(data,parameters,station);

    
end

