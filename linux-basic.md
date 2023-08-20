## Learn linux basic**

`ls`: Affiche les fichiers et dossiers dans le répertoire actuel.
```js
        ls -l
```
`cd`: Change le répertoire courant.
```js
        cd /dossier
        cd $HOME
        cd $USER
```

`pwd`: Affiche le chemin complet du répertoire courant.
```js
        pwd
```

`mkdir`: Crée un nouveau dossier.
```js    
        mkdir new-directory
        mkdir repertoire1 repertoire2 repertoire3
        mkdir -m permissions nom_du_repertoire
        mkdir $HOME/nouveau_repertoire
        
```
`rm`: Supprime des fichiers ou dossiers.
```js
        rm file.txt
        rm fichier1 fichier2 fichier3
        rm -r nom_du_repertoire
        rm -i nom_du_fichier
        rm -f nom_du_fichier
        rm -f *.txt
        rm -rf nom_du_repertoire
```

`cp`: Copie des fichiers ou dossiers.
```js         
        cp file.txt path/to/path
        cp fichier1 fichier2 repertoire_de_destination // copie plusieurs file dans répertoire
        cp -r nom_du_repertoire repertoire_de_destination // copie le contenu de répertoire aussi
        cp -i nom_du_fichier repertoire_de_destination // demander la permission
        cp -f fichier_source repertoire_de_destination


```
`mv`: Déplace ou renomme des fichiers ou dossiers.
```js   
        mv file.txt new_file.txt
mv nom_du_fichier chemin_de_destination
mv fichier1 fichier2 repertoire_de_destination
mv -r nom_du_repertoire repertoire_de_destination
mv -f fichier_source repertoire_de_destination // Déplacer en Écrasant les Fichiers Existants
mv ancien_nom chemin_de_destination/nouveau_nom // Déplacer et Renommer un Fichier
mv ancien_chemin/nom_du_repertoire nouveau_chemin/nouveau_nom //Déplacer un Répertoire en Changeant de Nom
```
`touch`: Crée plusieurs fichiers vides.
```js 
        touch new_file1.txt new_file2.txt 
        touch -t YYYYMMDDhhmm nom_du_fichier
```
`cat`: Affiche le contenu d'un fichier.
```js 
        cat file.txt
        cat fichier1 fichier2 fichier3
        cat fichier_source > nouveau_fichier // copy
        cat fichier_source >> fichier_destination // Ajout du Contenu d'un Fichier à la Fin d'un Autre Fichier
        cat -n nom_du_fichier // avec num de lignes
        cat -v nom_du_fichier //Affichage des Caractères non Imprimables
        cat fichier1 fichier2 > fichier_combine
```
`echo`: Affiche du texte à l'écran.
```js    
        echo "Hello, World!"
        echo "Contenu du fichier" > nom_du_fichier // copie le texte
        echo "Nouveau contenu" >> nom_du_fichier // ajouter le texte à la fin de fichier
        echo -n "Texte sans saut de ligne" // afficher le texte sans saute de ligne
        echo 'Ceci est un guillemet simple: '\'' ' //Échapper les Caractères Spéciaux
```        
`grep`: Recherche des motifs dans un fichier.
```js   
        grep "motif" file.tx
        grep -r "motif" répertoire         //recherche recusive
        grep -i "motif" fichier.txt         //Recherche Insensible à la Casse
        grep -c "motif" fichier.txt         //Compter les Occurrences de Motifs
        grep -v "motif" fichier.txt         //Afficher les Lignes sans Correspondance
        grep -n "motif" fichier.txt         //Afficher le Numéro de Ligne
        grep -E "\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b" fichier.txt
        grep -f motifs.txt fichier.txt
```
`find`: Recherche des fichiers et dossiers dans une arborescence.
```js   
        find /dossier -name "*.txt
        find chemin/vers/repertoire -name "*.extension"
        find chemin/vers/repertoire -size +Xc         //recherche par taille
        find chemin/vers/repertoire -type f          //fichiers réguliers
        find chemin/vers/repertoire -type d          //répertoires
        find chemin/vers/repertoire -type l          //liens symboliques
        find chemin/vers/repertoire -mtime -X         //Recherche de Fichiers Modifiés Récemment
        find chemin/vers/repertoire -user nom_du_proprietaire
        find chemin/vers/repertoire -name "*.extension" -exec rm {} \; # execution de la commande apres la recherche
```
`chmod`: Modifie les permissions d'accès aux fichiers.
```js   
        chmod +x script.sh && chmod 600 script.sh
        chmod +w nom_du_fichier           //Ajouter la permission d'écriture
        chmod -r nom_du_fichier           //Supprimer la permission de lecture
        chmod -R 755 nom_du_repertoire
        chmod u+x nom_du_fichier
        find chemin/vers/repertoire -type f -exec chmod 644 {} \;
        find chemin/vers/repertoire -type d -exec chmod 755 {} \;

```
`chown`: Change le propriétaire d'un fichier ou dossier. 
```js   
        chown new_user file.txt
```
`ps`: Affiche les processus en cours d'exécution.
```js   
        ps aux
        ps aux | grep nom_utilisateur
        ps aux | grep nom_du_programme
        ps auxl // afficher le processus avec plus de détail
        ps aux --sort=-%mem // Afficher les Processus avec des En-têtes de Colonnes
        top // Afficher la Charge du CPU et de la Mémoire
```
`kill`: Termine un processus en cours.
```js   
        kill PID
        kill -9 PID
        kill -g GID
        kill -u USERNAME
        kill -l // lister les signaux disponibles
        kill -10 PID

```
`wget`: Télécharge des fichiers depuis Internet en ligne de commande.
```js   
        wget https://google.com/file.txt
        wget  https://google.com/file.txt -O nom_du_fichier_local(file-local.txt)
        wget -r URL_du_site_web # recursive downloads
        wget -r --level=1 URL_du_site_web
        wget --user=USERNAME --password=PSSWORD URL_du_fichier_protégé
        wget --header="Nom-En-Tête: Valeur" URL_du_fichier
        wget -c URL_du_fichier                         //continue le téléchargement interempu
        wget --limit-rate=100k URL_du_fichier          //limite la vitesse de telechargement
        wget --input-file=liens.txt         //Téléchargement à Partir d'un Fichier de Liens 
        wget --no-check-certificate URL_du_fichier      //ignore les certificats SSL
        wget -b URL_du_fichier                          //téléchargement en arriere plan
        wget --proxy=adresse_du_proxy URL_du_fichier    //Téléchargement avec Proxy
        
```
`curl`: Effectue des requêtes HTTP et affiche la réponse.
```js   
        curl https://exemple.com
        curl -O URL_du_fichier         //téléchargement de fichier
        curl -o nom_du_fichier_local URL_du_fichier
        curl -d "parametre1=valeur1&parametre2=valeur2" -X POST URL_du_serveur
        curl -H "Nom-En-Tête: Valeur" URL_de_la_page         //Ajout d'En-têtes Personnalisés
        curl -L URL_avec_redirection                //Suivre les Redirections :
        curl -u USERNAME:PASSWORD URL_du_fichier_protégé
        curl -F "file=@chemin/path/to/file" URL_du_serveur         //Envoi de Fichiers via POST

```
`tar`: Crée ou extrait des archives tar.
```js 
        tar -cvf archive.tar dossier/
        tar -cvf archive.tar fichier1 fichier2 dossier1         //Création d'une Archive Tar
        tar -xvf archive.tar # extraction
        tar -xvf archive.tar -C chemin/vers/repertoire
        tar -tvf archive.tar         //Liste du Contenu d'une Archive Tar
        tar -czvf archive.tar.gz fichier1 fichier2 dossier1      //Compression d'une Archive avec gzip
        tar -xzvf archive.tar.gz         //Extraction d'une Archive Tar Compressée avec gzip
        tar -cjvf archive.tar.bz2 fichier1 fichier2 dossier1         //Compression d'une Archive avec bzip2
```
`ssh`: Se connecte à un serveur distant en utilisant SSH. 
```js 
        ssh -i "key.pub" user@127.0.0.1
        ssh -p port utilisateur@adresse_ip
        ssh utilisateur@adresse_ip "commande à exécuter"
        sftp utilisateur@adresse_ip         //transfert de fichier securisé

        # Forward local port 8080 to remote port 80
        ssh -L 8080:localhost:80 user@IP
        # Forward remote port 3306 to local port 3306
        ssh -R 3306:localhost:3306 user@IP
```
`scp`: Copie des fichiers entre deux machines via SSH. 
```js 
        scp file.txt user@serveur:~
        scp file.txt user@IP:/path/to/destination/
        scp user@IP:/chemin/vers/source/fichier.txt /chemin/vers/destination/
        scp -r dossier_local user@IP:/path/vers/destination/
        scp -r user@IP:/chemin/vers/source/dossier distant_dossier_local
        rsync -av --exclude='file_exclu' /path/to/source/dossier/ user@IP:/path/vers/dest/        //Exclure Certains File/Dir
        scp -P port file.txt user@IP:/path/to/destination/

```
`sed`: Effectue des opérations de recherche et remplacement sur un flux de texte. 
```js 
        sed 's/motif/remplacement/' fichier.txt
        sed 's/ancien_motif/nouveau_motif/g' fichier.txt 
        sed '/motif/d' file.txt         //Suppression de Lignes Correspondant à un Motif
        sed '/motif/i Nouveau texte' fichier.txt         //Ajout de Texte Avant ou Après une Ligne
        sed '/motif/a Nouveau texte' fichier.txt         //ajouter du texte après une ligne contenant un motif, utilisez
        sed 's/^.\{n\}//' fichier.txt         //Suppression de Caractères en Début de Ligne

```
`awk`: Manipule et traite des données tabulaires dans un fichier texte. 
```js 
        awk '{print $1}' file.txt
        awk -F ',' '{print $2, $3}' file.csv
        awk '{sum += $1} END {print "Total =", sum}' file.txt
        awk '/motif/ {print}' file.txt
        awk '{sub("ancien_motif", "nouveau_motif"); print}' file.txt
        awk '$1 > 10 {print}' file.txt
        awk '{sum += $1; count++} END {print "Moyenne =", sum/count}' file.txt

```
`sort`: Trie les lignes d'un fichier. 
```js   
        sort fichier.txt
        sort -n file.txt                 //tri ordre numeric
        sort -r file.txt                 //tri ordre decroissant
        sort -k2 file.txt                //tri colonne 2
        sort -s file.txt                 //Tri Stabilisé :
        sort -f file.txt                 //Tri Ignorant la Casse
        sort -t":" -k2 fichier.txt       //tri spécifique
        cat fichier.txt | sort -k2,2 -k1,1
```
`uniq`: Supprime les lignes en double consécutives d'un fichier. 
```js  
        uniq fichier.txt
        uniq nom_du_fichier > fichier_sortie_unique    //Supprimer les Lignes Dupliquées d'un Fichier
        uniq -c nom_du_fichier         //Compter les Occurrences de Lignes :
        uniq -w num nom_du_fichier         //Supprimer les Espaces en Début de Ligne Avant Comparaison
        uniq -s num nom_du_fichier         //Afficher les Lignes Uniques Ignorant un Nombre de Caractères
```
`head`: Affiche les premières lignes d'un fichier.
```js  
        head -n 10 fichier.txt
        head -qn 1 nom_du_fichier         //Afficher les Lignes avec des En-têtes de Colonnes
        head fichier1 fichier2
        ls -l | head
```
`tail`: Affiche les dernières lignes d'un fichier. 
```js   
        tail -n 5 fichier.txt
        tail -f nom_du_fichier         //suivre en temps reel les ajouts dans le fichier
        tail fichier1 fichier2
        ls -l | tail
```
`date`: Affiche la date et l'heure actuelles. 
```js 
        date
        date +"%Y-%m-%d %H:%M:%S"
        date -R                 //Afficher la Date au Format RFC 2822 
        date -u                 //Afficher l'Heure en UTC
        date +"%A"              //Afficher le Jour de la Semaine
        TZ="America/New_York" date 
        
```
`cal`: Affiche un calendrier.
```js 
        cal
        cal -m 9        //afficher le calandarier avec des mois spécifiques
        cal 2023        //Afficher le Calendrier d'une Année Spécifique 
        cal -m 9 2023   //Afficher le Calendrier d'un Mois et d'une Année Spécifiques
        cal -y 2023     //Afficher le Calendrier d'une Année avec les Jours de la Semaine 
        cal -h          //Afficher le Calendrier avec le Jour Actuel Surligné 
```
`alias`: Crée un alias pour une commande.
```js   
        alias ll='ls -l'
        nano ~/.bashrc
        source ~/.bashrc
```
`history`: Affiche l'historique des commandes précédemment exécutées.
```js    
        history
        history -n 20
        !5                 //executer la commande à partir de l'historique , suffit justre le numéro
        history | grep "motif"
        history -d 5         // delete spécific

```

