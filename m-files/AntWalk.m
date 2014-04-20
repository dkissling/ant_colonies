% Ant-agent


point = pos(1:2,Index);
p = phi(Index);


odd = 0.1; %rand(1);


if odd < turn_odd
    p = p + turn;
elseif odd < 2*turn_odd
    p = p - turn;
else
    %straight
end

% phi = mod(fi,2);

% Definiert dir und ändert p (phi)
PheroDir;

direction = round([-sin(p * pi); cos(p * pi)]);

Field_1(point(1),point(2)) = 50;

% Index not out of bounds
if max(point + direction) < n && min(point + direction) > 1
    
    % Zuweisen der Koordinaten und des Winkels Phi
    pos(1:2,Index) = point + direction;
    
    
    %Field(point(1),point(2)) = Field(point(1),point(2)) + 2;
else
    
    % other direction
    p = mod(p + 1,2);
    
end

phi(Index) = p;



