%PheroDir


%Gesammtvektor aus allen umliegenden Pheromon-Feldern
%Wert des bisherigen Vektors: 30

%Bisheriger Vektor
vector = 30*dir;

%Pheromonwirkung nach unten rechts
vector = vector + Field_1(pos(1)-1,pos(2)-1)*[1;1]/sqrt(2); 
%Pheromonwirkung nach rechts
vector = vector + Field_1(pos(1),pos(2)-1)*[0;1]; 
%Pheromonwirkung nach oben rechts
vector = vector + Field_1(pos(1)-1,pos(2)-1)*[-1;1]/sqrt(2); 
%Pheromonwirkung nach oben
vector = vector + Field_1(pos(1)+1,pos(2))*[-1;0]; 
%Pheromonwirkung nach oben links
vector = vector + Field_1(pos(1)+1,pos(2)+1)*[-1;-1]/sqrt(2);  
%Pheromonwirkung nach links
vector = vector + Field_1(pos(1),pos(2)+1)*[0;-1]; 
%Pheromonwirkung nach unten links
vector = vector + Field_1(pos(1)-1,pos(2)+1)*[1;-1]/sqrt(2); 
%Pheromonwirkung nach unten
vector = vector + Field_1(pos(1)-1,pos(2))*[1;0];


%Vektor normieren

if norm(vector) ~= 0
    dir = vector/norm(vector);
else
    %dir bleibt gleich
end