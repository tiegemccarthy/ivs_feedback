function [ X_,X0_,ST_,nBL_,QCODE_StationWise_X_,QCODE_StationWise_S_] = problems( X,X0,ST,numOfBaselinesPerSession,obs,QCODE_StationWise_X,QCODE_StationWise_S)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

zeroObservations=find(X==Inf);

j=1;
k=1;
for i=1:length(X(:,1))
    
    if k<=length(zeroObservations)
        if i==zeroObservations(k)
            k=k+1;
            continue
        end
    end
    ST_(j,:)=ST(i,:);
    X_(j,:)=X(i,:);
    j=j+1;
end

% adapt numberofbaslines vector
j=1;
k=1;
% delete zero Sessions
for i=1:length(numOfBaselinesPerSession)
    if numOfBaselinesPerSession(i)==0
        SessionsFailed(k)=i;
        k=k+1;
        continue;
    end
   
    QCODE_StationWise_X_(j,:)=QCODE_StationWise_X(i,:);
    QCODE_StationWise_S_(j,:)=QCODE_StationWise_S(i,:);
    
    
    X0_(j,:)= X0(i,:);
    nBL(1,j)=numOfBaselinesPerSession(i);   % number of Baslines
    nBL(2,j)=i; % Session nunmber
    if isempty(obs(i,1).doy)
        nBL(3,j)=round((obs(i-1,1).doy+obs(i+1,1).doy)/2);  % doy of year
    else
        nBL(3,j)=obs(i,1).doy;
    end
    
    if isempty(obs(i,1).datum)
        if nBL(2,j)<1400
            nBL(4,j)=13;
        else
            nBL(4,j)=14;
        end
    else
        nBL(4,j)=obs(i,1).datum;
    end    
    j=j+1;
end

nBL_=nBL;
j=1;sumBL=0;
for i=1:length(zeroObservations)
    while zeroObservations(i)>sumBL
        sumBL=sum(nBL(1,1:j));
        j=j+1;
    end
    nBL_(1,j-1)=nBL_(1,j-1)-1;
    j=1;sumBL=0;
end


end

