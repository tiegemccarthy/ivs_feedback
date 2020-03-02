function [ stationIndex ] = getStationIndex_res_( res,stationName )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

    for i=1:length(res.allStatNames)
            if strncmp(res.allStatNames(i),stationName,7)       
                break;
            end        
    end
    
    if ~strncmp(res.allStatNames(i),stationName,7) 
        stationIndex=[];
    else
        stationIndex=i;
    end
    
end

