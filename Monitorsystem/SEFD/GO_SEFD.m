clear all
close all
clc
% estimate all files 
% syntax required a****.sked aust**.sked
% syntax required a****.corr.perl aust**.corr.perl

%% USER AREA

% Session Names
sessionNames={'a','aust','aug'}; 



%% Sched
path=pwd;

dirSched=[path,'\sked\'];
[ schedFiles,schedSessionNames ] = getAllFiles( dirSched );

for i=1:length(sessionNames)
    sched.(genvarname(sessionNames{i}))=generateSessionList( schedFiles,sessionNames{i} );
end


%% Obs
dirObs=[path,'\corrperl\'];
[ obsFiles,obsSessionNames ] = getAllFiles( dirObs );

for i=1:length(sessionNames)
    obs.(genvarname(sessionNames{i}))=generateSessionList( obsFiles,sessionNames{i} );
end

%% test for consistency between 


%% Estimation

for i=1:length(sessionNames)
[ X_X.(genvarname(sessionNames{i})),X_S.(genvarname(sessionNames{i})),Info.(genvarname(sessionNames{i})),NumOfStations.(genvarname(sessionNames{i})),X0_X.(genvarname(sessionNames{i})),X0_S.(genvarname(sessionNames{i})),QCODE_StationWise_X.(genvarname(sessionNames{i})),QCODE_StationWise_S.(genvarname(sessionNames{i})) ] = getSEFD( dirSched,dirObs,sessionNames{i},obs.(genvarname(sessionNames{i})) );
end

% Number of Stations Sched
% for i=1:length(X0_X(:,1))
%     numOfStationsSched(i)=length(find(X0_X(i,:)~=0))
% end
% % Number of Stations Observed
% for i=1:length(X_X(:,1))
%     numOfStationsObs(i)=length(find(X_X(i,:)~=0))
% end

% Doy
% for i=1:length(aInfo)
%     if aInfo(2,i)>1300 && aInfo(2,i)<1400
%         aInfo(3,i)=aInfo(3,i)-365;
%     end
% end

%% Prepare Plot

% connect a, aust and aug

for i=1:length(sessionNames)
    a=X_X.(genvarname(sessionNames{i}));
    b=X_S.(genvarname(sessionNames{i}));
    c=Info.(genvarname(sessionNames{i}));
    d=NumOfStations.(genvarname(sessionNames{i}));
    e=X0_X.(genvarname(sessionNames{i}));
    f=X0_S.(genvarname(sessionNames{i}));
%     g=QCODE_StationWise_X.(genvarname(sessionNames{i}))
%     h=QCODE_StationWise_S.(genvarname(sessionNames{i}))
    if i==1
        X(1:length(a(:,1)),:)=a;
        S(1:length(b(:,1)),:)=b;
        Inf(:,1:length(c(1,:)))=c;
        numOfSt(:,1:length(d(1,:)))=d;
        X0(1:length(a(:,1)),:)=e;
        S0(1:length(a(:,1)),:)=f;
        QC_X(1:length(a(:,1)),:)=a;
        QC_S(1:length(b(:,1)),:)=b;
    else
        X(length(X(:,1))+1:length(X(:,1))+length(a(:,1)),:)=a;
        S(length(S(:,1))+1:length(S(:,1))+length(b(:,1)),:)=b;
        Inf(:,length(Inf(1,:))+1:length(Inf(1,:))+length(c(1,:)))=c;
        numOfSt(:,length(numOfSt(1,:))+1:length(numOfSt(1,:))+length(d(1,:)))=d;
        X0(length(X0(:,1))+1:length(X0(:,1))+length(e(:,1)),:)=e;
        S0(length(S0(:,1))+1:length(S0(:,1))+length(f(:,1)),:)=f;
%         QC_X(length(QC_X(:,1))+1:length(QC_X(:,1))+length(h(:,1)),:)=h;
%         QC_S(length(QC_S(:,1))+1:length(QC_S(:,1))+length(f(:,1)),:)=f;
    end
end


stationNames={'Hb';'Ke';'Yg';'Ww';'Ht';'Hh';'Ho'};

% Get mjd
Inf(3,:)=doy2jd(Inf(4,:)+2000,Inf(3,:));  % doy 2 jd
Inf(3,:)=jd2mjd(Inf(3,:)); % jd2mjd

% Info
Inf(5,:)=1:length(Inf(1,:));
Inf_ = sortrows(Inf',3');
Abscissa=Inf_(:,5);
Inf_(:,6)=1:length(Inf_(:,1));
Inf__ = sortrows(Inf_,5);
Absc_back=Inf__(:,6);

% % Save scheduled number of observations
%     for i=1:length(X(1,:))
%         QCODEofStation = prepareQCODE(QC_X(:,i));
%         [ outSummary{i},outRatio{i} ] = analyseQCODE( QCODEofStation );
%     end
%     
%     save('sched.mat','outSummary','outRatio','Info')
    
% creat output folder
formatOut = 'mm_dd_yy';
outfold=datestr(now,formatOut);
mkdir([pwd,'\output\',outfold])

for i=1:length(X(1,:))
    
    h=figure(i);
    
    % X-Band
    subplot(2,1,1)
    title([stationNames(i),'X-Band'])
    hold on
    
        % Plot Qcodes
%         QCODEofStation = prepareQCODE(QCODE_X(:,i));
%         [ summary,ratio ] = analyseQCODE( QCODEofStation );
%         Cmap=createColormap(summary);
%         colormap(Cmap)
%         bar(summary(Abscissa,:),'stacked')
        
%         % Plot Ratio
%         RATIO=sortrows([Abscissa,ratio*1000],1);
%         plot(ratio(Abscissa)*1000,'LineWidth',3)
        
%         % Plot Number of Baselines
%         numOfBL=Info_(:,1);
%         plot(numOfBL*100,'r','LineWidth',3)
        
        % Plot Scheduled SEFD and re-estimated SEFD
        Xi=X(:,i);
        X0i=X0(:,i);
        SNi=num2cell(Inf_(:,2));
        nSS=num2cell(numOfSt(1,:));
        nSO=num2cell(numOfSt(2,:));
        p1=plot(Absc_back(Xi~=0)',Xi(Xi~=0),'o','Color',[1 0.7 0]);    
%         t1=text(Absc_back(X0i~=0)', X0i(X0i~=0), nSS(X0i~=0), 'VerticalAlignment','bottom');
%         t2=text(Absc_back(Xi~=0)', Xi(Xi~=0), nSO(Xi~=0), 'VerticalAlignment','bottom');
        p3=plot(Absc_back(X0i~=0),X0i(X0i~=0),'Color',[0.5 0.5 0.5],'LineWidth',3);
        ylabel('[Jy]');
        set(gca,'XTick',1:length(Xi),'XTicklabel',SNi);
        rotateXLabels(gca,90)
        if ~isempty(p1) && ~isempty(p1)
            legend([p1,p3],'re-estimated','scheduled')
        end
        
    % S-Band
    subplot(2,1,2)
    title([stationNames(i),'S-Band'])
    hold on
    
        % Plot Qcodes
%         QCODEofStationS = prepareQCODE(QCODE_S(:,i));
%         [ summaryS,ratioS ] = analyseQCODE( QCODEofStationS );
%         CmapS=createColormap(summaryS);
%         colormap(CmapS)
%         bar(summaryS(Abscissa,:),'stacked')
        
%         % Plot Ratio
%         RATIOS=sortrows([Abscissa,ratioS*1000],1);
%         plot(ratioS(Abscissa)*1000,'LineWidth',3)
        
        % Plot Scheduled SEFD and re-estimated SEFD
        Si=S(:,i);
        S0i=S0(:,i);
        SNi=num2cell(Inf_(:,2));
        nSS=num2cell(numOfSt(1,:));
        nSO=num2cell(numOfSt(2,:));
        p1=plot(Absc_back(Si~=0)',Si(Si~=0),'o','Color',[1 0.7 0]);    
%         t1=text(Absc_back(S0i~=0)', S0i(S0i~=0), nSS(S0i~=0), 'VerticalAlignment','bottom');
%         t2=text(Absc_back(Si~=0)', Si(Si~=0), nSO(Si~=0), 'VerticalAlignment','bottom');
        p3=plot(Absc_back(S0i~=0),S0i(S0i~=0),'Color',[0.5 0.5 0.5],'LineWidth',3);
        ylabel('[Jy]');
        set(gca,'XTick',1:length(Xi),'XTicklabel',SNi);
        rotateXLabels(gca,90)
        if ~isempty(p1) && ~isempty(p1)
            legend([p1,p3],'re-estimated','scheduled')
        end
      
        
% save

    saveas(h,[pwd,'\output\',outfold,'\',stationNames{i},'.png'])
    
end

