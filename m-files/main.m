%Grundgerüst

%Vektorkonvention: [x;y] mit y horizontal von links nach rechts und x
%vertikal von oben nach unten.

%Initialisierungsphase


%Grösse des Pheromongitters
n = 100;

%Anzahl Ant-Agents
m = 3;

% Pheromongitter
Field_0 = zeros(n); %Nahrung und Base
Field_1 = zeros(n); %Hindernisse und Feinde
Field_2 = zeros(n); %Spur der Nahrungssuche

% optional mehrere Pheromongitter


%Startort aller Agents. (kann noch variiert werden)
base = floor([n/2;n/2]);

%Position der Nahrung (randomisiert)
food = rand(2,1);

% Werte der Ant-Agents
% pos(y-Koordinate,x-Koordinate)
pos = zeros(2,m);
phi = 2*rand(1,m);
carries_food = zeros(1,m);

% Setzt Standort aller Agents auf der Startpunkt (base) 
for Index = 1:m
    pos(1:2,Index) = base;
end

% Standart-Drehwinkel-Faktor
turn = 1/5; 

% Drehwahrscheinlichkeit
turn_odd = 0.2;

momentum = 10;

PheromonFix;


%Simulationsphase
%Laufzeitbegrenzung kann angepasst werden
while 1 
    
    % Update Pheromon
    %Pheromon1; %Wird im Moment nicht benötigt
       
    for Index = 1:m
        if carries_food(Index) == 0
            %Sucht nach Nahrung
             AntWalk;
        else
            %Kehrt zur Base zurück
        end
    end
    
    
    Field_Plot;
    pause(0.1);
end