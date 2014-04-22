%Folgt einer Spur auf Field_2
% Gibt p zurück
% Durchschnitts-Prinzip

dir = point+round([-sin(p * pi); cos(p * pi)]);
vector = [0;0];
if max(dir) < n && min(dir) > 1
    %suche nach dem höchsten Pheromonwert (auf Field_2) in Bewegungsrichtung
    if dir(1) == point(1) %nach rechts oder links
        
        for i = -1:1
            vector = vector + Field_2(dir(1),dir(2)+i)*[i;dir(2)-point(2)];
        end
        
    elseif dir(2) == point(2) %nach oben oder unten
        
        for i = -1:1
            vector = vector + Field_2(dir(1)+i,dir(2))*[dir(1)-point(1);i];
        end
        
    else %nach oben rechts, oben links, unten rechts und unten links
        
        rel = dir - point;
        for i = 0:1
            for j = 0:1
                if i ~= 0 || j ~=0
                    vector = vector + Field_2(point(1)+i*rel(1),point(2)+j*rel(2))*[i*rel(1);j*rel(2)]/norm([i*rel(1);j*rel(2)]);
                end
            end
        end
    end
    dir = vector;
    %Verhindert Null-Vektoren
    if norm(dir) ~= 0
        
        dir = dir/norm(dir);        
        p = atan2(-dir(1),dir(2))/pi;
        p = mod(p,2);
    else
        % p (phi) bleibt gleich
    end
    
else
    %PheroDir;
end

clearvars rel dir vector