function [ sumOfObsv ] = numOfObsSessions( networks,sessionIndex )
%UNTITLED Summary of this function goes here
%   sessionIndex is vector to define which sessions of your process_list
%   are considered
    %% compute sum of Observations
    for i=1:length(sessionIndex)
        sumOfObsv{i}=triu(sum(networks(:,:,sessionIndex(i)),3));        
    end
    
end

