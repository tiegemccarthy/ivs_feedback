function [ mjd ] = date2mjd( sessDate )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

mjd=jd2mjd(cal2jd(str2num(sessDate(1:4)),month(sessDate(5:9)),str2num(sessDate(8:9))));

end

