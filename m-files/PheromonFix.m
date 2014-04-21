% Informations-Pheromon: Field_0
% Gibt Standorte von Base und Food an
% Base = 1, Food = 2

Field_0(base(1),base(2)) = 1;
Field_0(food(1),food(2)) = 2;



% Abstossendes Pheromon: Field_1
% Stellt Hindernisse und Randwerte dar (z.B Räuber o.Ä)

Field_1(1:n,1:2) = 100;
Field_1(1:n,n-1:n) = 100;
Field_1(1:2,3:n-2) = 100;
Field_1(n-1:n,3:n-2) = 100;
