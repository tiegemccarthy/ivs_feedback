function [ X,Y ] = dataVectoradd( data,parameters,station )
%UNTITLED Summary of this function goes here
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
     
        if ~isfield(data(session).(genvarname(station)),(genvarname(parameter)))
            continue;
        end
        if isempty(data(session).(genvarname(station)))
            continue;
        end
        
        switch parameter
            
            case 'numOfObs'
                a=p;
                stationNames=fieldnames(data(session));
                for j=1:length(stationNames)
                    if isempty(data(session).(genvarname(stationNames{j})))
                        continue;
                    else
                        numOfObs(session,j)=length(data(session).(genvarname(station)).(genvarname(stationNames{j})).mjd);  
                    end
                end
                
            case 'numOfScans'
                b=p;
                [x,y]=getXY(data,session,station,'sources');
                
                numOfScans(session,1)=length(unique(x));
                
            case 'stationHeight'
                c=p;
                a=atan2(data(session).(genvarname(station)).coory.val,data(session).(genvarname(station)).coorx.val);
                b=atan2(data(session).(genvarname(station)).coorz.val,data(session).(genvarname(station)).coory.val);
                R=rot3D(a,b,0);
                colx=data(session).(genvarname(station)).coorx.col;
                coly=data(session).(genvarname(station)).coory.col;
                colz=data(session).(genvarname(station)).coorz.col;
                N=data(session).(genvarname(station)).N;
                m0=data(session).(genvarname(station)).mo;
                N(1,1)=N(colx,colx);
                N(2,2)=N(coly,coly);
                N(3,3)=N(colz,colz);
                N(1,2)=N(colx,coly);
                N(1,3)=N(colx,colz);
                N(2,3)=N(coly,colz);
                N(2,1)=N(1,2);
                N(3,1)=N(1,3);
                N(3,2)=N(2,3);
                SIGMAxx=m0*inv(N);
                SIGMAhs=R*SIMGAxx*R';
                stationHeight=1;
        end
    end
end
    
            

end

