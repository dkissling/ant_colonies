% Zellulaerer Automat zur Simulation der Pheromone

% Field_up = zeros(n+2,n+2);
% Field_up(1:n,2:n+1) = max(0,floor(Phero_Field_Food/2));
% Field_right = zeros(n+2,n+2);
% Field_right(2:n+1,3:n+2) = max(0,floor(Phero_Field_Food/2));
% Field_down = zeros(n+2,n+2);
% Field_down(3:n+2,2:n+1) = max(0,floor(Phero_Field_Food/2));
% Field_left = zeros(n+2,n+2);
% Field_left(2:n+1,1:n) = max(0,floor(Phero_Field_Food/2));

% Lineare Abnahme bis 0
Phero_Field_Food = max(Phero_Field_Food - 0.001*phero_max,0);
    
% Phero_Field_Food = max(Phero_Field_Food,Field_up(2:n+1,2:n+1));
% Phero_Field_Food = max(Phero_Field_Food,Field_right(2:n+1,2:n+1));
% Phero_Field_Food = max(Phero_Field_Food,Field_down(2:n+1,2:n+1));
% Phero_Field_Food = max(Phero_Field_Food,Field_left(2:n+1,2:n+1));


% Zellulaerer Automat zur Simulation der Pheromone

% Field_up = zeros(n+2,n+2);
% Field_up(1:n,2:n+1) = max(0,floor(Phero_Field_Base/2));
% Field_right = zeros(n+2,n+2);
% Field_right(2:n+1,3:n+2) = max(0,floor(Phero_Field_Base/2));
% Field_down = zeros(n+2,n+2);
% Field_down(3:n+2,2:n+1) = max(0,floor(Phero_Field_Base/2));
% Field_left = zeros(n+2,n+2);
% Field_left(2:n+1,1:n) = max(0,floor(Phero_Field_Base/2));

% Lineare Abnahme bis 0
Phero_Field_Base = max(Phero_Field_Base - 0.001*phero_max,0);
%     
% Phero_Field_Base = max(Phero_Field_Base,Field_up(2:n+1,2:n+1));
% Phero_Field_Base = max(Phero_Field_Base,Field_right(2:n+1,2:n+1));
% Phero_Field_Base = max(Phero_Field_Base,Field_down(2:n+1,2:n+1));
% Phero_Field_Base = max(Phero_Field_Base,Field_left(2:n+1,2:n+1));



% clearvars Field_up Field_down Field_left Field_right;
