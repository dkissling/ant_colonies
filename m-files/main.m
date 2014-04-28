% Ant-colonies Simulation


% Vektorkonvention: [x;y] mit y horizontal von links nach rechts und x
% vertikal von oben nach unten.


% Initialisierungsphase
% =====================

% Grösse des Gitters
n = 100;


% Position der Nahrungsquelle
std_food = 4+round((n-8)*rand(2,1));

% Anzahl Nahrungseinheiten, die zurück zur Base gebracht wurden
food_count = 0;


% Anzahl Ant-Agents
nr_ants = 20;

% Startort aller Agents.
std_ant_init = floor([n/2;n/2]);

% Initialisierung der Ant-Agents
std_ants = zeros(2,nr_ants);

% Startwinkel
ants_phi = 2*rand(1,nr_ants);

% Standart-Drehwinkel
ant_turn = 1/10; 

% Drehwahrscheinlichkeit
ant_turn_odd = 0.05;

% Wertung der Eigenrichtung
ant_momentum = 10;

% Traegt der Ant-Agent Nahrung
carrying_food = zeros(1,nr_ants);

% Setzt Standort aller Agents auf der Startpunkt (std_ant_init) 
for Index = 1:nr_ants
    std_ants(1:2,Index) = std_ant_init;
end




% Maximal gestreute Pheromonstaerke
phero_max = 5;

% Pheromonstaerke individuell pro Ant-agent
phero_strength = phero_max * ones(1,nr_ants);

% Pheromongitter Nahrung
Phero_Field_Food = zeros(n);

% Pheromongitter Basis
Phero_Field_Base = zeros(n);

% Nahrung und Base (Umgebende Pheromone)
Field_Base_Food = zeros(n);

% Hindernisse und Feinde
Field_Fence = zeros(n);



% Setzt Pheromone
SetPheromons;


% Simulationsphase
while 1 
    
    % Regelt Pheromonabnahme / -verbreitung
    PheromonModel; 
    
    
    for Index = 1:nr_ants
        
        % Ant-agent ausführen
        AntAgent;
        
        % (Gegner ausführen)
        % ...
    
    end
    
    % Feld zeichnen
    Field_Plot;
    pause(0.05);
end