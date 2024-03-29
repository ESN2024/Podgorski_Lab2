
# Présentation :

L'objectif de ce TP est de créer un compteur grâce à l’utilisation d’un timer. La valeur de comptage devra être affichée sur 3 afficheurs 7 segments. Le système devra donc pouvoir compter jusqu’à 999.

# Architecture du système

![image](https://github.com/ESN2024/Podgorski_Lab2/assets/145102054/85e9e694-52ae-4a0e-9089-682669b29a4f)


Le système est composé de :
•	Un processeur Nios II
•	Une mémoire RAM
•	Une horloge
•	Un JTAG UART
•	3 PIOs 4 bits qui contrôleront les afficheurs 7 segments
•	Un Timer avec une période de 1s.

# Configuration matérielle :

![image](https://github.com/ESN2024/Podgorski_Lab2/assets/145102054/f6dffa55-78e1-4e6d-afa8-ac714bb2b9c0)


Afin de configurer le FPGA, nous avons créé le fichier Qsys ci-dessus qui contient toute la description matérielle de notre système.
Nous avons ensuite créé un fichier vhdl « BCD_2_7SEG » qui contient un décodeur, ainsi que notre fichier top-level « seven_seg_counter.vhd » qui instanciera 3 décodeurs (1 par afficheur 7 segments) et une fois les composants décrits dans le fichier Qsys.
Après la mise en place des connections entre les signaux d’entrées-sorties et les broches physiques du FPGA dans le pin planner, et une compilation sans erreur, nous pouvons maintenant flasher le bitstream sur la carte.
Le FPGA est maintenant configuré comme on le souhaite, il ne reste plus qu’à créer le software lié au système et le télécharger sur la carte.

# Implémentation logicielle :

Nous allons maintenant créer notre fichier main.c
Toutes les secondes, le timer déclenchera une routine d’interruption dans laquelle la valeur de comptage sera incrémentée et affichée sur les afficheurs 7 segments.

# Initialisation du contenu de la RAM :

En suivant la procédure d'initialisation du contenu de la RAM dans le cours d'ESN10, le programme main.c se lance automatiquement sur la carte lorsque l'on flash le bitstream sur cette dernière.

# Vidéo :



https://github.com/ESN2024/Podgorski_Lab2/assets/145102054/130d1ca7-253d-42b0-a925-42f1d288f44a



# Conclusion :

En résumé, ce projet de création d'un compteur sur la carte de10lite a été une magnifique expérience. Un timer déclenche une routine d'interruption toutes les secondes qui incrémente la valeur de comptage affichée sur trois afficheurs 7 segments. Ce projet m'a permis de perfectionner mes connaissances des interruptions, des timers, et des afficheurs 7 segments.


