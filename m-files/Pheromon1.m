% Zellulärer Automat zur Simulation der Pheromone

%Field_u = zeros(n+2,n+2);
%Field_u(1:n,2:n+1) = max(0,floor(Field_1/2));
%Field_r = zeros(n+2,n+2);
%Field_r(2:n+1,3:n+2) = max(0,floor(Field_1/2));
%Field_d = zeros(n+2,n+2);
%Field_d(3:n+2,2:n+1) = max(0,floor(Field_1/2));
%Field_l = zeros(n+2,n+2);
%Field_l(2:n+1,1:n) = max(0,floor(Field_1/2));

% Lineare Abnahme bis 0
%Field_1 = Field_1 -1;
    
%Field_1 = max(Field_1,Field_u(2:n+1,2:n+1));
%Field_1 = max(Field_1,Field_r(2:n+1,2:n+1));
%Field_1 = max(Field_1,Field_d(2:n+1,2:n+1));
%Field_1 = max(Field_1,Field_l(2:n+1,2:n+1));

Field_2 = max(Field_2 - 0.01*pheromon_maximum,0);

