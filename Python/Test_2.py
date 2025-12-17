# Ursprüngliches Array RAM1
RAM1 = [40, 42, 47, 52, 50, 60, 64, 66, 71]

# RAM2 doppelt so groß wie RAM1
RAM2 = [0] * 18  

# Falscher Programmcode
for i in range(9):   # läuft von 0 bis 8

    RAM2[i * 2 + 1] = RAM1[i]
    RAM2[i * 2] = i + 1

# Ausgabe der ersten 9 Werte
print(RAM2[:9])
