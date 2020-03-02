function [ s ] = numberOfOutliersPerBL( basname,nameOfBL,outliers )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [numOfBL,bla]=size(basname);
    for i=1:numOfBL
       index=find(strncmp(basname(i,1:6), nameOfBL(:,1),6)&strncmp(basname(i,10:16), nameOfBL(:,2),6)|(strncmp(basname(i,1:6), nameOfBL(:,2),6)&strncmp(basname(i,10:16), nameOfBL(:,1),6)));
       s{i}=outliers(index);       
    end

end

