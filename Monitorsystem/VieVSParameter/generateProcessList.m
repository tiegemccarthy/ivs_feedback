function [ newProcessList ] = generateProcessList( cellArrayOfSessName )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
     nameOfSess=cellArrayOfSessName;
    for i=1:length(nameOfSess)
        session=nameOfSess{i};
        newProcessList(i,1:length(session)+5)=['20',session(1:2),'/',session];
    end

end

