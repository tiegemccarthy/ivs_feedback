function [ summary,ratio ] = analyseQCODE( QCODEofStation )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    Y=QCODEofStation;
    OBS=Y(:,1:17);  % Real observed
    LOST=Y(:,18:19);  % Lost observations
    obsSum=sum(OBS');   % sum per Session
    lostSum=sum(LOST'); % sum per Station
    %ratio=obsSum/(obsSum+lostSum);  
        
    badObs1=Y(:,1:4);       % 1:4
    goodObs=Y(:,5:8);      % 5:8
    code9=Y(:,9);          % 9
    badObs2=Y(:,10:17);     % A to H
    
    noFringe=Y(:,18);       % 0
    noValidCorr=Y(:,19);    % N
    
    ratio = (sum(goodObs')'+code9)./(sum(goodObs')'+code9+sum(badObs1')'+sum(badObs2')'+noFringe+noValidCorr);
    
    summary=[goodObs,code9,badObs1,badObs2,noFringe,noValidCorr];
    
    %SUMMARY=[mean(ratio),sum(obsSum),sum(lostSum),sum(code9),sum(goodObs),sum(badObs)];

end

