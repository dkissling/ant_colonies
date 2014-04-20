% Pherodir: Bestimmt die Bewegungsrichtung anhand der gestreuten Pheromone


Umgb = Feld((pos(2)-1):(pos(2)+1),(pos(1)-1):(pos(1)+1));
[MaxPherValue,Index] = max([Feld(pos(2),pos(1)+1);Feld(pos(2)-1,pos(1));Feld(pos(2),pos(1)-1);Feld(pos(2)+1,pos(1))]);
%Index: 1=right,2=up,3=left,4=down
dir = -[cos((Index-1)*pi);-sin((Index-1)*pi)];