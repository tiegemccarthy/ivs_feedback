function [ s ] = getStationData( x_, res, opt_,atpa_, stationIndex )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    global stations
    
    %% x_
    fieldNames_x_ = fieldnames(x_);
        
    for i=6:length(fieldNames_x_)
        newName = getfield(x_, fieldNames_x_{i});
        newParameterNames=fieldnames(newName);
        if length(newName)>1
            s.(fieldNames_x_{i})=newName(stationIndex);
        else
            s.(fieldNames_x_{i})=newName(1);
        end
    end
    
    %% res
    
    % BaseLines with stationIndex Station
    index=find(res.baselineOfObs(:,1)==stationIndex|res.baselineOfObs(:,2)==stationIndex);
    s.resALL.mjd=res.mjd; % all residuals of session
    s.resALL.val=res.mainVal;
    
    s.res.mjd=res.mjd(index);
    s.res.val=res.mainVal(index);       
    
        % Station
        conversion=zeros(length(res.allStatNames),1);
        for i=1:length(res.allStatNames)
            for j=1:length(stations)
                if strncmp(res.allStatNames{i,1},stations(j),7)
                    conversion(j)=i;
                end
            end
        end

        % Station which creat BL with stationIndex Station            
        for j=1:length(conversion) 
            indexS=sort([find(res.baselineOfObs(:,1)==stationIndex & res.baselineOfObs(:,2)==conversion(j));find(res.baselineOfObs(:,2)==stationIndex & res.baselineOfObs(:,1)==conversion(j))]);
            s.(genvarname(stations{j})).mjd=res.mjd(indexS);        
        end
        
        % Source
        sourcesNum=res.source(index);
        
       
        for i=1:length(res.source)
            res.allSourceNames(res.source(i));            
            sourceNames(i)=res.allSourceNames(j);
        end
        for i=1:length(res.source(index))
            sourcesName(i)=res.allSourceNames(sourcesNum(i));                        
        end
        s.sources.val=sourcesName;
        s.sources.mjd=res.mjd(index);
        s.sourcesALL.val=sourceNames;
        s.sourcesALL.mjd=res.mjd;
        
    
    %% opt
    s.wrms.val=opt_.wrms;
    s.wrms.mjd=opt_.midnight-1; % -1 because midnight is time stemp for next day
    s.mo=opt_.mo;
    
    %% atpa_
    s.N=atpa_.mat;
    
    
end

