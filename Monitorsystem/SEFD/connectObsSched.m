function [ yAx_X,yAx_S,X0,S0,X,numOfBaselinesPerSession,QCODE_StationWise_X,QCODE_StationWise_S ] = connectObsSched(stationNames,sked,obs)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

j=0;
for i=1:length(sked) % Sessions
    if isempty(sked(i).X) || isempty(obs(i).all) % Sessions are not available
        j=j+1;
        continue
    end
    for k=1:length(obs(i).all{1,1}) % Baseline       
        A=obs(i).all{1,1}{k,1}(1); % StationA, first letter in BL 
        B=obs(i).all{1,1}{k,1}(2); % StationB, second letter in BL
        
        % Look if there any translation errors occured
        mA=1;
        while strcmp(A,obs(i).name2{mA,1})~=1
            mA=mA+1;
            if mA>length(obs(i).name2(:,1))
                translationError(i,k)=1;
                break;
            end
        end
        mB=1;
        while strcmp(B,obs(i).name2{mB,1})~=1
            mB=mB+1;
            if mB>length(obs(i).name2(:,1))
                translationError(i,k)=1;
                break;
            end
        end
        
    end
end

% Prepare QCODE struct
for i=1:length(sked) % Sessions
    for j=1:length(stationNames)
        QCODE_default=zeros(1,length(obs(i).QCODES)-1);
        QCODE_StationWise_X(i,j).QCODES=num2cell(QCODE_default);
        QCODE_StationWise_S(i,j).QCODES=num2cell(QCODE_default);
    end
end

j=0;
d=1;
for i=1:length(sked) % Sessions
    if isempty(sked(i).X) || isempty(obs(i).all) % Sessions are not available
        j=j+1;
        continue
    end
    
   
    for k=1:length(obs(i).all{1,1}) % Baseline 
        
        A=obs(i).all{1,1}{k,1}(1); % StationA
        B=obs(i).all{1,1}{k,1}(2); % StationB
        % Find Translation
        for mA=1:length(obs(i).name2)
            if strcmp(A,obs(i).name2{mA,1})==1; break; end
        end

        for nA=1:length(stationNames)
            if strcmp(obs(i).name1{mA,1},stationNames{nA}); break; end
        end
        
        for mB=1:length(obs(i).name2)
            if strcmp(B,obs(i).name2{mB,1})==1; break; end
        end
           
        for nB=1:length(stationNames)
            if strcmp(obs(i).name1{mB,1},stationNames{nB}); break; end
        end
        % Get mean ratios for session i for Baseline k
        meanRatioX=obs(i).all{1,2}(k); % mean Ratio for X
        obsXn=obs(i).all{1,3}(k); % real number of Observations X
        schedXn=obs(i).QCODES{1,22}(k*2-1); % scheduled number of Observations X
        meanRatioS=obs(i).all{1,4}(k); % mean Ratio for S
        obsSn=obs(i).all{1,5}(k); % real number of Observations S
        schedSn=obs(i).QCODES{1,22}(k*2); % scheduled number of Observations S
        
        %QCODES yield number of real observations and number of scheduled
        %observations
        
        if i == 1409
          
        end
        
        % Stations for QCODE
        QC_A=obs(i).QCODES{1,1}{2*k-1,1}(1); % StationA
        QC_B=obs(i).QCODES{1,1}{2*k-1,1}(2); % StationB
        for QC_mA=1:length(obs(i).name2)
            if strcmp(QC_A,obs(i).name2{QC_mA,1})==1; break; end
        end
        for QC_nA=1:length(stationNames)
            if strcmp(obs(i).name1{QC_mA,1},stationNames{QC_nA}); break; end
        end
        for QC_mB=1:length(obs(i).name2)
            if strcmp(QC_B,obs(i).name2{QC_mB,1})==1; break; end
        end
        for QC_nB=1:length(stationNames)
            if strcmp(obs(i).name1{QC_mB,1},stationNames{QC_nB}); break; end
        end
      
        QCODE_row_X=zeros(1,length(obs(i).QCODES)-1);
        QCODE_row_S=zeros(1,length(obs(i).QCODES)-1);
        for iQC=2:length(obs(i).QCODES)
            QCODE_row_X(1,iQC-1)=obs(i).QCODES{1,iQC}(k*2-1);          
            QCODE_row_S(1,iQC-1)=obs(i).QCODES{1,iQC}(k*2);
            QCODE_row_default(1,iQC-1)=0;
        end
              
        QCODE_StationWise_X(i,QC_nA).QCODES=num2cell(cell2mat(QCODE_StationWise_X(i,QC_nA).QCODES)+QCODE_row_X);
        QCODE_StationWise_X(i,QC_nB).QCODES=num2cell(cell2mat(QCODE_StationWise_X(i,QC_nB).QCODES)+QCODE_row_X);
        QCODE_StationWise_S(i,QC_nA).QCODES=num2cell(cell2mat(QCODE_StationWise_S(i,QC_nA).QCODES)+QCODE_row_S);
        QCODE_StationWise_S(i,QC_nB).QCODES=num2cell(cell2mat(QCODE_StationWise_S(i,QC_nB).QCODES)+QCODE_row_S);
       
        % Get SEFD for stations A,B
        % A
        for x=1:length(sked(i).statNameCode2)           
            if sked(i).statNameCode2(x)==nA; 
                SEFDXA=sked(i).X(x);
                SEFDSA=sked(i).S(x);
                stationWiseX(i,nA)=SEFDXA;
                stationWiseS(i,nA)=SEFDSA;
                break; 
            end
        end
        % B
        for x=1:length(sked(i).statNameCode2)
            if sked(i).statNameCode2(x)==nB; 
                SEFDXB=sked(i).X(x);
                SEFDSB=sked(i).S(x);
                break; 
            end
        end
        % Create new observation in terms of linear adjustment
        yAx_X(d,1)=sqrt(SEFDXA*SEFDXB)/meanRatioX;
        yAx_X(d,2)=SEFDXA;
        yAx_X(d,3)=SEFDXB;
        yAx_X(d,4)=obsXn;
        
        
        yAx_S(d,1)=sqrt(SEFDSA*SEFDSB)/meanRatioS;
        yAx_S(d,2)=SEFDSA;
        yAx_S(d,3)=SEFDSB;
        yAx_S(d,4)=obsSn;    
        
          
        
        %Parameters
        X{d,1}=stationNames(nA);
        X{d,2}=stationNames(nB);
        
        % Parameters in correct stationNumber column
        X0(i,nA)=SEFDXA;
        X0(i,nB)=SEFDXB;
        S0(i,nA)=SEFDSA;
        S0(i,nB)=SEFDSB;
        
        numOfBaselinesPerSession(i)=k;
        d=d+1;
    end
   
    
    
end


end

