function [ out,out2 ] = getAllFiles( dirFile )
% reads all files in folder and splits filename into char and double part
% e.g.: 
% a1310.sked --> out.name='a', out.num='1310'
% aust33.corr.perl --> out.name='aust', out.num='33'
% aug007.sked --> out.name='aug', out.num='7'

D = dir(dirFile);

for i=1:length(D)
    name=D(i).name;
    if strcmp(name,'.') || strcmp(name,'..')           
            continue;
    end
    k=1;
    for j=1:length(name)
        if name(j)=='.'
            k=k-1;
            break;
        end
        if isnan(str2double(name(j)))&&k>1 % to avoid for example a1405a
            k=k-1;
            break;
        end
        if isnan(str2double(name(j)))&&k==1
            sessionName(j)=name(j);
        else
            k=k+1;
        end
    end
    sessionNumber=name(length(sessionName)+1:length(sessionName)+k);
    out(i).name=sessionName;
    out(i).num=str2double(sessionNumber);
    out2{i}=sessionName;
end

end

