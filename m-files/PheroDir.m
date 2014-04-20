%PheroDir


%Gesammtvektor aus allen umliegenden Pheromon-Feldern
%Wert des bisherigen Vektors: 30

Vector = Vector + Feld(pos(2)-1,pos(1)-1)*[1;1]/sqrt(2); %Pheromonwirkung nach unten rechts
Vector = Vector + Feld(pos(2),pos(1)-1)*[1;0]; %Pheromonwirkung nach rechts
Vector = Vector + Feld(pos(2)-1,pos(1)-1)*[-1;1]/sqrt(2); %Pheromonwirkung nach oben rechts
Vector = Vector + Feld(pos(2),pos(1)-1)*[1;0]; %Pheromonwirkung nach oben