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

    %     MAP = zeros (100,3);
    %     MAP (1:100,1) =  1;
    %     MAP (1:100,2) = 1 - (1:n)/n;
    %     MAP (1:100,3) = 1 - (1:n)/n;


       % pause(0.0001);

        i = i + 1;
    end

    j = j + 1;
    
end

image(Field);
colormap(jet);