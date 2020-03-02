function [ sched ] = prepareSched(outSummary,outRatio,Info,process_list)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%% {seesionName,mjd]
[sessionNameMjd,mjd] = mjdOfSession( process_list );

%all Sessions
for i=1:length(outSummary)
    ALL1(i,:)=sum(outSummary{i},2);
end
ALL=sum(ALL1);
sched=zeros(length(mjd),1);
for i=1:length(Info(1,:))
    id=find(Info(3,i)==mjd);
    if isempty(find(Info(3,i)==mjd))
       
    else
        sched(id)=ALL(i)/2;
    end
    
end


end

