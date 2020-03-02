function [ a ] = generateSessionList( foldInfo,name )

a=[];

j=1;

for i=1:length(foldInfo)

    if strcmp(foldInfo(i).name,name)
        a(j)=foldInfo(i).num;
        j=j+1;
    end
   
end

