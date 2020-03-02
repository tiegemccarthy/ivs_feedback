function [ s,t,noSessions ] = scheduleSEFD( sked_dir,stationNames,sessionName,sessionNumbers )
%skedSEFD: get values of SEFD that are used for scheduling
%   sked.m reads X and S SEFD values of .sked files with following syntax and stores it sessionwise
%   T    Hb  HOBART12  2x56000  17640  X  5000   S  4000 none MARK5B
%   T    Ke  KATH12M   2x56000  17640  X  4500   S  5000 none MARK5B
%   T    Yg  YARRA12M  2x56000  17640  X  5000   S  5000 none MARK5B
%   s_aust(i).X(k) ... X SEFD
%   s_aust(i).S(k) ... S SEFD
%   s_aust(i).statNameCode2(k)... yields indices of stationNames
%   i...Session, k...indices in file (doesnt show stationNames)

% Path
D = dir([sked_dir, '\',sessionName,'*.skd']);
Num = length(D(not([D.isdir])));
% disp(['Files ',sessionName,'*.sked found:  ',num2str(Num)])

s=struct;
t=struct;
j=1;
noSessions=[];
for i=sessionNumbers
    if strcmp(sessionName,'aug')
        n=length(num2str(i));
        switch n
            case 1
                sessionName=[sessionName,'00'];
            case 2
                sessionName=[sessionName,'0'];
            case 3
                sesionName='aug';
        end
    end
    fid = fopen([sked_dir sessionName num2str(i) '.skd'],'r');
    
    if fid==-1 
        noSessions(j)=i; % sessions are not available
        j=j+1;
        continue
    end
    
    tline = fgetl(fid);
    k=1;
    while ischar(tline)

        if strcmp(tline(1:2),'T ') % wheres the first row that begins with T
            for l=1:length(stationNames)
                if strcmp(stationNames(l,:),tline(6:7)) % check name of station: eg.: Hb
                    s(i,1).statNameCode2(k,1)=l; % station name described by number l=1 == Hb
                    break
                end
            end
          
            for xs=1:length(tline)-1
                if strcmp(tline(xs:xs+1),'X ') % where is X
                    X=str2double(tline(xs+3:xs+6));
                    s(i,1).X(k,1)=X;
                    t.XstationWise(i,l)=X;
                end
                if strcmp(tline(xs:xs+1),'S ') % where is S
                    S=str2double(tline(xs+3:xs+6));
                    s(i,1).S(k,1)=S;
                    t.SstationWise(i,l)=S;
                    break
                end
            end
            k=k+1;
        end
        tline = fgetl(fid);
    end
    fclose(fid);
end

end

