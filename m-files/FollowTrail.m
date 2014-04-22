%Folgt einer Spur auf Field_2
% Gibt p zurück
%Maximalfeld-Prinzip

dir = point+round([-sin(p * pi); cos(p * pi)]);
if max(dir) < n && min(dir) > 1
    %suche nach dem höchsten Pheromonwert (auf Field_2) in Bewegungsrichtung
    if dir(1) == point(1) %nach rechts oder links
        DirField = Field_2(dir(1),(dir(2)-1):(dir(2)+1));
        
        [row_val,row_ind] = max(DirField);
        if row_val > 0
            dir = (dir+[row_ind-2;0])-point;
        else
            dir = dir - point;
        end
        
    elseif dir(2) == point(2) %nach oben oder unten
        DirField = Field_2((dir(1)-1):(dir(1)+1),dir(2));
        
        [row_val,row_ind] = max(DirField);
        if row_val > 0
            dir = (dir+[0;row_ind-2])-point;
        else
            dir = dir - point;
        end
        
    else %nach oben rechts, oben links, unten rechts und unten links
        rel = dir - point;
        DirField = [Field_2(point(1),point(2)+rel(2));0;0];
        
        DirField(2)= Field_2(point(1)+rel(1),point(2)+rel(2));
        
        DirField(3)= Field_2(point(1)+rel(1),point(2));
        
        [row_val,row_ind] = max(DirField);
        
        rel = dir - point;
        
        if row_val > 0
            if row_ind == 1 %nach rechts oder links
                rel(1)=0;
                dir = rel;
            elseif row_ind == 3 %nach oben oder unten
                rel(2)=0;
                dir = rel; %diagonal weiter
            end
        else
            dir = rel;
        end
        
    end
    
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

clearvars rel dir row_val row_ind DirField