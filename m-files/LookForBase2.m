% Folgt einer Spur auf Phero_Field_Food
% Gibt phi zurück
% Vektor-Prinzip: sucht die zwei pheromon-maxima auf den umliegenden
% feldern und versucht diesem vektor zu folgen:

dir = [0;0];
if max(location) < n && min(location) > 1
    %suche nach den höchsten Pheromonwerten um location
    dirfield = Phero_Field_Base(location(1)-1:location(1)+1,location(2)-1:location(2)+1);
    if max(max(dirfield)) > 0
        maxi = zeros(3,2);
        maxi(2:3,1) = [2;2];
        maxi(2:3,2) = [2;2];
        for i = 1:3
            for j = 1:3
                if dirfield(i,j) > maxi(1,1)
                    maxi(1:3,2) = maxi(1:3,2);
                    maxi(1:3,1) = [dirfield(i,j);i;j];
                elseif dirfield(i,j) > maxi(1,2)
                    maxi(1:3,2) = [dirfield(i,j);i;j];
                end
            end
        end
        dir = [maxi(2,1)-maxi(2,2);maxi(3,1)-maxi(3,2)];
        %Verhindert Null-Vektoren
        %norm(dir) ~= 0
        
        dir = dir/norm(dir);
        phinew = atan2(-dir(1),dir(2))/pi;
        phinew = mod(phi,2);
        
        if abs(phinew-phi) < 0.5
            phi = phinew;
        else
            phi = mod(phinew+1,2);
        end
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

clearvars dir maxi dirfield odd phinew