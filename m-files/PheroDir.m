%PheroDir


%Gesammtvektor aus allen umliegenden Pheromon-Feldern
%Wird zu p umgerechnet


%Wert des bisherigen Vektors: momentum
%Bisheriger Vektor
vector = momentum*[-sin(p * pi);cos(p * pi)];

for i = -1:1
    for j = -1:1
        if i ~= 0 || j ~=0
         vector = vector + Field_1(point(1)+i,point(2)+j)*[-i;-j]/norm([i;j]);
        end
    end
end

%Ausgabe des Winkelfaktors p (phi)

if norm(vector) ~= 0
    vector = vector/norm(vector);        
    p = atan2(-vector(1),vector(2))/pi;
    p = mod(p,2);
    
        
else
    %p bleibt gleich
end

