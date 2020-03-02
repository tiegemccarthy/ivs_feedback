function [ PARAMS,PARAMSS,nBL__,numOfStations,X0_,S0_,QCODE_StationWise_X_,QCODE_StationWise_S_ ] = getSEFD( dirSched,dirObs,sessionTitle,sessionNumbers )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
% Session-wise values of SEFD (system equivalent flux density)

%%% 
stationNamesSched=['Hb';'Ke';'Yg';'Ww';'Ht';'34';'04'];
stationNamesObs={'Hb';'Ke';'Yg';'Ww';'Ht';'Hh';'Ho'};
%%%


%% (1) scheduled values of SEFD

[ sched,noSessionsSched ] = scheduleSEFD( dirSched,stationNamesSched,sessionTitle,sessionNumbers );
% if ~isempty(noSessionsSched)
%     disp(['Sessions not found: ' num2str(noSessionsSched)])
% end

%% (2) values of MEAN RATIOS = Observed SNR / Predicted SNR

[ obs,noSessionsObs] = observedSEFD( dirObs,sessionTitle,sessionNumbers );
% if ~isempty(noSessionsObs)
%     disp(['Sessions not found: ' num2str(noSessionsObs)])
% end

%% (3) sqrt(SEFD_A*SEFD_B) / MEANRATIOS
% SEFD_A, SEFD_B are the scheduled values of SEFD of station A, B, see (1)
% MEANRATIOS are the values of the output of (2)
% the value of sqrt(SEFD_A*SEFD_B) / MEANRATIOS will be estimated

[ yAx_X,yAx_S,X0,S0,StationNamesPerBL,numOfBaselinesPerSession,QCODE_StationWise_X,QCODE_StationWise_S] = connectObsSched(stationNamesObs,sched,obs);

%% (4) due to zero MEANRATIO values the data has to be cleaned
[ yAx_X_,X0_,StationNamesPerBL_,nBL_,QCODE_StationWise_X_,QCODE_StationWise_S_ ] = problems( yAx_X,X0,StationNamesPerBL,numOfBaselinesPerSession,obs,QCODE_StationWise_X,QCODE_StationWise_S ); % X-SEFD
[ yAx_S_,S0_,StationNamesPerBL_,nBL_,QCODE_StationWise_X_,QCODE_StationWise_S_ ] = problems( yAx_S,S0,StationNamesPerBL,numOfBaselinesPerSession,obs,QCODE_StationWise_X,QCODE_StationWise_S ); % S-SEFD

%% Save Stations Scheduled
X0_Sched=X0_;
S0_Sched=S0_;

%% (5) estimate new SEFD values with real observations
[ params,PARAMS,nBL__,X0_  ] = estimation( stationNamesObs,nBL_,yAx_X_ ,X0_,StationNamesPerBL_);
[ paramsS,PARAMSS,nBL__S,S0_  ] = estimation( stationNamesObs,nBL_,yAx_S_ ,S0_,StationNamesPerBL_);

%% Add number of Stations Observed
X0_Obs=X0_;
S0_Obs=S0_;

% Number of Stations Sched
for i=1:length(X0_Sched(:,1))
    numOfStationsSched(i)=length(find(X0_Sched(i,:)~=0));
end
% Number of Stations Observed
for i=1:length(X0_Obs(:,1))
    numOfStationsObs(i)=length(find(X0_Obs(i,:)~=0));
end
numOfStations=[numOfStationsSched;numOfStationsObs];
%% (6) statistics
% In term of sessions
ChoosenSessions=[sessionTitle,num2str(sessionNumbers)];
SessionsNotFoundSched=noSessionsSched;
SessionsNotFoundObs=noSessionsObs;
% compare number of scheduled to real observed number of observations


end

