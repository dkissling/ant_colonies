% Informations-Pheromon: Field_Base_Food
% Gibt Umgebung von Base und Food an
% Base = 1, Food = 2

Field_Base_Food(std_ant_init(1) - 3:std_ant_init(1) + 3,std_ant_init(2) - 3:std_ant_init(2) + 3) = 1;
Field_Base_Food(std_food(1) - 3:std_food(1) + 3,std_food(2) - 3:std_food(2) + 3) = 2;



% Abstossendes Pheromon: Field_Fence
% Stellt Hindernisse und Randwerte dar (z.B Räuber o.Ä)

Field_Fence(1:n,1:2) = 100;
Field_Fence(1:n,n-1:n) = 100;
Field_Fence(1:2,3:n-2) = 100;
Field_Fence(n-1:n,3:n-2) = 100;

% Abstossendes Feld um Base:
%Field_Fence(std_ant_init(1) - 2:std_ant_init(1) + 2,std_ant_init(2) - 2:std_ant_init(2) + 2) = 25;
%Field_Fence(std_ant_init(1) - 1:std_ant_init(1) + 1,std_ant_init(2) - 1:std_ant_init(2) + 1) = 50;

%Trail following experiment
Phero_Field_Food(1:60,70) = 50;
for i = 1:40
    Phero_Field_Food(i,i) = 50;
end