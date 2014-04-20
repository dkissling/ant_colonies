j = 0;
n = 500;

Field = zeros(n,n);



while j < 40

    
    point = [n/2;n/2];
    dir = [0;1];
    
    turn = 1/2;
    fi = 0;
    
    i = 0;
    
    while i < 6000
        
        odd = rand(1);
        
        % fi durch Pheromon bestimmen
        
        if odd < 0.2
            fi = fi + turn;
        elseif odd < 0.4
            fi = fi - turn;
        else
            %straight
        end 
        
        % fi = mod(fi,2);
        
        x = round(sin(fi * pi));
        y = round(cos(fi * pi));
        dir = [x;y];
        
        
        if max(point + dir) < n && min(point + dir) > 1
            point = point + dir;
            Field(point(1),point(2)) = Field(point(1),point(2)) + 2;
        else
            fi = fi + 1;
            
        end
       
        
        %pause(0.00001);

        i = i + 1;
        
        
        
    end

    j = j + 1;
    
end

image(Field);
colormap(jet);
