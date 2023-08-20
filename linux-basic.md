## Learn linux basic**

`ls`: Affiche les fichiers et dossiers dans le répertoire actuel.
```js
        ls -l
```
`cd`: Change le répertoire courant.
```js cd /dossier ```

`pwd`: Affiche le chemin complet du répertoire courant.
```js  pwd ```

`mkdir`: Crée un nouveau dossier.
```js    mkdir nouveau_dossier ```

`rm`: Supprime des fichiers ou dossiers.
```js  rm fichier.txt ```

`cp`: Copie des fichiers ou dossiers.
```js         cp fichier.txt destination/ ```

`mv`: Déplace ou renomme des fichiers ou dossiers.
```js        mv fichier.txt nouveau_nom.txt ```

`touch`: Crée un fichier vide.
```js touch new_file1.txt new_file2.txt new_file3.txt new_file4.txt new_file5.txt new_file6.txt ```

`cat`: Affiche le contenu d'un fichier.
```js cat file.txt ```

`echo`: Affiche du texte à l'écran.
```js    echo "Hello, World!" ```

`grep`: Recherche des motifs dans un fichier.
```js   grep "motif" fichier.tx ```

`find`: Recherche des fichiers et dossiers dans une arborescence.
```js   find /dossier -name "*.txt ```

`chmod`: Modifie les permissions d'accès aux fichiers.
```js   chmod +x script.sh ```

`chown`: Change le propriétaire d'un fichier ou dossier. 
```js   chown nouvel_utilisateur fichier.txt ```

`ps`: Affiche les processus en cours d'exécution.
```js   ps aux ```

`kill`: Termine un processus en cours.
```js   kill PID ```

`wget`: Télécharge des fichiers depuis Internet en ligne de commande.
```js   wget https://exemple.com/fichier.txt ```

`curl`: Effectue des requêtes HTTP et affiche la réponse.
```js   curl https://exemple.com ```

`tar`: Crée ou extrait des archives tar.
```js tar -cvf archive.tar dossier/ ```

`ssh``: Se connecte à un serveur distant en utilisant SSH. 
```js ssh utilisateur@serveur ```

`scp`: Copie des fichiers entre deux machines via SSH. 
```js scp fichier.txt utilisateur@serveur:~ ```

`sed`: Effectue des opérations de recherche et remplacement sur un flux de texte. 
```js sed 's/motif/remplacement/' fichier.txt ```

`awk`: Manipule et traite des données tabulaires dans un fichier texte. 
```js awk '{print $1}' fichier.txt ```

`sort`: Trie les lignes d'un fichier. 
```js   sort fichier.txt ```

`uniq`: Supprime les lignes en double consécutives d'un fichier. 
```js uniq fichier.txt ```

`head`: Affiche les premières lignes d'un fichier.
```js    head -n 10 fichier.txt ```

`tail`: Affiche les dernières lignes d'un fichier. 
```js   tail -n 5 fichier.txt ```

`date`: Affiche la date et l'heure actuelles. 
```js date ```

`cal`: Affiche un calendrier.
```js cal ```

`alias`: Crée un alias pour une commande.
```js   alias ll='ls -l' ```

`history`: Affiche l'historique des commandes précédemment exécutées.
```js    history ```

`chmod`: Modifie les permissions d'accès aux fichiers.
```js   chmod +x script.sh ```

`chown`: Change le propriétaire d'un fichier ou dossier.
```js   chown nouvel_utilisateur fichier.txt ```

`man`: Affiche le manuel d'utilisation d'une commande.
```js   man ls ```

`info`: Affiche les informations d'utilisation d'une commande.
```js   info cp ```

`df`: Affiche l'espace disque utilisé et disponible.
```js   df -h ```

`du`: Affiche l'espace disque utilisé par les fichiers et dossiers.
```js   du -sh dossier ```

`tar`: Crée ou extrait des archives tar.
```js   tar -cvf archive.tar dossier/ ```

`gzip`: Compresse ou décompresse des fichiers.
```js    gzip fichier.txt ```

`ssh`: Se connecte à un serveur distant en utilisant SSH.
```js   ssh utilisateur@serveur ```

`scp`: Copie des fichiers entre deux machines via SSH.
```js   scp fichier.txt utilisateur@serveur:~ ```

`sed`: Effectue des opérations de recherche et remplacement sur un flux de texte.
```js
   sed 's/motif/remplacement/' fichier.txt
```
`top`: Affiche les processus en cours d'exécution et leurs statistiques en temps réel.
```js
   top
```
`htop`: Une version plus avancée de top avec une interface utilisateur plus conviviale.
```js
   htop
```
`ping`: Envoie des paquets ICMP à une adresse IP pour vérifier la connectivité réseau.
```js
   ping google.com
```
`traceroute`: Affiche l'itinéraire pris par les paquets réseau vers une adresse IP.
```js
   traceroute google.com
```
`crontab`: Gère les tâches planifiées (cron jobs) pour exécuter des commandes à des moments précis.
```js
   crontab -e
