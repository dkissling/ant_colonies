% Ant-agent 

n = 500;
Feld = zeros(n);
AntNr = 1; %Indexzahl der Ameise
base = [n/2;n/2]; %Koordinaten der Basis
pos = base; %Aufenthaltsort der Ameise
olddir = [0;1];
i = 1;
while i < 10000
    odd = rand(1);
    dir = olddir;
    if odd < 0.6  && max(pos+dir) < n && min(pos+dir) > 0 %in old direction
      	pos = pos + dir;
        olddir = dir;
    elseif odd < 0.8  && max(pos+[0 -1; 1 0]*dir) < n &&  min(pos+[0 -1; 1 0]*dir) > 0 %right turn
        pos = pos + [0 -1; 1 0]*dir;
        olddir = [0 -1; 1 0]*dir;
	elseif odd <= 1  && max(pos+[0 1; -1 0]*dir) < n && min(pos+[0 1; -1 0]*dir) > 0 %left turn
        pos = pos + [0 1; -1 0]*dir;
        olddir = [0 1; -1 0]*dir;
    end
    Feld(pos(1),pos(2)) =  Feld(pos(1),pos(2))+10;
    Feld_Plot;
    pause(0.000000001);
    i = i+1;
end