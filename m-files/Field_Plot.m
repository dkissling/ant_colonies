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
subplot(1,2,2);
image(Phero_Field_Food);
hold on
for i = 1:nr_ants
    if carrying_food(i) == 0
        plot(std_ants(2,i),std_ants(1,i),'kx');
        hold on
    else
        plot(std_ants(2,i),std_ants(1,i),'ro');
        hold on
    end
end
plot(std_ant_init(2),std_ant_init(1),'gd');
hold on
plot(std_food(2),std_food(1),'ys');
hold off


%Plot Field_2: (plus base and Food)
subplot(1,2,1);
image(Phero_Field_Base);
hold on
for i = 1:nr_ants
    if carrying_food(i) == 0
        plot(std_ants(2,i),std_ants(1,i),'kx');
        hold on
    else
        plot(std_ants(2,i),std_ants(1,i),'ro');
        hold on
    end
end
plot(std_ant_init(2),std_ant_init(1),'gd');
hold on
plot(std_food(2),std_food(1),'ys');
hold off
text(1,-4,['Food-counter=',num2str(food_count)]);
text(50,-4,['Total of carrying Ants=',num2str(sum(carrying_food))]);
text(100,-4,['Time=',num2str(sum(time))]);

clearvars i