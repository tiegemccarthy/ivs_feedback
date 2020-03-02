function [x,y,z] = corap(antenna,stat,mjd)

for i=1:length(antenna)
    if strcmp(antenna(i).name,stat)
        ep = antenna(i).epoch;
        x = antenna(i).x + (mjd-ep)/365.25* antenna(i).vx;
        y = antenna(i).y + (mjd-ep)/365.25* antenna(i).vy;
        z = antenna(i).z + (mjd-ep)/365.25* antenna(i).vz;
    end
end