`info`: Affiche les informations d'utilisation d'une commande.
```js   
        info cp
```
`df`: Affiche l'espace disque utilisé et disponible.
```js   
        df -h
```
`du`: Affiche l'espace disque utilisé par les fichiers et dossiers.
```js   
        du -sh dossier
```


`htop`: Une version plus avancée de top avec une interface utilisateur plus conviviale.
```js
   htop
```
`ping`: Envoie des paquets ICMP à une adresse IP pour vérifier la connectivité réseau.
```js
        ping google.com
        ping -i 2 adresse_ip_ou_nom_d_hote // délai d'attente spécifique
        ping -s 1000 adresse_ip_ou_nom_d_hote //Ping avec une Taille de Paquet Personnalisée
        ping -D adresse_ip_ou_nom_d_hote // Ping avec Affichage des Temps de Réponse
        ping -t adresse_ip_ou_nom_d_hote // ping en continu

```
`traceroute`: Affiche l'itinéraire pris par les paquets réseau vers une adresse IP.
```js
        traceroute google.com
        traceroute -I adresse_ip_ou_nom_d_hote
        traceroute -m 15 adresse_ip_ou_nom_d_hote //Traceroute avec un Nombre Limité de Sauts
        traceroute -z 1 adresse_ip_ou_nom_d_hote //Traceroute avec Affichage des Temps de Latence
        traceroute -U adresse_ip_ou_nom_d_hote //Traceroute en Utilisant des Protocoles Spécifiques
        traceroute -U -p 12345 adresse_ip_ou_nom_d_hote

```
`crontab`: Gère les tâches planifiées (cron jobs) pour exécuter des commandes à des moments précis.
```js
        crontab -e
        0 0 * * * /chemin/vers/script.sh
        crontab -l //Vérifier la Liste des Tâches Cron
        crontab -r // Supprimer la Table des Tâches Cron
        
```

