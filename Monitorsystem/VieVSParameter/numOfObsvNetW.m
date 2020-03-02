function [ sumOfObsv ] = numOfObsvNetW( networks,indexOfDifNet )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    %% compute sum of Observations
    for i=1:length(indexOfDifNet)
        sumOfObsv{i}=triu(sum(networks(:,:,indexOfDifNet{i}),3));        
    end
    
end

