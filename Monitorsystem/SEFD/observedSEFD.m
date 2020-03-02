function [ s,noSessions ] = observedSEFD( dirObs,sessionName,sessionNumbers )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% Path
D = dir([dirObs, '\',sessionName,'*.corr.perl']);
Num = length(D(not([D.isdir])));
disp(['Files ',sessionName,'*.corr.perl found:  ',num2str(Num)])

s=struct;
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
    fid = fopen([dirObs sessionName num2str(i) '.corr.perl'],'r');
    if fid==-1 
        noSessions(j)=i; % sessions are not available
        j=j+1;
        continue
    end
    tline = fgetl(fid);
    brk=0;    
    while ischar(tline)
                
        % get day of year
        if strcmp(tline,'+HEADER ') % get header information
            
             O = textscan(fid,'%s %s');             
             for o=1:length(O{1,1})
                 if strcmp(O{1,1}{o,1},'DOY')
                    doy=O{1,2}{o,1};
                 	doy=str2double(doy(1:3));
                    s(i,1).doy=doy;                    
                    brk=brk+1;
                 end
                 if strcmp(O{1,1}{o,1},'DATABASE')&& ~isempty(O{1,2}{o,1})
                     
                    datum=O{1,2}{o,1};
                    if datum(1)=='$'
                        year=str2double(datum(2:3));
                        s(i,1).datum=year;                    
                        brk=brk+1;
                    else
                        year=str2double(datum(1:2));
                        s(i,1).datum=year;                    
                        brk=brk+1;
                    end
                 end
                 
                 if brk==2  % if found both, doy and database --> break
                     break;
                 end
             end
             
             tline = fgetl(fid);
        end
    end
    fclose(fid);
    
    fid = fopen([dirObs sessionName num2str(i) '.corr.perl'],'r');
    tline = fgetl(fid);
    k=1;
    while ischar(tline)      
        if strcmp(tline,'+STATION_NOTES')
            tline = fgetl(fid);
            while ischar(tline)
                if ~strcmp(tline,'')&&~strcmp(tline,' ')

                    for xs=1:length(tline)
                        if strcmp(tline(xs),'(') && strcmp(tline(xs+5),')') && strcmp(tline(xs+3),'/')
                            name1=tline(xs+1:xs+2);
                            name2=tline(xs+4);
                            name3=tline(xs-9:xs-1);
                            s(i,1).name1{k,1}=name1;
                            s(i,1).name2{k,1}=name2;
                            s(i,1).name3{k,1}=name3;
                            k=k+1;
                        end

                    end

                end
                if strcmp(tline,'+DROP_CHANNELS')
                    break
                end
                tline = fgetl(fid);               

            end
        end
        tline = fgetl(fid);
    end
    fclose(fid);
    
    fid = fopen([dirObs sessionName num2str(i) '.corr.perl'],'r');
    tline = fgetl(fid);
    while ischar(tline)
        
        if strcmp(tline,'+SNR_RATIOS')
            
            C = textscan(fid,'%s %f %f %f %f','HeaderLines',6);
            b=find(isnan(C{1,2}));
            if ~isempty(b)
                B{1,1}=C{1,1}(1:b-1);
                B{1,2}=C{1,2}(1:b-1);
                B{1,3}=C{1,3}(1:b-1);
                B{1,4}=C{1,4}(1:b-1);
                B{1,5}=C{1,5}(1:b-1);
            end
            s(i,1).all=B;
            break
        end
        tline = fgetl(fid);
        
    end
    fclose(fid);
    
    fid = fopen([dirObs sessionName num2str(i) '.corr.perl'],'r');
    tline = fgetl(fid);
    while ischar(tline)
        
        if strcmp(tline,'+QCODES')
            clear C
            C = textscan(fid,'%s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f','HeaderLines',3);
            b=find(strncmp(C{1,1}(:,1),'---',3));
            clear B
            if ~isempty(b)
                for l=1:length(C)
                    B{1,l}=C{1,l}(1:b-1);
                end
            end
            s(i,1).QCODES=B;
            break
        end
        tline = fgetl(fid);
        
    end
    fclose(fid);
    
end

end

