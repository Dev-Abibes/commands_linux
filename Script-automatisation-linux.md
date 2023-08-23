`Script de sauvegarde`
Automatisez la sauvegarde de fichiers importants vers un emplacement sécurisé.
```js
#!/bin/bash
rsync -avz /chemin/source /chemin/destination
```
`Script de nettoyage du système`
Automatisez la suppression des fichiers temporaires et inutiles.
```js
#!/bin/bash
rm -rf /tmp/* /var/tmp/*
```
`Script de surveillance du disque`
Automatisez la surveillance de l'espace disque et envoyez des alertes si l'espace est faible.
```js
#!/bin/bash
THRESHOLD=90
if [ "$(df -h | awk '{print $5}' | tail -n 1 | sed 's/%//')" -gt "$THRESHOLD" ]; then
    echo "Low disk space! Please investigate." | mail -s "Disk Space Alert" admin@example.com
fi
```
`Script de mise à jour du système`
Automatisez les mises à jour du système et des paquets.
```js
#!/bin/bash
sudo apt update
sudo apt upgrade -y
```
`Script de surveillance du service`
Automatisez la surveillance d'un service et redémarrez-le si nécessaire.
```js
#!/bin/bash
SERVICE="apache2"
if systemctl is-active --quiet $SERVICE; then
    echo "$SERVICE is running."
else
    systemctl start $SERVICE
    echo "$SERVICE was restarted."
fi
```
`Script de renommage de fichiers`
Automatisez le renommage en lot de fichiers selon un modèle.
```js
#!/bin/bash
for file in *.txt; do
    mv "$file" "prefix_$file"
done
```
`Script de copie de sauvegarde vers le cloud`
Automatisez la copie de fichiers vers un stockage cloud.
```js
#!/bin/bash
rsync -avz /chemin/source user@remote:/chemin/destination
```
`Script de surveillance de l'utilisation CPU`
Automatisez la surveillance de l'utilisation CPU et envoyez des alertes si elle dépasse un seuil.
```js
#!/bin/bash
THRESHOLD=90
if [ "$(top -bn1 | awk '/Cpu/ {print $2}' | cut -d. -f1)" -gt "$THRESHOLD" ]; then
    echo "High CPU usage! Please investigate." | mail -s "CPU Usage Alert" admin@example.com
fi
```
`Script de sauvegarde de base de données` 
Automatisez la sauvegarde d'une base de données.
```js
#!/bin/bash
DB_USER="username"
DB_PASS="password"
DB_NAME="database"
BACKUP_DIR="/backup"
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/backup.sql
```
`Script de rotation des journaux`
Automatisez la rotation des fichiers journaux pour éviter de saturer l'espace disque.
```js
#!/bin/bash
LOG_DIR="/var/log"
for log_file in $LOG_DIR/*.log; do
    mv "$log_file" "$log_file.$(date +%Y%m%d)"
done
```

`Script de sauvegarde incrémentielle`
Automatisez la sauvegarde en utilisant des sauvegardes incrémentielles pour économiser de l'espace.
```js
#!/bin/bash
BACKUP_DIR="/backup"
rsync -avz --link-dest=$BACKUP_DIR/previous_backup /source_data $BACKUP_DIR/$(date +%Y%m%d)
```

