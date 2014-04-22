%Folgt einer Spur auf Field_2


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
        DirField = Field_2((dir(1)-1):(dir(1)+1),(dir(2)-1):(dir(2)+1));
        
        [row_val,row_ind] = max(DirField);
        [col_val,col_ind] = max(row_ind);
        
        if row_val > 0
            dir = [row_ind(col_ind);col_ind]-([2;2]-(dir-point));
        else
            dir = dir - point;
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

