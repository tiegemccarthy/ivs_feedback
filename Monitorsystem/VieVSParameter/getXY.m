function [ x,y ] = getXY( data,session,station,parameter )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    if isstruct(data(session).(genvarname(station)).(genvarname(parameter)))
        var=fieldnames(data(session).(genvarname(station)).(genvarname(parameter)));
        for i=1:length(var)
           n=var{i};        
           switch n
               case 'mjd'
                    x=data(session).(genvarname(station)).(genvarname(parameter)).mjd;
               case 'val'
                    y(1,:,1)=data(session).(genvarname(station)).(genvarname(parameter)).val;
               case 'mx'
                    y(1,:,2)=data(session).(genvarname(station)).(genvarname(parameter)).mx;
               case 'name'
                    y(1,:,1)=data(session).(genvarname(station)).(genvarname(parameter)).name;
           end
        end
    end
    if isnumeric(data(session).(genvarname(station)).(genvarname(parameter)))
       y(1,:,1)=data(session).(genvarname(station)).(genvarname(parameter));
    end
    if ~exist('x')
        x=zeros(1,1,1);
    end
    if ~exist('y')
        y=zeros(1,1,1);
    end
end