`unset` Supprime une variable d'environnement.
```js 
        unset MA_VARIABLE
```
`source`: Exécute les commandes d'un fichier comme s'il s'agissait d'entrées directes.
```js  
        source script.sh
```

`ifconfig/ip`: Affiche les informations sur les interfaces réseau (ifconfig pour les anciennes versions, ip pour les plus récentes).
```js    
        ifconfig ou ip addr
        ifconfig eth0
        ifconfig eth0 up         //Activer  une Interface Réseau
        ifconfig eth0 down       // desactiver
        ifconfig eth0 192.168.1.10 netmask 255.255.255.0 //Configurer une Adresse IP Manuellement
        ifconfig eth0 hw ether 00:11:22:33:44:55         //Configurer une Adresse MAC (Adresse Physique) Manuellement
        ifconfig eth0 promisc         //Activer ou Désactiver le Mode Promiscuous
        ifconfig eth0 -promisc         //Pour désactiver le mode promiscuous
```
`nc`: Établit des connexions réseau pour lire ou écrire des données.
```js
        nc -l 1234
        nc -l -p 12345 -v -k -e /bin/cat       //Créer un Serveur Écho TCP
        nc adresse_ip_du_serveur 12345         //Se Connecter à un Serveur TCP :
        nc -u -l -p 54321                      //Créer un Serveur UDP Écoutant :
        nc -l -p 12345 > fichier_recu.txt      //Transférer un Fichier entre Deux Machines
        nc adresse_ip_réceptrice 12345 < fichier_local.txt         //Sur la machine émettrice
        nc -zv IP 80          //Scanner un Port pour la Connectivité
```
`netstat` Affiche les statistiques réseau et les connexions en cours.
```js    
        netstat -an
        netstat -tuln         //Afficher les Connexions Réseau Actives
        netstat -i            //Afficher les Statistiques de l'Interface Réseau
        netstat -r            //Afficher les Tables de Routage
        netstat -i 2          //Afficher les Statistiques d'Interface en Continu
        netstat -tuln -p      //Afficher les Informations sur les Processus Liés aux Ports :
        netstat -tuln -6      //Afficher les Informations sur les Connexions IPv6
        
```
** lsof: Liste les fichiers ouverts par les processus en cours d'exécution.
```js     
        lsof -i
        lsof -p 12345                    //Afficher les Fichiers Ouverts par un Processus Spécifique 
        lsof -u utilisateur              //Afficher les Fichiers Ouverts par un Utilisateur
        lsof fichier.txt                 //Afficher les Fichiers Ouverts par un Fichier Spécifique 
        lsof +D /chemin/vers/repertoire  //Afficher les Fichiers Ouverts sur un Répertoire
        lsof -t /var/log/*.log           //Afficher les Fichiers Ouverts par Type :

```
`useradd`: Ajoute un nouvel utilisateur.
```js 
        useradd nouveau_utilisateur
```
`usermod` Modifie les informations d'un utilisateur.
```js 
        usermod -aG groupe utilisateur
```
`userdel`: Supprime un utilisateur.
```js 
        userdel utilisateur
```
`passwd`: Change le mot de passe d'un utilisateur.
```js 
        passwd utilisateur
```
`sudo`: Exécute une commande en tant qu'utilisateur superutilisateur (administrateur).
```js 
        sudo commande
```
`su`: Change d'utilisateur ou se connecte en tant que superutilisateur.
```js 
        su autre_utilisateur
```
`chroot`: Change le répertoire racine pour lancer des commandes dans un environnement isolé.
```js 
        chroot /nouveau_chroot /bin/bash
```
`dd`: Copie et convertit des fichiers en utilisant des blocs de données.
```js 
        dd if=/dev/zero of=fichier.bin bs=1M count=100
```
`ln`: Crée des liens vers des fichiers.
```js 
        ln -s fichier lien
```
`mount`: Montre un système de fichiers dans un répertoire.
```js 
        mount /dev/sdb1 /mnt/usb
```
`umount`: Démonte un système de fichiers monté.
```js 
        umount /mnt/usb
```
`uptime`: Affiche depuis combien de temps le système est en marche et la charge moyenne.
```js 
        uptime
```
`last`: Affiche les connexions et déconnexions récentes des utilisateurs.
```js 
        last
```
`killall`: Termine les processus par leur nom.
```js 
        killall nom_processus
```
`bg`: Place un processus en arrière-plan.
```js 
        bg
```
`fg`: Ramène un processus en premier plan.
```js 
        fg
```
`jobs`: Affiche les tâches en arrière-plan.
```js 
        jobs
```
`cron`: Planifie des tâches à exécuter à des moments spécifiques.
```js
        0 2 * * * commande 
```
`crontab`: Gère les tâches planifiées (cron jobs) pour exécuter des commandes à des moments spécifiques.
```js 
        crontab -e
``` 
`at`: Planifie l'exécution d'une commande à un moment précis.
```js 
        echo "commande" | at 15:00
```
`nc`: Établit des connexions réseau pour lire ou écrire des données.
```js 
        nc -l 1234
```
`ssh-keygen`: Génère des paires de clés SSH.
```js 
        ssh-keygen -t rsa
```
`ssh-copy-id`: Copie la clé SSH vers un serveur distant pour une connexion sans mot de passe.
```js 
        ssh-copy-id utilisateur@serveur
```
`nohup`: Exécute une commande qui continue à s'exécuter même après la déconnexion.
```js 
        nohup commande &
```
`watch`: Exécute périodiquement une commande et affiche les résultats mis à jour.
```js watch -n 1 commande ```
`history`: Affiche l'historique des commandes précédemment exécutées.
```js 
        history
```
`grep`: Recherche des motifs dans un fichier.
```js 
        grep "motif" fichier.txt
```
`find`: Recherche des fichiers et dossiers dans une arborescence.
```js 
        find /dossier -name "*.txt"
```
`wc`: Compte le nombre de lignes, de mots et de caractères dans un fichier.
```js 
wc fichier.txt
```
`sort`: Trie les lignes d'un fichier.
```js 
        sort fichier.txt
```
`uniq`: Supprime les lignes en double consécutives d'un fichier.
```js 
        uniq fichier.txt
```
`cut`: Coupe des sections de chaque ligne d'un fichier.
```js  
        cut -d',' -f1 fichier.csv
```
`paste`: Colle ensemble les lignes de plusieurs fichiers.
```js 
        paste fichier1.txt fichier2.txt
```
`diff`: Compare deux fichiers et affiche les différences entre eux.
```js 
        diff fichier1.txt fichier2.txt
```
`paste`: Colle ensemble les lignes de plusieurs fichiers.
```js
        paste fichier1.txt fichier2.txt
```
`diff`: Compare deux fichiers et affiche les différences entre eux.
```js 
        diff fichier1.txt fichier2.txt
```
