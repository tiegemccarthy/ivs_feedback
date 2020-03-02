function [ barInput,nameOfBL ] = prepareBar( indexOfDifNet_,sumOfObsv )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

global stations

%%
if ~iscell(indexOfDifNet_)
    j=1;
    for i=indexOfDifNet_
        indexOfDifNet{j}=i;
        j=j+1;
    end
else
    indexOfDifNet=indexOfDifNet_;
end

%% Calculate all BL possibilities
possib=triu(ones(length(stations),length(stations)))-eye(length(stations));
[ai,bi]=find(possib~=0);
for i=1:length(ai)
   nameOfBL{i}=[stations{ai(i)},'-',stations{bi(i)}];
end

%% prepare bar plot
for i=1:length(indexOfDifNet)
    [a{i},b{i}]=find(sumOfObsv{i}~=0);
    for j=1:length(a{1,i})
        barInput(find(a{1,i}(j)==ai & b{1,i}(j)==bi),i)=diag(sumOfObsv{1,i}(a{i}(j),b{i}(j)));
    end
end

end

