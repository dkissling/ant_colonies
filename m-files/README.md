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

## Die Ameise

### Random Ant

Diese Ameise mach zufällig einen Richtungswechsel in eine der vier 
Hauptrichtungen. Jede Richtung ist gleich wahrscheinlich.

### Vector Ant

Die Ameise hat einen Richtungsvektor. Dieser ändert sich nur mit einer 
bestimmten Wahrscheinlichkeit. D.h. die Ameise ändert ihre Richtung z.B. nur 
alle 40%. Ändert sie diese, so um einen bestimmten Winkel (Phi). Durch die 
Variation dieses Winkels ist die Ameise nicht nur in vier Richtungen begrenzt.

## Weiterführung

In einem zweiten Schritt soll das Modell der Bewegung der Ameise, sowie der Suchalgorithmus implementiert werden. Weiter soll die 
Pheromonreduktion mathematisch modelliert werden. 
