`1- Créez le script pre-db-backup-mode.sh à l'aide du code suivant :`
```js
#!/bin/bash#

dbuser=root
dbpwd=rootpwd

lock_mysqldb(){  
(   
  echo "flush tables with read lock;"
  sleep 5
) | mysql -u$dbuser -p$dbpwd ${ARGUMENTS} }

}
lock_mysqldb &
PID="/tmp/mysql-plock.$!"
touch ${PID}
```
`2- Créez le script post-db-backup-mode.sh à l'aide du code suivant :`
```js
#!/bin/bash

killcids(){
pid="$1"
cids=`ps -ef|grep ${pid}|awk '{if('$pid'==$3){print $2}}'`
for cid in ${cids}
  do
    echo ${cid}
    kill -TERM ${cid}
  done
  echo -e "\n"
}
mysql_lock_pid=`ls /tmp/mysql-plock.* | awk -F . '{print $2}'`
[ "$mysql_lock_pid" != "" ] && killcids ${mysql_lock_pid}
rm -fr /tmp/mysql-plock.*
```
`4- Définissez une autorisation d'exécution pour les deux scripts`
`Placez les deux scripts à l'emplacement suivant :`
```js
/opt/Arcserve/d2dserver/usr/prepost/
```
`5- Connectez-vous à l'interface Web de l'Agent Arcserve UDP (Linux).`
`6- Ouvrez l'assistant de sauvegarde et naviguez jusqu'à l'onglet Options avancées.`
- Dans l'option Paramètres des scripts de pré-exécution/post-exécution,
- sélectionnez le fichier de `script pre-db-backup-mode.sh` dans la liste déroulante Avant prise du cliché.
- Dans l'option Paramètres des scripts de pré-exécution/post-exécution,
- sélectionnez le fichier de `script pre-db-backup-mode.sh` dans la liste déroulante Après prise du cliché.
- `Soumettez le job de sauvegarde.`
- ` Le job de sauvegarde est soumis.`
