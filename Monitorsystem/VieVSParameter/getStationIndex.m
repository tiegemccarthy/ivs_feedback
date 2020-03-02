function [ indexOfStation ] = getStationIndex( data,station )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
global numOfSess

indexOfStation=zeros(numOfSess,1);
for i=1:numOfSess
    if ~isempty(data(i).(genvarname(station)))
        indexOfStation(i)=1;       
    end
end

end

