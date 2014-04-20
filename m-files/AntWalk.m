% Ant-agent 


%AntNr = 1; %Indexzahl der Ameise
%base = [n/2;n/2]; %Koordinaten der Basis
%pos = base; %Aufenthaltsort der Ameise
%olddir = [0;1];


    odd = rand(1);
    
    Feld(1,1:n) = -1;
    Feld(n,1:n) = -1;
    Feld(2:n-1,1) = -1;
    Feld(2:n-1,n) = -1;
    PheroDir;
    
    if odd < 0.8  && max(pos+dir) < n && min(pos+dir) > 1 %in old direction
      	pos = pos + dir;
        olddir = dir;
    elseif odd < 0.89  && max(pos+[0 -1; 1 0]*dir) < n &&  min(pos+[0 -1; 1 0]*dir) > 1 %right turn
        pos = pos + [0 -1; 1 0]*dir;
        olddir = [0 -1; 1 0]*dir;
	elseif odd < 0.98  && max(pos+[0 1; -1 0]*dir) < n && min(pos+[0 1; -1 0]*dir) > 1 %left turn
        pos = pos + [0 1; -1 0]*dir;
        olddir = [0 1; -1 0]*dir;
    elseif odd <= 1 && max(pos-dir) < n && min(pos-dir) > 1
        pos = pos - dir;
        olddir = -dir;
    end
    
    Feld(pos(2)-olddir(2),pos(1)-olddir(1)) = 50;
