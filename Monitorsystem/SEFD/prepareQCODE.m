function [ QCODEofStation ] = prepareQCODE(QCODE_COLUMN)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    intermediate=QCODE_COLUMN;
    
    for iSession=1:length(intermediate)
        y = cell2mat(intermediate(iSession).QCODES);
        Y(iSession,1:17)=y(2:18); % real observed
        Y(iSession,18)=y(1); % sked minus real observed
        Y(iSession,19)=y(19);
    end
    QCODEofStation=Y;


end

