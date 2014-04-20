%PLOT Feld

%Farboption
%MAP = zeros (n,3);
%MAP (1:n,1) =  1 - (1:n)/n;
%MAP (1:n,2) = 1 - (1:n)/n;
%MAP (1:n,3) = 1 - (1:n)/n;


image(Field_1);
colormap(jet);
hold on
for i = 1:m
	plot(pos(2,i),pos(1,i),'kx');
    hold on
end
hold off