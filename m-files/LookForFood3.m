% Folgt einer Spur auf Phero_Field_Food
% Gibt phi zurück
% Maximal-prinzip

olddir = round([-sin(phi * pi); cos(phi * pi)]);
dircent = location + olddir;
oldloc = [2;2] - olddir;
if max(dircent) < n && min(dircent) > 1
    %suche nach den höchsten Pheromonwerten um location
    dirfield = Phero_Field_Food(dircent(1)-1:dircent(1)+1,dircent(2)-1:dircent(2)+1);
    if max(max(dirfield)) > 0
        maxi = zeros(3,1);
        maxi(2:3,1) = [2;2];
        for i = 1:3
            for j = 1:3
                if oldloc(1) ~= i && oldloc(2) ~= j && dirfield(i,j) > maxi(1,1)
                    maxi(1:3,1) = [dirfield(i,j);i;j];
                end
            end
        end
        dir = [maxi(2,1)-oldloc(1);maxi(3,1)-oldloc(2)];
        %Verhindert Null-Vektoren
        %norm(dir) ~= 0
        
        dir = dir/norm(dir);
        phinew = atan2(-dir(1),dir(2))/pi;
        %phi = mod((phinew + phi)/2,2);
        phi = phinew;
        
        
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

clearvars dir maxi dirfield odd phinew dircent oldloc olddir