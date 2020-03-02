function [ myCmap ] = createColormap( Y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    M = length(Y(1,:));
    C = fliplr(linspace(0,1,M)) .';
    myCmap = horzcat(ones(size(C)), 1-0.5*C, zeros(size(C)));
    myCmap(M,:)=[0.5 0.5 0.5];
    myCmap(M-1,:)=[0.3 0.3 0.3];
    

end

