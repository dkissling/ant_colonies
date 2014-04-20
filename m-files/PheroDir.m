%Pherodir

%Gesammtvektor aus allen umliegenden Pheromon-Feldern
%Wert des bisherigen Vektors: 30

Vector = 30*olddir/norm(olddir); %der bisherige Bewegungsvektor
Vector = Vector + Feld(pos(2)-1,pos(1)-1)*[1,1]