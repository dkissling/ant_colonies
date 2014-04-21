% Stellt Hindernisse und Randwerte dar (z.B Räuber o.Ä)
% Abstossendes Pheromon: Field_1

Field_1(1:n,1:2) = 100;
Field_1(1:n,n-1:n) = 100;
Field_1(1:2,3:n-2) = 100;
Field_1(n-1:n,3:n-2) = 100;
