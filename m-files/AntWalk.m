% Ant-agent


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

% fi = mod(fi,2);

% Set Direction vector (dir)
x = round(cos(p * pi));
y = round(-sin(p * pi));
dir = [y;x];


% 
PheroDir;

% Index not out of bounds
if max(point + dir) < n && min(point + dir) > 1
    
    % Zuweisen der Koordinaten und des Winkels Phi
    pos(1:2,Index) = point + dir;
    phi(Index) = p;
    
    %Field(point(1),point(2)) = Field(point(1),point(2)) + 2;
else
    
    % other direction
    p = p + 1;
    
end



