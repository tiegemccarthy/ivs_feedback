function [ mbas,wrms,basname ] = getBasRep( subdir,process_list )

%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% function to calculate and plot baseline length repeatabilities from
% current process_list.
% run from WORK directory
% programmed for VieVS by:
% Lucia Plank, 7. Sept. 2012
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clear all
% USER INPUT
 % subdirectory
 % yourdir = 'OutliersEstimatedSimpleRound7'; % PLEASE WRITE THE DIRECTORY NAME !!!!!
 % simulated data 1/0
  %usesim=1;
  usesim=0;
 % plotting names of the baseline
  plotblnam=0;
  %plotblnam=0;
  %filnamex='XA_S600';
  writebas=1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
  
% path of files
path= '../';

%load process_list
kaf=6;

%subdir='OutliersEstimatedSimpleRound1';

kf=24;
% load C:\VieVS\WORK\PROCESSLIST/pl_A13A14AUSTRAL.mat
% kf=6;


clear bas stat

[ns,l]=size(process_list);

numOfSess=length(process_list);

% define Syntax of elements of process_list
IndexOfYear=1:4; % first 4 elements correspond to year
IndexOfnameOfSess=6:14; % correspond to Session name
IndexOfWholeNameofSess=6:19; % correspond to whole Session name

for i=1:ns
   year{i}=process_list(i,IndexOfYear);
   nameOfSess{i}=process_list(i,IndexOfWholeNameofSess);
end

for ip=1:ns-1
    fil1=process_list(ip,kf:end);
%     sessnam(ip,:)=fil;
    %fil=[fil1(1:end-7),'DN',fil1(end-4:end)]
    sessnam(ip,:)=nameOfSess;
    fil=nameOfSess;
    load(['C:/VieVS/DATA/LEVEL3/',subdir,'/x_',nameOfSess{ip},'.mat']);
    load(['C:/VieVS/DATA/LEVEL1/',subdir,'/',nameOfSess{ip},'_antenna.mat']);
    
    mjd = x_.coorx(1).mjd;
    clear stat
    % number of stations
    nstat = length(x_.antenna);
    for k = 1:nstat
        stnam = x_.antenna(k).name;
        % calculate catalogue coordinates at time of interest
        [xa,ya,za] = corap(antenna,stnam,mjd);
        stat.apr(k,:)=[xa,ya,za];
        stat.est(k,:)=[x_.coorx(k).val/100,x_.coory(k).val/100,...
                                            x_.coorz(k).val/100]; %[m]
        stat.name(k,1:8) = stnam;
        stat.mx(k,:)=[sqrt(((x_.coorx(k).mx/100)^2+(x_.coory(k).mx/100)^2+(x_.coorz(k).mx/100)^2)/3)];
    end

    % calculate corrected values as apriori + estimated corrections 
    stat.corr = stat.apr + stat.est;
    isaustr=0;

    
    % calculate baselines
    % number of baselines
    nbas = nstat*(nstat-1)/2;
    %disp(strcat('number of baselines in session ', num2str(ip),': ',num2str(nbas)));
    fprintf(' number of baselines in session %4.0f:  %4.0f \n',ip,nbas)
 
    b=0;
    if ip==1
        for ib = 1:nstat-1
            for j = ib+1:nstat
                b = b + 1;
                stat1 = stat.name(ib,1:8);
                stat2 = stat.name(j,1:8);
                % length of apriori baseline [m]
                bas(b).ap= norm(stat.apr(j,:)-stat.apr(ib,:));
                % length of corrected baseline [m]
                bas(b).corr= norm(stat.corr(j,:)-stat.corr(ib,:));
                bas(b).name = [stat1(1:8),'-',stat2(1:8)];
                bas(b).mjd(ip) = mjd; 
                bas(b).isaustr(ip) = isaustr;
                bas(b).mbas=sqrt((stat.mx(j,:).^2+stat.mx(ib,:).^2)./2);
                bas(b).sessnam=fil(1:9);
            end
        end
    else
        in=0;
        for ib = 1:nstat-1
            for j = ib+1:nstat
                stat1 = stat.name(ib,:);
                stat2 = stat.name(j,:);
                basnam1 = [stat1(1:8),'-',stat2(1:8)];
                basnam2 = [stat2(1:8),'-',stat1(1:8)];
                for f = 1:length(bas) 
                    if strcmp(bas(f).name,basnam1)||strcmp(bas(f).name,basnam2)
                        % length of apriori baseline [m]
                        bas(f).ap(end+1)= norm(stat.apr(j,:)-stat.apr(ib,:));
                        % length of corrected baseline [m]
                        bas(f).corr(end+1)= norm(stat.corr(j,:)-stat.corr(ib,:));
                        bas(f).mjd(end+1) = mjd;
                        bas(f).isaustr(end+1) = isaustr;
                        bas(f).mbas(end+1)=sqrt((stat.mx(j,:).^2+stat.mx(ib,:).^2)./2);
                        bas(f).sessnam(end+1,:)=fil(1:9);
                        in =1;
                        break
                    end
                end
                if in ==0; % new baseline
                    % f= length(bas.name)+1;
                    f= length(bas)+1; %hana
                    % length of apriori baseline [m]
                    bas(f).ap(1)= norm(stat.apr(j,:)-stat.apr(ib,:));
                    % length of corrected baseline [m]
                    bas(f).corr(1)= norm(stat.corr(j,:)-stat.corr(ib,:));
                    bas(f).name = basnam1;
                    bas(f).mjd(1) = mjd;
                    bas(f).isaustr(1) = isaustr;
                    bas(f).mbas(1)=sqrt((stat.mx(j,:).^2+stat.mx(ib,:).^2)./2);
                    bas(f).sessnam(1,:)=fil(1:9);
                end            
            end 
        end
    end
     
    save(['bas_' subdir '.mat'],'bas');
end

% calculate baseline repeatabilities
for i=1:length(bas)
    bas(i).dbas = bas(i).corr-bas(i).ap;
    bas(i).w    = 1./bas(i).mbas;
    bas(i).xq = sum(bas(i).dbas.*bas(i).w)/sum(bas(i).w);
    bas(i).wrms = sqrt(sum((bas(i).dbas-bas(i).xq).^2.*bas(i).w)/sum(bas(i).w));
    wrms(i)=bas(i).wrms;
    mbas(i) = mean(bas(i).corr); %[m]
    sbas(i) = std(bas(i).dbas);  %[m]   
    basname(i,:)=bas(i).name;
end

end

