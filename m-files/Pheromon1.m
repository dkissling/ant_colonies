% Zellulärer Automat zur Simulation der Umgebungsvariable 
% Feld1

feldu = zeros(n+2,n+2);
feldu(1:n,2:n+1) = max(0,floor(Feld/2));
feldr = zeros(n+2,n+2);
feldr(2:n+1,3:n+2) = max(0,floor(Feld/2));
feldd = zeros(n+2,n+2);
feldd(3:n+2,2:n+1) = max(0,floor(Feld/2));
feldl = zeros(n+2,n+2);
feldl(2:n+1,1:n) = max(0,floor(Feld/2));

Feld1 = Feld1 -1;
    
Feld1 = max(Feld1,feldu(2:n+1,2:n+1));
Feld1 = max(Feld1,feldr(2:n+1,2:n+1));
Feld1 = max(Feld1,feldd(2:n+1,2:n+1));
Feld1 = max(Feld1,feldl(2:n+1,2:n+1));

%Sicherheitsrand
Feld1(1:n,1) = 100;
Feld1(1:n,n) = 100;
Feld1(1,2:n-1) = 100;
Feld1(n,2:n-1) = 100;
