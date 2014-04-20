% Zellulärer Automat zur Simulation der Umgebungsvariablen (hauptsächlich
% Pheromone).
% Testversion 1

n = 100;
Feld = zeros(n,n);

AntNr = 1; %Indexzahl der Ameise
base = floor([n/2;n/2]); %Koordinaten der Basis
pos = base; %Aufenthaltsort der Ameise
olddir = [0;1];

while 1
    
    Feld = Feld -1;
    feldu = zeros(n+2,n+2);
    feldu(1:n,2:n+1) = max(0,floor(Feld/2));
    feldr = zeros(n+2,n+2);
    feldr(2:n+1,3:n+2) = max(0,floor(Feld/2));
    feldd = zeros(n+2,n+2);
    feldd(3:n+2,2:n+1) = max(0,floor(Feld/2));
    feldl = zeros(n+2,n+2);
    feldl(2:n+1,1:n) = max(0,floor(Feld/2));
    
    Feld = max(Feld,feldu(2:n+1,2:n+1));
    Feld = max(Feld,feldr(2:n+1,2:n+1));
    Feld = max(Feld,feldd(2:n+1,2:n+1));
    Feld = max(Feld,feldl(2:n+1,2:n+1));
    
    %Feld(1,1:n) = -1;
    %Feld(n,1:n) = -1;
    %Feld(2:n-1,1) = -1;
    %Feld(2:n-1,n) = -1;
    
    
    AntWalk_test1;
    
    Feld_Plot;
    pause(0.1);
end