```
`nc`: Établit des connexions réseau pour lire ou écrire des données.
```js
  nc -l 1234
```
`wget`: Télécharge des fichiers depuis Internet en ligne de commande.
```js
   wget https://exemple.com/fichier.txt
```
`export`: Définit une variable d'environnement.
```js export MA_VARIABLE=valeur ```

`unset` Supprime une variable d'environnement.
```js unset MA_VARIABLE ```

`source`: Exécute les commandes d'un fichier comme s'il s'agissait d'entrées directes.
```js  source script.sh ```

`shutdown` Arrête ou redémarre le système.
```js   shutdown -h now ```

`reboot` Redémarre le système.
```js    reboot ```

`ifconfig/ip`: Affiche les informations sur les interfaces réseau (ifconfig pour les anciennes versions, ip pour les plus récentes).
```js    ifconfig ou ip addr ```

`netstat` Affiche les statistiques réseau et les connexions en cours.
```js    netstat -an ```

** lsof: Liste les fichiers ouverts par les processus en cours d'exécution.
```js     lsof -i ```

`useradd`: Ajoute un nouvel utilisateur.
```js useradd nouveau_utilisateur ```

`usermod` Modifie les informations d'un utilisateur.
```js usermod -aG groupe utilisateur ```

`userdel`: Supprime un utilisateur.
```js userdel utilisateur ```

`passwd`: Change le mot de passe d'un utilisateur.
```js passwd utilisateur ```

`sudo`: Exécute une commande en tant qu'utilisateur superutilisateur (administrateur).
```js sudo commande ```

`su`: Change d'utilisateur ou se connecte en tant que superutilisateur.
```js su autre_utilisateur ```

`chroot`: Change le répertoire racine pour lancer des commandes dans un environnement isolé.
```js chroot /nouveau_chroot /bin/bash ```

`dd`: Copie et convertit des fichiers en utilisant des blocs de données.
```js dd if=/dev/zero of=fichier.bin bs=1M count=100 ```

`ln`: Crée des liens vers des fichiers.
```js ln -s fichier lien ```

`mount`: Montre un système de fichiers dans un répertoire.
```js mount /dev/sdb1 /mnt/usb ```

`umount`: Démonte un système de fichiers monté.
```js umount /mnt/usb ```

`uptime`: Affiche depuis combien de temps le système est en marche et la charge moyenne.
```js uptime ```

`last`: Affiche les connexions et déconnexions récentes des utilisateurs.
```js last ```

`killall`: Termine les processus par leur nom.
```js killall nom_processus ```

`bg`: Place un processus en arrière-plan.
```js bg ```

`fg`: Ramène un processus en premier plan.
```js fg ```

`jobs`: Affiche les tâches en arrière-plan.
```js jobs ```

`cron`: Planifie des tâches à exécuter à des moments spécifiques.
```js 0 2 * * * commande ``


`crontab`: Gère les tâches planifiées (cron jobs) pour exécuter des commandes à des moments spécifiques.
```js crontab -e ```
 
`at`: Planifie l'exécution d'une commande à un moment précis.
```js echo "commande" | at 15:00 ```

`nc`: Établit des connexions réseau pour lire ou écrire des données.
```js nc -l 1234 ```

`ssh-keygen`: Génère des paires de clés SSH.
```js ssh-keygen -t rsa ```

`ssh-copy-id`: Copie la clé SSH vers un serveur distant pour une connexion sans mot de passe.
```js ssh-copy-id utilisateur@serveur ```

`nohup`: Exécute une commande qui continue à s'exécuter même après la déconnexion.
```js nohup commande & ```

`watch`: Exécute périodiquement une commande et affiche les résultats mis à jour.
```js watch -n 1 commande ```

`history`: Affiche l'historique des commandes précédemment exécutées.
```js history ```

`grep`: Recherche des motifs dans un fichier.
```js grep "motif" fichier.txt ```

`find`: Recherche des fichiers et dossiers dans une arborescence.
```js find /dossier -name "*.txt" ```

`wc`: Compte le nombre de lignes, de mots et de caractères dans un fichier.
```js wc fichier.txt ```

`sort`: Trie les lignes d'un fichier.
```js sort fichier.txt ```

`uniq`: Supprime les lignes en double consécutives d'un fichier.
```js uniq fichier.txt ```

`cut`: Coupe des sections de chaque ligne d'un fichier.
```js  cut -d',' -f1 fichier.csv ```

`paste`: Colle ensemble les lignes de plusieurs fichiers.
```js paste fichier1.txt fichier2.txt ```

`diff`: Compare deux fichiers et affiche les différences entre eux.
```js diff fichier1.txt fichier2.txt ```

** `paste`: Colle ensemble les lignes de plusieurs fichiers.
    Exemple : `paste fichier1.txt fichier2.txt`

** `diff`: Compare deux fichiers et affiche les différences entre eux.
    Exemple : `diff fichier1.txt fichier2.txt`

