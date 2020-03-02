function [ process_list] = sortProcessList( process_list )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[~,numOfChars]=size(process_list);
[ ~,~,index ] = mjdOfSession( process_list );
process_list=process_list(index,1:numOfChars);

end

