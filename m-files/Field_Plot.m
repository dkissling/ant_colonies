%PLOT Feld

%Farboption
%MAP_0 = [0 0 1; 0 1 0; 1 0 0];

%Farboption
%MAP_1 = zeros (n,3);
%MAP_1 (1:n,1) =  1 - (1:n)/n;
%MAP_1 (1:n,2) = 1 - (1:n)/n;
%MAP_1 (1:n,3) = 1 - (1:n)/n;

%Farboption
%MAP_2 = zeros (n,3);
%MAP_2 (1:n,1) =  1 - (1:n)/n;
%MAP_2 (1:n,2) = 1 - (1:n)/n;
%MAP_2 (1:n,3) = 1 - (1:n)/n;

figure(1);
colormap(jet);

%Plot Field_0:
%subplot(2,2,1);
%image(Field_0);
%colormap(MAP_0);
%hold on
%for i = 1:m
%	plot(pos(2,i),pos(1,i),'kx');
%    hold on
%end
%hold off

%Plot Field_1:
%subplot(1,2,1);
%image(Field_1);
%hold on
%for i = 1:m
%	plot(pos(2,i),pos(1,i),'kx');
%    hold on
%end
%hold off

%Plot Field_2: (plus base and Food)
subplot(1,1,1);
image(Field_2);
hold on
for i = 1:m
	plot(pos(2,i),pos(1,i),'kx');
    hold on
end
plot(base(2),base(1),'gd');
hold on
plot(food(2),food(1),'ys');
hold off
text(1,-4,['Food-counter=',num2str(food_counter)]);

