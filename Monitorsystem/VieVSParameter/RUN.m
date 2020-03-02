close all
clear all

global stations

stations={'HOBART12','KATH12M','YARRA12M','WARK12M','HART15M','HARTRAO','HOBART26','PARKES'};

% process_list
load 'C:\VieVS\WORK\PROCESSLIST\pl_A13A14AUSTRAL.mat';



parameters={'coorx','coory','coorz','dut1','zwd'};
colors=['b','r','m','k','y'];


station='HOBART12';

figure
hold on
legend('-DynamicLegend');
xlabel('mjd')

i=1;
p=1;
nameOfFolder='OutliersEstimatedSimpleRound3\';
    network=getNetwork(process_list,nameOfFolder);
    [X,Y] = getVieVsParameter( process_list,nameOfFolder,parameters(p),station );
    XY=sortrows([X(p,:)',Y(p,:)'],1);
    x=XY(find(XY(:,1)~=0),1);
    y=XY(find(XY(:,2)~=0),2);
    plot(x,y,colors(i),'DisplayName',[nameOfFolder,parameters(p)]);
    
i=2;
p=1;    
nameOfFolder='estZWD30m\';
[X,Y] = getVieVsParameter( process_list,nameOfFolder,parameters(1),station );
    XY=sortrows([X(p,:)',Y(p,:)'],1);
    x=XY(find(XY(:,1)~=0),1);
    y=XY(find(XY(:,2)~=0),2);
    plot(x,y,colors(i),'DisplayName',[nameOfFolder,parameters(p)]);
    
i=3;
p=1;    
nameOfFolder='estZWD30mV2\';
[X,Y] = getVieVsParameter( process_list,nameOfFolder,parameters(1),station );
    XY=sortrows([X(p,:)',Y(p,:)'],1);
    x=XY(find(XY(:,1)~=0),1);
    y=XY(find(XY(:,2)~=0),2);
    plot(x,y,colors(i),'DisplayName',[nameOfFolder,parameters(p)]);



legend('show')

% figure(1)
% hold on
% for p=1:length(parameters(1))
%     XY=sortrows([X(p,:)',Y(p,:)'],1);
%     x=XY(find(XY(:,1)~=0),1);
%     y=XY(find(XY(:,2)~=0),2);
%     h(p)=plot(x,y,colors(p));
% end
% 
% legend(h,parameters)
% title(station)

   