i = 0;
j = 0;
n = 500;

Field = zeros(n,n);



while j < 40

    x = n/2;
    y = n/2;
    
    i = 0;
    
    while i < 6000
        
        dir = floor(4*rand(1));

        if dir == 0
            x = x + 1;
        elseif dir == 1
            y = y + 1;
        elseif dir == 2
            x = x - 1;
        elseif dir == 3
            y = y - 1;
        end

        Field(x,y) = Field(x,y) + 2;


       % pause(0.0001);

        i = i + 1;
    end

    j = j + 1;
    
end

image(Field);
colormap(jet);