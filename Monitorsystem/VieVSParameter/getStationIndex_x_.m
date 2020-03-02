function [ stationIndex ] = getStationIndex( x_,stationName )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

    for i=1:length(x_.antenna)
            if strncmp(x_.antenna(i).name,stationName,7)       
                break;
            end        
    end
    
    if ~strncmp(x_.antenna(i).name,stationName,7) 
        stationIndex=[];
    else
        stationIndex=i;
    end
    
end

