```js

  find /chemin/vers/repertoire -type f -size +100M
```
```js
  wc -l file.txt
```
```js
  ps aux --sort=-%mem | head -n 11
```
```js
  tar -czvf archive.tar.gz /chemin/vers/repertoire
```
```js
  tail -n 10 -f fichier.log
```
```js
  awk '{ sum += $1 } END { print sum }' file.txt
```
```js
  pandoc fichier.md -o file.pdf //  convertir
```
```js
  ping -c 10 -i 2 adresse_ip
```
```js
  ps aux | grep nginx
```
```js
  find /chemin/vers/repertoire -type f | xargs -I {} commande {}
```
```js
  for file in *.txt; do mv "$file" "${file%.txt}.md"; done
//Convertir Tous les Fichiers d'un Type en un Autre :
 ```
```js
  ls /chemin/vers/repertoire > liste_fichiers.txt
//Créer une Liste des Fichiers dans un Répertoire
```
```js
  cut -d ',' -f 2 file.csv | sort -u
// Extraire des Données d'un Fichier CSV
```
```js
  bzip2 file.txt
//Compresser un Fichier en Utilisant Bzip2
```
```js
  commande > sortie.log 2>&1
//Rediriger la Sortie Standard et d'Erreurs dans un Fichier
```
```js
  ln -s chemin_vers_fichier lien_symbolique
//Créer un Lien Symbolique
```
```js
  sed -i 's/motif/remplacement/g' /chemin/vers/repertoire/*
//Éditer Tous les Fichiers dans un Répertoire en Utilisant Sed
```
```js
  find /chemin/vers/repertoire -type f -exec sed -i 's/motif/remplacement/g' {} +
//Trouver et Remplacer Récursivement dans des Fichiers
```
```js
  commande | awk '{count[$1]++} END {for (ip in count) print ip, count[ip]}'
//Grouper la Sortie d'une Commande en Fonction d'une Colonne
```
```js
  for fichier in *.txt; do commande "$fichier"; done
//Exécuter une Commande sur Tous les Fichiers Correspondants
```
```js
  df -h /chemin/vers/disque
//Afficher les Détails d'un Disque
```
```js
  sha256sum -c file.sha256
//Vérifier l'Intégrité d'un Fichier avec sha256sum
```
```js
  ssh -D 1080 utilisateur@serveur_ssh
//Créer un Tunnelling SSH Dynamique
```
```js
  sudo -u autre_utilisateur commande
//Exécuter une Commande dans le Contexte d'un Autre Utilisateur
```
```js
  watch -n 1 "du -sh /chemin/vers/repertoire"
//Surveiller l'Utilisation de l'Espace Disque en Temps Réel
```
```js
  tail -f /var/log/syslog > file.log
//Afficher les Erreurs Système dans un Fichier de Log
```




  






















```
