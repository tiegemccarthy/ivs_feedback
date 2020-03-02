function [ data ] = dataStationWise( process_list,nameOfExperiment )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

nameOfFolder=nameOfExperiment;

global stations
global path
global numOfSess

% where is data?

pathData=[path,'DATA\LEVEL3\'];
%nameOfFolder='OutliersEstimatedSimpleRound7\';
%dir()

% specify Parameter
name1='x_';
name2='res_';
name3='opt_';
name4='atpa_';


% store data stationwise
for i=1:numOfSess
    session=process_list(i,6:19); % 6:19 index for sessionName
    load([pathData,nameOfFolder,name1,session,'.mat']);    
    load([pathData,nameOfFolder,name2,session,'.mat']); 
    load([pathData,nameOfFolder,name3,session,'.mat']);
    load([pathData,nameOfFolder,name4,session,'.mat']);
    
    for j=1:length(stations)
       
        [ stationIndex ] = getStationIndex_x_( x_,stations{j} );
        [ stationIndexRes ] = getStationIndex_res( res,stations{j} );
        
        if stationIndex~=stationIndexRes; disp('ui... something wrong'); end;
     
        if ~isempty(stationIndex)
            [ data(i).(genvarname(stations{j})) ] = getStationData( x_,res,opt_,atpa_,stationIndex );
        end
        
    end

end

end

