function [ X,Y ] = dataVector( data,parameters,station )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
global stations
global numOfSess

X={};
Y={};
numOfObs=zeros(numOfSess,1);
for p=1:length(parameters)
    
    parameter=parameters{p};
    
    first=1;
    first1=1;
    for session=1:numOfSess
        
        if isempty(data(session).(genvarname(station)))
            continue;
        end     
        switch parameter
            
            case 'numOfObs'
                a1=p;
                stationNames=fieldnames(data(session));
                numOfObs(session,length(stations)+1)=length(data(session).(genvarname(station)).resALL.val);
                    for j=1:length(stationNames)
                        if isempty(data(session).(genvarname(stationNames{j})))
                            continue;
                        else
                            numOfObs(session,j)=length(data(session).(genvarname(station)).(genvarname(stationNames{j})).mjd);  
                        end
                    end
                
            case 'numOfScans'
                b1=p;
                [x,y]=getXY(data,session,station,'sourcesALL');
                
                numOfScans(session,1)=length(unique(x));
                
            case 'stationHeightError'
                c1=p;
                c=atan2(data(session).(genvarname(station)).coory.val,data(session).(genvarname(station)).coorx.val);
                a=atan2(data(session).(genvarname(station)).coorz.val,data(session).(genvarname(station)).coory.val);
                R=rot3D(a,0,c);
                colx=data(session).(genvarname(station)).coorx.col;
                coly=data(session).(genvarname(station)).coory.col;
                colz=data(session).(genvarname(station)).coorz.col;
                N=data(session).(genvarname(station)).N;
                m0=data(session).(genvarname(station)).mo;
                [ Qxx_ ] = getQxx( N,colx,coly,colz );
                SIGMAxx=m0.^2.*Qxx_;
                SIGMAhs=R*SIGMAxx*R';
                statHeightErr(session,1)=SIGMAhs(1,1);
                
                        
            otherwise
                if ~isfield(data(session).(genvarname(station)),(genvarname(parameter)))
                    continue;
                end
                if isempty(data(session).(genvarname(station)))
                    continue;
                end
                [x,y]=getXY(data,session,station,parameter);
                
                if first==1
                    [~,c,l]=size(y);
                    X{p}(session,1:length(x))=x;
                    Y{p}(session,1:c,1:l)=y;                    
                    first=first+1;
                else
                    [r,c]=size(X{p});    
                    if length(x)>c
                        if isnumeric(x)
                            X{p}(:,c+1:length(x))=zeros(r,length(x)-c);
                        else
                            X{p}(:,c+1:length(x))=cell(r,length(x)-c);
                        end
                        if isnumeric(y)
                            Y{p}(:,c+1:length(y(1,:,1)),1:l)=zeros(r,length(y(1,:,1))-c,l);
                        else
                            Y{p}(:,c+1:length(y(1,:,1)),1:l)=cell(r,length(y(1,:,1))-c,l);
                        end
                    end
                    X{p}(session,1:length(x))=x;
                    Y{p}(session,1:length(y(1,:,1)),1:l)=y;
                   
                    
                end
        end
                        
    end
    first1=first1+1;
    first=first+1;
end   

if exist('a1')
%     X{a1}=0;
    Y{a1}=numOfObs;
end
if exist('b1')
%     X{b1}=0;
    Y{b1}=numOfScans;
end
if exist('c1')
%     X{c1}=0;
    Y{c1}=statHeightErr;
end

end
  
