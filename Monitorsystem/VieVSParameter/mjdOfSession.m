function [ sessionNameMjd,mjdSessionName,index ] = mjdOfSession( process_list )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [numOfSess,numOfChars]=size(process_list);
    
    for i=1:numOfSess
        session=process_list(i,1:numOfChars);
        sessionNameMjd{i}=session(6:numOfChars);
        mjdSessionName(i)=jd2mjd(cal2jd(str2num(session(1:4)),month(session(7:12)),str2num(session(11:12))));
    end
    
    [mjdSessionName,index]=sort(mjdSessionName);
    sessionNameMjd=sessionNameMjd(index);

end

