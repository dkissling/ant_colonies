%Grundgerüst

%Vektorkonvention: [x;y] mit y horizontal von links nach rechts und x
%vertikal von oben nach unten.

%Initialisierungsphase


%Grösse des Pheromongitters
n = 100;

%Anzahl Ant-Agents
m = 10;

% Pheromongitter
Field_0 = zeros(n); %Nahrung und Base (Umgebende Pheromone)
Field_1 = zeros(n); %Hindernisse und Feinde
Field_2 = zeros(n); %Spur der Nahrungssuche

% optional mehrere Pheromongitter


%Startort aller Agents. (kann noch variiert werden)
base = floor([n/2;n/2]);

%Position der Nahrung (randomisiert)
food = 4+round((n-8)*rand(2,1));

%Anzahl Nahrungseinheiten, die zurück zur Base gebracht wurden
food_counter = 0;

% Werte der Ant-Agents
% pos(y-Koordinate,x-Koordinate)
pos = zeros(2,m);
phi = 2*rand(1,m);
carries_food = zeros(1,m);

% Zu Beginn des Such-Zyklus sind die gestreuten Pheromone stärker und
% nehmen mit der Zeit ab.

% Maximal gestreute Pheromon-stärke
pheromon_maximum = 5;
% Pheromonstärke individuell pro Ant-agent
pheromon_strength = pheromon_maximum*ones(1,m);

% Setzt Standort aller Agents auf der Startpunkt (base) 
for Index = 1:m
    pos(1:2,Index) = base;
end

% Standart-Drehwinkel-Faktor
turn = 1/10; 

% Drehwahrscheinlichkeit
turn_odd = 0.1;

momentum = 10;

PheromonFix;


%Simulationsphase
%Laufzeitbegrenzung kann angepasst werden
while 1 
    
    % Regelt Pheromonabnahme
    Pheromon1; 
       
    for Index = 1:m
        if carries_food(Index) == 0
            %Sucht nach Nahrung
             AntWalk;
        else
            %Kehrt zur Base zurück
            BringBack;
        end
    end
    
    
    Field_Plot;
    pause(0.05);
end