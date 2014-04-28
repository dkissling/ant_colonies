% Ant-agent

% lokale Position und Richtung
location = std_ants(1:2,Index);
phi = ants_phi(Index);


% Falls der Ant-agent Nahrung traegt
if carrying_food(Index) == 1
    
    % Findet zurück zur Base
    if Field_Base_Food(location(1),location(2)) == 1
        
        % Die Ameise kehrt in den Suchmodus zurück
        carrying_food(Index) = 0;
        
        % Dieser Wert kann je nach Nahrungsquelle angepasst werden.
        food_count = food_count + 1;
        
        % Die Ameise wendet
        phi = mod(phi + 1,2);
        
        phero_strength(Index) = phero_max;
    else
        
        % TODO:
        LookForBase;
        Phero_Field_Food(location(1),location(2)) = Phero_Field_Food(location(1),location(2)) + phero_strength(Index);
        
        phero_strength(Index) = max(phero_strength(Index) - 0.02*phero_max,0);
    end
    
else
    
    % Findet Nahrung
    if Field_Base_Food(location(1),location(2)) == 2
        
        %Die Ameise trägt nun Nahrung
        carrying_food(Index) = 1;
        
        %Die Pheromonstärke wird zurückgesetzt
        phero_strength(Index) = phero_max;
        
        %Die Ameise wendet
        phi = mod(phi + 1,2);
        
        
    % Hat noch keine Nahrung gefunden
    else
        
        % TODO:
        LookForFood;
        Phero_Field_Base(location(1),location(2)) = Phero_Field_Base(location(1),location(2)) + phero_strength(Index);
        
        %Die Pheromonstärke nimmt ab
        phero_strength(Index) = max(phero_strength(Index) - 0.02 * phero_max,0);        
        
    end
    
end




% Definiert die neue Richtung (direction)
direction = round([-sin(phi * pi); cos(phi * pi)]);

% Die neue Position ist innerhalb des Gitters, sonst Spiegelung
if max(location + direction) < n && min(location + direction) > 1
 
    % Setzt den neuen Standort
    std_ants(1:2,Index) = location + direction;
    
% X-Achsen-Spiegelung
elseif location(2) + direction(2) < n && location(2) + direction(2) > 1
    phi = mod(2 - phi,2);
    
% Y-Achsen-Spiegelung
else
    phi = mod(1 - phi,2);
end

% Setzt den neuen Winkel
ants_phi(Index) = phi;

clearvars phi location direction