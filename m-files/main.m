%Grundgerüst

%Vektorkonvention: [x;y] mit y horizontal von links nach rechts und x
%vertikal von oben nach unten.

%Initialisierungsphase


%Grösse des Pheromongitters
n = 200;

%Anzahl Ant-Agents
m = 11;

% Pheromongitter 1
Field_1 = zeros(n);

% optional mehrere Pheromongitter


%Startort aller Agents. (kann noch variiert werden)
base = floor([n/2;n/2]);

% Position der Ant-Agents
% pos(y-Koordinate,x-Koordinate)
pos = zeros(2,m);
phi = 2*rand(1,m);

% Setzt Standort aller Agents auf der Startpunkt (base) 
for Index = 1:m
    pos(1:2,Index) = base;
end

% Standart-Drehwinkel-Faktor
turn = 1/8; 

% Drehwahrscheinlichkeit
turn_odd = 0.1;

momentum = 0;


%Simulationsphase
%Laufzeitbegrenzung kann angepasst werden
while 1 
    
    % Update Pheromon
    Pheromon1;
    
    
    for Index = 1:m
        AntWalk;
    end
    
    
    Field_Plot;
    pause(0.001);
end