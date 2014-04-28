% Folgt einer Spur auf Phero_Field_Food
% Gibt phi zurück
% Durchschnitts-Prinzip

dir = location+round([-sin(phi * pi); cos(phi * pi)]);
vector = [0;0];
if max(dir) < n && min(dir) > 1
    %suche nach dem höchsten Pheromonwert (auf Phero_Field_Food) in Bewegungsrichtung
    if dir(1) == location(1) %nach rechts oder links
        
        for i = -1:1
            vector = vector + Phero_Field_Food(dir(1),dir(2)+i)*[i;dir(2)-location(2)];
        end
        
    elseif dir(2) == location(2) %nach oben oder unten
        
        for i = -1:1
            vector = vector + Phero_Field_Food(dir(1)+i,dir(2))*[dir(1)-location(1);i];
        end
        
    else %nach oben rechts, oben links, unten rechts und unten links
        
        rel = dir - location;
        for i = 0:1
            for j = 0:1
                if i ~= 0 || j ~=0
                    vector = vector + Phero_Field_Food(location(1)+i*rel(1),location(2)+j*rel(2))*[i*rel(1);j*rel(2)]/norm([i*rel(1);j*rel(2)]);
                end
            end
        end
    end
    dir = vector;
    %Verhindert Null-Vektoren
    if norm(dir) ~= 0
        
        dir = dir/norm(dir);        
        phi = atan2(-dir(1),dir(2))/pi;
        
    else
        % phi erlebt einen kleinen random_walk
        
        odd = rand(1);
        
        if  odd < ant_turn_odd
            phi = phi + ant_turn;
        elseif odd < 2 * ant_turn_odd
            phi = phi - ant_turn;
        else
            %straight
        end 
    end
end
phi = mod(phi,2);
clearvars rel dir vector odd