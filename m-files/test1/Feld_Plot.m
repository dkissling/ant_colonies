%PLOT Feld

MAP = zeros (n,3);
MAP (1:n,1) =  1 - (1:n)/n;
MAP (1:n,2) = 1 - (1:n)/n;
MAP (1:n,3) = 1 - (1:n)/n;
image(Feld)
colormap(jet);