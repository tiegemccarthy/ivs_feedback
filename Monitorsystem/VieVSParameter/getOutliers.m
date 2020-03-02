function [ outliers,nameOfBL ] = getOutliers( pathData,nameOfFolder )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
folderContent=dir([pathData,nameOfFolder]);
outliers=[];


for i=1:length(folderContent)
   currentFolder=folderContent(i).name; 
   pathForCurrentFolder=[pathData,nameOfFolder,currentFolder];
   content=dir(pathForCurrentFolder);
   for j=1:length(content)
       fid=fopen([pathForCurrentFolder,'\',content(j).name]);
       if fid<0
           continue;
       end
        C = textscan(fid,'%s %s %f');
        currentOutliers=C{:,3};
        currentNamesOfBL=[C{:,1},C{:,2}];
        clear C
        NamesOfBL(length(outliers)+1:length(outliers)+length(currentOutliers),1:2)=currentNamesOfBL;
        outliers(length(outliers)+1:length(outliers)+length(currentOutliers))=currentOutliers;
       
        
   end
   
end

% clear multi stored outliers in vectores
NamesOfBL=NamesOfBL(find(diff(outliers)),1:2);
outliers=outliers(find(diff(outliers)));

[nameOfBL,index] = sortrows(NamesOfBL);
outliers=outliers(index);

end

