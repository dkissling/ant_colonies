% Ant-agent for searching food


point = pos(1:2,Index);
p = phi(Index);


odd = rand(1);


if odd < turn_odd
    p = p + turn;
elseif odd < 2*turn_odd
    p = p - turn;
else
    %straight
end


% Ändert p (phi) falls nötig
PheroDir;

% Definiert direction und ändert p (phi)
direction = round([-sin(p * pi); cos(p * pi)]);

%Pheromonspur (während Suchvorgang):

Field_2(point(1),point(2)) = Field_2(point(1),point(2))+pheromon_strength(Index);



% Index not out of bounds
if max(point + direction) < n && min(point + direction) > 1
    
    % Zuweisen der Koordinaten und des Winkels Phi
    pos(1:2,Index) = point + direction;
    
    
       
    
    % X-Achsen-Spiegelung
elseif point(2) + direction(2) < n && point(2) + direction(2) > 1
    
    p = mod(2 - p,2);
    
    % Y-Achsen-Spiegelung
else
    
    p = mod(1 - p,2);
end


% Findet Nahrung
if Field_0(pos(1,Index),pos(2,Index)) == 2
    %Die Pheromonstärke wird zurückgesetzt
    pheromon_strength(Index) = pheromon_maximum;
    %Die Ameise trägt nun Nahrung
    carries_food(Index) = 1;
    %Die Ameise wendet
    phi(Index) = mod(p + 1,2);
    
    % Hat keine Nahrung gefunden
else
    %Die Pheromonstärke nimmt ab
    pheromon_strength(Index) = max(pheromon_strength(Index) - 0.02*pheromon_maximum,0);
    %Der Ameisenwinkel phi wird auf den neusten stand gebracht
    phi(Index) = p;
end


