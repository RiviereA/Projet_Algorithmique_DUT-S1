# Projet d'Algorithmique (DUT S1)

## Description du projet

Ce projet consistait en la réalisation d'un petit jeu de type Aventure textuelle en mode console. Le langage utilisé était le Pascal.

## Contenu du programme

Au niveau programmation, il a été demandé de réaliser **deux** programmes différents implémentés en Pascal.

### Une version minimale

Le premier programme attendu consiste en une version "minimale" du jeu attendu. il fallait donc réaliser un jeu de type Aventure textuelle dont la seule interface avec l'utilisateur serait la console. Dans ce jeu, le joueur incarnera un personnage dont l'objectif principal est de survivre et de récolter des ressources Le jeu débute par un menu et, durant une partie, le personnage doit pouvoir se rendre dans trois lieux distincts :
* une maison,
* une forêt,
* une mine.

**Le menu initial** propose à l'utilisateur plusieurs choix dont ceux de commencer une
partie et de quitter. Le jeu revient automatiquement à ce menu à la fin d'une partie.

**Dans la maison**, le joueur peut :
* dormir pour recharger sa santé,
* déposer ses ressources (pierre, bois et fer) dans un coffre.

**Dans la forêt**, le joueur peut :
* récolter du bois,
* rencontrer un commerçant auquel il pourra vendre ou acheter des ressources et des objets (dont au moins une arme et une armure),

**Dans la mine**, le joueur peut :
* récolter de la pierre,
* chercher du fer et le récolter s'il en trouve,
* rencontrer un monstre qu'il affrontera.

**La phase de combat** se déroule au tour par tour et l'équipement du personnage a une influence sur celui-ci.

### Une version améliorée

Des améliorations aux choix parmi une liste ont été fournies. Voici celles qui ont été aportés pour la nouvelle version :
* **La cave** : Un lieu où sont stockées des potions qui peuvent être bu, permettant d'obtenir des bonus ou
des malus en fonction de la potion.
* **Le crafting** : Donne la possibilité de fabriquer des armures et de nouveaux équipements seulement disponible après avoir récolter suffisamment de ressources.
* **Boss Final** : Un boss final du nom de Freud peut être confronté, s'il est vaincu il lâche de puissant équipements, mais qui sont invendable. Si le combat est perdu, c'est la fin de la partie.
* **Affichage de la localisation** : Le joueur sait tout le temps où il se trouve
* **Nouvelles ressources a collecter** : Permet la fabrication de nouveaux objets permettant de terrasser les différents monstres avec plus de facilités ou bien la fabrication d'objets plus utiles en dehors des combats.
