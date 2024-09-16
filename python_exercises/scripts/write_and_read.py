with open("nimi.txt", 'r') as cont:
    cont.read()

    for line in cont:
        print(line)

with open("nimi.txt", 'a') as file:
    file.write(" Vaarti")