%Grundgerüst

%Vektorkonvention: [x;y] mit y horizontal von links nach rechts und x
%vertikal von oben nach unten.

%Initialisierungsphase

%Grösse des Pheromongitters
n = 100;

%Anzahl Ant-Agents
m = 1;

% Pheromongitter 1
Field_1 = zeros(n);

% optional mehrere Pheromongitter


%Startort aller Agents. (kann noch variiert werden)
base = floor([n/2;n/2]);

% Position der Ant-Agents
% pos(y-Koordinate,x-Koordinate,Index)
pos = zeros(3,m);

% Setzt Standort aller Agents auf der Startpunkt (base) 
for i = 1:m
    pos(1:2,i) = base;
end

% Standart-Drehwinkel-Faktor
turn = 0.25; 


%Simulationsphase
%Laufzeitbegrenzung kann angepasst werden
while 1 
    
    % Update Pheromon
    Pheromon1;
    
    
    for i = 1:m
        AntWalk;
    end
    
    
    FeldPlot;
    pause(0.01);
end