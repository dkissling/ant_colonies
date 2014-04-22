% Informations-Pheromon: Field_0
% Gibt Umgebung von Base und Food an
% Base = 1, Food = 2

Field_0(base(1)-2:base(1)+2,base(2)-2:base(2)+2) = 1;
Field_0(food(1)-2:food(1)+2,food(2)-2:food(2)+2) = 2;



% Abstossendes Pheromon: Field_1
% Stellt Hindernisse und Randwerte dar (z.B Räuber o.Ä)

Field_1(1:n,1:2) = 100;
Field_1(1:n,n-1:n) = 100;
Field_1(1:2,3:n-2) = 100;
Field_1(n-1:n,3:n-2) = 100;

% Abstossendes Feld um Base:
Field_1(base(1)-2:base(1)+2,base(2)-2:base(2)+2) = 25;
Field_1(base(1)-1:base(1)+1,base(2)-1:base(2)+1) = 50;
