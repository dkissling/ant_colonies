# Modell 1

Man geht von einem diskreten Umfeld aus. Auf jedem Feld kann maximal eine Ameise sitzen. Weiter hat jedes Feld ein Pheromonwert.
Es wird eine Matrix generiert für die Ameisen und eine für Pheromone. Die Stärke der Peromone reduziert sich pro Zeitintervall. 
Die Ameisen bewegen sich pro Zeitintervall jeweils um ein Schritt nach links, rechts, oben, unten. Es werden zwei verschiedene Pheromone
eingesetzt, eines zur Nahrungssignalisierung und das andere zur Markirung der Basis.

**Ziel:** Ziel ist es, dass Ameisen - ausgehend von der Basis - eine Nahrungsquelle finden und anschliessend wieder zur Basis zurückfinden.

Dies gliedert sich in zwei Teilaufgaben:

* Nahrungssuche (Suchalgorithmus)
* Weg zurück zur Basis finden

**Matrix:** 100x100  
**Pheromon:** Pheromone "färben" mit der Hälfte ihres Wertes auf die umliegenden Felder ab. Weiter reduziert sich ihr Wert pro Zeiteinheit.
**Ameise:** Ameise kann in vier Richtungen laufen.

## Weiterführung

In einem zweiten Schritt soll das Modell der Bewegung der Ameise, sowie der Suchalgorithmus implementiert werden. Weiter soll die 
Pheromonreduktion mathematisch modelliert werden. 
