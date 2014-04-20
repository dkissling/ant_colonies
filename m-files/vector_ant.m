j = 0;
n = 500;

Field = zeros(n,n);



while j < 1

    
    point = [n/2;n/2];
    dir = [0;1];
    
    turn = 1/4;
    phi = 0;
    
    i = 0;
    
    while i < 6000
        
        odd = rand(1);
        
        % fi durch Pheromon bestimmen
        
        if odd < 0.2
            phi = phi + turn;
        elseif odd < 0.4
            phi = phi - turn;
        else
            %straight
        end 
        
        % fi = mod(fi,2);
        
        % Set Direction vector
        x = round(sin(phi * pi));
        y = round(cos(phi * pi));
        dir = [x;y];
        
        
        % Index not out of bounds
        if max(point + dir) < n && min(point + dir) > 1
            point = point + dir;
            Field(point(1),point(2)) = Field(point(1),point(2)) + 2;
        else
            
            % other direction
            fi = fi + 1;
            
        end
       
        
        % pause(0.0001);

        i = i + 1;
        
        
        
    end

    j = j + 1;
    
end

image(Field);
colormap(jet);

