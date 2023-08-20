```js

  find /chemin/vers/repertoire -type f -size +100M

  wc -l fichier.txt

  ps aux --sort=-%mem | head -n 11

  tar -czvf archive.tar.gz /chemin/vers/repertoire

  tail -n 10 -f fichier.log

  awk '{ sum += $1 } END { print sum }' fichier.txt

  pandoc fichier.md -o fichier.pdf //  convertir

  ping -c 10 -i 2 adresse_ip

  ps aux | grep nginx

  find /chemin/vers/repertoire -type f | xargs -I {} commande {}

  for fichier in *.txt; do mv "$fichier" "${fichier%.txt}.md"; done //Convertir Tous les Fichiers d'un Type en un Autre :

  ls /chemin/vers/repertoire > liste_fichiers.txt //Créer une Liste des Fichiers dans un Répertoire

  cut -d ',' -f 2 fichier.csv | sort -u // Extraire des Données d'un Fichier CSV

  bzip2 fichier.txt //Compresser un Fichier en Utilisant Bzip2

  commande > sortie.log 2>&1 //Rediriger la Sortie Standard et d'Erreurs dans un Fichier

  ln -s chemin_vers_fichier lien_symbolique //Créer un Lien Symbolique

  sed -i 's/motif/remplacement/g' /chemin/vers/repertoire/*  //Éditer Tous les Fichiers dans un Répertoire en Utilisant Sed

  find /chemin/vers/repertoire -type f -exec sed -i 's/motif/remplacement/g' {} + //Trouver et Remplacer Récursivement dans des Fichiers

  commande | awk '{count[$1]++} END {for (ip in count) print ip, count[ip]}' //Grouper la Sortie d'une Commande en Fonction d'une Colonne

  for fichier in *.txt; do commande "$fichier"; done //Exécuter une Commande sur Tous les Fichiers Correspondants

  df -h /chemin/vers/disque //Afficher les Détails d'un Disque

  sha256sum -c fichier.sha256 //Vérifier l'Intégrité d'un Fichier avec sha256sum

  ssh -D 1080 utilisateur@serveur_ssh //Créer un Tunnelling SSH Dynamique

  sudo -u autre_utilisateur commande //Exécuter une Commande dans le Contexte d'un Autre Utilisateur
 //Surveiller l'Utilisation de l'Espace Disque en Temps Réel
  watch -n 1 "du -sh /chemin/vers/repertoire"
  //Afficher les Erreurs Système dans un Fichier de Log
  tail -f /var/log/syslog > fichier.log 

  






















```