`Script de surveillance de la mémoire` 
Automatisez la surveillance de l'utilisation de la mémoire et envoyez des alertes en cas de débordement.
```js
#!/bin/bash
THRESHOLD=90
if [ "$(free -m | awk '/Mem/ {print $3/$2 * 100}' | cut -d. -f1)" -gt "$THRESHOLD" ]; then
    echo "High memory usage! Please investigate." | mail -s "Memory Usage Alert" admin@example.com
fi
```
`Script de création d'utilisateur`
Automatisez la création d'un nouvel utilisateur avec un ensemble de permissions.
```js
#!/bin/bash
USERNAME="newuser"
PASSWORD="password"
useradd -m -p $(openssl passwd -1 $PASSWORD) $USERNAME
```
`Script de sauvegarde vers un serveur distant`
Automatisez la sauvegarde vers un serveur distant via SSH.
```js
#!/bin/bash
SOURCE_DIR="/source_data"
DESTINATION_SERVER="user@remote"
DESTINATION_DIR="/backup"
rsync -avz $SOURCE_DIR $DESTINATION_SERVER:$DESTINATION_DIR
```
`Script de journalisation`
Automatisez la journalisation de certaines actions, par exemple, enregistrer les détails des fichiers modifiés.
```js
#!/bin/bash
LOG_FILE="/var/log/file_changes.log"
echo "$(date) - Files modified:" >> $LOG_FILE
find /path/to/files -type f -mtime -1 >> $LOG_FILE
```
`Script de surveillance du réseau`
Automatisez la surveillance du réseau et envoyez des alertes en cas de défaillance de la connectivité.
```js
#!/bin/bash
REMOTE_HOST="example.com"
if ! ping -c 1 $REMOTE_HOST &> /dev/null; then
    echo "Network connection to $REMOTE_HOST failed." | mail -s "Network Alert" admin@example.com
fi
```
`Script de nettoyage des journaux`
Automatisez la suppression des fichiers journaux anciens pour libérer de l'espace disque.
```js
#!/bin/bash
LOG_DIR="/var/log"
find $LOG_DIR -type f -name "*.log" -mtime +7 -exec rm {} \;
```
`Script de gestion des utilisateurs inactifs`
Automatisez la désactivation des comptes d'utilisateurs inactifs depuis un certain temps.
```js
#!/bin/bash
INACTIVE_DAYS=90
for user in $(lastlog -b $((INACTIVE_DAYS+1)) | awk '!/^$|Username/{print $1}'); do
    usermod -L $user
done
```
`Script de surveillance de l'intégrité des fichiers`
Automatisez la vérification de l'intégrité des fichiers en utilisant des sommes de contrôle (checksums).
```js
#!/bin/bash
CHECKSUM_DIR="/path/to/files"
find $CHECKSUM_DIR -type f -exec sha256sum {} \; > checksums.txt
```
`Script de sauvegarde avec rotation`
Automatisez la sauvegarde avec rotation pour conserver un nombre limité de copies.
```js
#!/bin/bash
BACKUP_DIR="/backup"
MAX_BACKUPS=5
rsync -avz --link-dest=$BACKUP_DIR/previous_backup /source_data $BACKUP_DIR/$(date +%Y%m%d)
find $BACKUP_DIR -maxdepth 1 -type d -name "20*" | sort -r | tail -n +$((MAX_BACKUPS+1)) | xargs rm -rf
```
`Script de rotation des sauvegardes`
Automatisez la rotation des sauvegardes pour conserver un nombre spécifique de copies tout en économisant de l'espace.
```js
#!/bin/bash
BACKUP_DIR="/backup"
MAX_BACKUPS=7
rsync -avz --link-dest=$BACKUP_DIR/previous_backup /source_data $BACKUP_DIR/$(date +%Y%m%d)
NUM_BACKUPS=$(ls -1 $BACKUP_DIR | grep -c '20')
if [ $NUM_BACKUPS -gt $MAX_BACKUPS ]; then
    OLDEST_BACKUP=$(ls -1 $BACKUP_DIR | grep '20' | sort | head -n 1)
    rm -rf $BACKUP_DIR/$OLDEST_BACKUP
fi
```
`Script de surveillance des services`
Automatisez la surveillance de plusieurs services et générez un rapport d'état.
```js
#!/bin/bash
SERVICES=("apache2" "mysql" "ssh")
REPORT_FILE="/var/log/service_status.log"

echo "$(date)" >> $REPORT_FILE
for service in "${SERVICES[@]}"; do
    if systemctl is-active --quiet $service; then
        echo "$service is running." >> $REPORT_FILE
    else
        echo "$service is not running." >> $REPORT_FILE
    fi
done
```
`Script de mise en place d'un environnement de développement`
Automatisez la configuration de votre environnement de développement avec des outils spécifiques.
```js
#!/bin/bash
# Installez git, python, et un éditeur de texte
sudo apt update
sudo apt install git python3 nano
```
`Script de surveillance des mises à jour de sécurité`
Automatisez la surveillance des mises à jour de sécurité et générez des alertes.
```js
#!/bin/bash
SECURITY_UPDATES=$(apt list --upgradable 2>/dev/null | grep -c security)
if [ $SECURITY_UPDATES -gt 0 ]; then
    echo "Security updates available. Please update your system." | mail -s "Security Updates Alert" admin@example.com
fi
```
`Script de gestion des comptes utilisateurs`
Automatisez la création, la modification et la suppression d'utilisateurs.

