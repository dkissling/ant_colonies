%Grundgerüst

%Vektorkonvention: [x;y] mit y horizontal von links nach rechts und x
%vertikal von oben nach unten.

%Initialisierungsphase
n = 100; %Grösse des Pheromongitters
m = 1; %Anzahl Ant-Agents

Feld1 = zeros(n); % Pheromongitter 1
% optional mehrere Pheromongitter

base = floor([n/2;n/2]); %Startort aller Agents (kann noch variiert werden)
pos = zeros(3,m);     % pos(y-Koordinate,x-Koordinate,Index)
for i = 1:m
    pos(1:2,i) = base;
end

turn = 0.25; %Gibt den Standart-Drehwinkel an
phi = 0; %Starwinkel


%Simulationsphase

while 1  %Laufzeitbegrenzung kann angepasst werden
    Pheromon1;
    
    for i = 1:m
        AntWalk;
    end
    
    FeldPlot;
    pause(0.01);
end