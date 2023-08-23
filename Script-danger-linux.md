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





