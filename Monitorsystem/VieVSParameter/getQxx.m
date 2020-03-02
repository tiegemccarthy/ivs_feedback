function [ Qxx_ ] = getQxx( N,colx,coly,colz )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    Qxx=inv(N);
    Qxx_(1,1)=Qxx(colx,colx);
    Qxx_(2,2)=Qxx(coly,coly);
    Qxx_(3,3)=Qxx(colz,colz);
    Qxx_(1,2)=Qxx(colx,coly);
    Qxx_(1,3)=Qxx(colx,colz);
    Qxx_(2,3)=Qxx(coly,colz);
    Qxx_(2,1)=Qxx_(1,2);
    Qxx_(3,1)=Qxx_(1,3);
    Qxx_(3,2)=Qxx_(2,3);    
end