```js
#!/bin/bash
ACTION="create"
USERNAME="newuser"

if [ "$ACTION" == "create" ]; then
    useradd -m $USERNAME
    echo "User $USERNAME created."
elif [ "$ACTION" == "modify" ]; then
    usermod -aG sudo $USERNAME
    echo "User $USERNAME added to sudo group."
elif [ "$ACTION" == "delete" ]; then
    userdel -r $USERNAME
    echo "User $USERNAME deleted."
fi
```
`Script de déploiement d'application multi-environnements`
Automatisez le déploiement d'une application sur différents environnements (développement, test, production) avec des configurations spécifiques.
```js
#!/bin/bash
ENVIRONMENT="$1"
if [ "$ENVIRONMENT" == "development" ]; then
    # Déployez sur l'environnement de développement
    # Configurations spécifiques...
elif [ "$ENVIRONMENT" == "test" ]; then
    # Déployez sur l'environnement de test
    # Configurations spécifiques...
elif [ "$ENVIRONMENT" == "production" ]; then
    # Déployez sur l'environnement de production
    # Configurations spécifiques...
else
    echo "Usage: $0 [development|test|production]"
fi
```
`Script de sauvegarde planifiée avec rotation et notification`
Automatisez les sauvegardes planifiées, la rotation des copies et l'envoi d'alertes.
```js
#!/bin/bash
BACKUP_DIR="/backup"
MAX_BACKUPS=7
REPORT_FILE="/var/log/backup_report.log"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
rsync -avz /source_data $BACKUP_DIR/backup_$TIMESTAMP
echo "$(date) - Backup successful" >> $REPORT_FILE

NUM_BACKUPS=$(ls -1 $BACKUP_DIR | grep -c 'backup_')
if [ $NUM_BACKUPS -gt $MAX_BACKUPS ]; then
    OLDEST_BACKUP=$(ls -1 $BACKUP_DIR | grep 'backup_' | sort | head -n 1)
    rm -rf $BACKUP_DIR/$OLDEST_BACKUP
    echo "$(date) - Old backup removed: $OLDEST_BACKUP" >> $REPORT_FILE
fi
```
`Script de surveillance et redémarrage automatique d'un service`
Automatisez la surveillance et le redémarrage d'un service en cas de panne.
```js
#!/bin/bash
SERVICE="apache2"
RESTART_THRESHOLD=3

while true; do
    if ! systemctl is-active --quiet $SERVICE; then
        echo "$(date) - $SERVICE is not running. Restarting..."
        systemctl start $SERVICE
        ((RESTART_THRESHOLD--))
        if [ $RESTART_THRESHOLD -eq 0 ]; then
            echo "$(date) - $SERVICE failed to start after multiple attempts. Exiting."
            exit 1
        fi
    fi
    sleep 5
done
```
`Script de surveillance et réponse à une attaque DDoS`
Automatisez la surveillance du trafic réseau et répondez à une attaque DDoS en ajustant les règles du pare-feu.
```js
#!/bin/bash
THRESHOLD=1000
while true; do
    CONNECTIONS=$(netstat -an | grep -c ESTABLISHED)
    if [ $CONNECTIONS -gt $THRESHOLD ]; then
        echo "$(date) - DDoS attack detected. Adjusting firewall rules..."
        # Ajoutez ici des règles pour bloquer le trafic indésirable
    fi
    sleep 60
done
```
`Script de surveillance de la sécurité du système`
Automatisez la surveillance de la sécurité en vérifiant les fichiers système pour détecter toute modification non autorisée.
```js
#!/bin/bash
CHECK_DIRS=("/bin" "/usr/bin" "/sbin" "/usr/sbin")
REPORT_FILE="/var/log/security_report.log"

echo "$(date) - Security scan started" >> $REPORT_FILE
for dir in "${CHECK_DIRS[@]}"; do
    changed_files=$(find $dir -type f -exec md5sum {} \; | sort | uniq -d -w 32)
    if [ -n "$changed_files" ]; then
        echo "$(date) - Unauthorized file changes detected in $dir:" >> $REPORT_FILE
        echo "$changed_files" >> $REPORT_FILE
    fi
done
```
`Script de gestion de configuration`
//Automatisez la configuration de plusieurs serveurs en utilisant des modèles de configuration.
```js
#!/bin/bash
HOSTS=("server1" "server2" "server3")
CONFIG_TEMPLATE="/path/to/config_template.conf"

for host in "${HOSTS[@]}"; do
    scp $CONFIG_TEMPLATE $host:/etc/app/config.conf
    ssh $host systemctl restart app
done
```
`Script de gestion de clusters`
Automatisez le déploiement et la configuration de clusters de serveurs.
```js
#!/bin/bash
CLUSTER_NODES=("node1" "node2" "node3")
for node in "${CLUSTER_NODES[@]}"; do
    # Configure and join cluster
done
```
`Script de gestion de conteneurs`
Automatisez la création, la gestion et la mise à jour de conteneurs Docker.
```js
#!/bin/bash
CONTAINER_NAME="my_app"
DOCKER_IMAGE="my_app_image:latest"
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
docker pull $DOCKER_IMAGE
docker run -d --name $CONTAINER_NAME $DOCKER_IMAGE
```
`Script de sauvegarde et de restauration de base de données`
Automatisez la sauvegarde régulière et la restauration en cas de besoin.
```js
#!/bin/bash
DB_USER="username"
DB_PASS="password"
DB_NAME="database"
BACKUP_DIR="/backup"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/backup_$TIMESTAMP.sql

# Pour restaurer
# mysql -u $DB_USER -p$DB_PASS $DB_NAME < $BACKUP_DIR/backup_file.sql
```
`Script de surveillance de la sécurité réseau` 
Automatisez la surveillance des activités suspectes sur le réseau.
```js
#!/bin/bash
THRESHOLD=100
while true; do
    SUSPICIOUS_TRAFFIC=$(netstat -an | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n | awk -v threshold="$THRESHOLD" '$1 >= threshold {print $2}')
    if [ -n "$SUSPICIOUS_TRAFFIC" ]; then
        echo "$(date) - Suspicious network activity detected from:" >> /var/log/security_report.log
        echo "$SUSPICIOUS_TRAFFIC" >> /var/log/security_report.log
    fi
    sleep 300
done
```
`Script de surveillance de l'utilisation des ressources par utilisateur` 
Automatisez la surveillance de l'utilisation CPU, mémoire et disque par utilisateur.
```js
#!/bin/bash
THRESHOLD=90
USERS=("user1" "user2" "user3")
while true; do
    for user in "${USERS[@]}"; do
        CPU_USAGE=$(top -bn1u $user | awk '/Cpu/ {print $2}' | cut -d. -f1)
        MEM_USAGE=$(pmap $(pgrep -u $user) | tail -n 1 | awk '{print $2}')
        if [ $CPU_USAGE -gt $THRESHOLD ]; then
            echo "$(date) - High CPU usage by $user: $CPU_USAGE%" >> /var/log/resource_report.log
        fi
        if [ $MEM_USAGE -gt $THRESHOLD ]; then
            echo "$(date) - High memory usage by $user: $MEM_USAGE KB" >> /var/log/resource_report.log
        fi
    done
    sleep 600
done
```

