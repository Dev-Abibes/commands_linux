Calculer la Moyenne d'une Colonne de Données dans un Fichier CSV
```js
  awk -F ',' '{ sum += $2 } END { print "Moyenne :", sum/NR }' fichier.csv
```
Filtrer les Lignes qui Satisfont Plusieurs Conditions
```js
  awk '$1 > 100 && $2 < 50' fichier.txt
```
Compter le Nombre de Mots dans un Fichier
```js
  awk '{ total += NF } END { print "Nombre de mots :", total }' fichier.txt
```
Convertir un Format de Date dans un Fichier
```js
  awk -F '/' '{ print $3 "-" $1 "-" $2 }' fichier_dates.txt
```
Grouper et Agréger des Données avec awk
```js
  awk -F ',' '{ ventes[$1] += $2 } END { for (produit in ventes) print produit, ventes[produit] }' ventes.csv
```
Extraire les Lignes entre Deux Motifs
```js
  awk '/Motif1/,/Motif2/' fichier.txt
```
Afficher les Lignes Répétées avec leur Compteur
```js
  awk 'seen[$0]++ { print $0, seen[$0] }' file.txt
```
Travailler avec des Tableaux Associatifs
```js
  awk '{ sum += $1; sumsq += $1^2 } END { avg = sum/NR; stddev = sqrt(sumsq/NR - avg^2); print "Somme :", sum; print "Moyenne :", avg; print "Écart-type :", stddev }' fichier.txt
```
Effectuer un Pivot de Tableau en Utilisant awk :
```js
  awk -F ',' '{ produits[$1][$2] += $3 } END { for (produit in produits) { print produit; for (mois in produits[produit]) { print mois, produits[produit][mois] } } }' ventes.csv
```
Manipuler des Colonnes avec Format Spécifique
```js
  awk -F 'x' '{ produit = $1 * $2; print produit }' fichier_dimensions.txt
```
Recherche et Remplacement avec Condition :
```js
  awk '/Motif1/ { gsub("ancien", "nouveau"); print } !/Motif1/' fichier.txt
```
Calculer la Médiane d'une Colonne de Données
```js
  awk '{ data[NR] = $2 } END { n = asort(data); if (n % 2) print data[int(n/2) + 1]; else print (data[n/2] + data[n/2 + 1]) / 2 }' fichier.txt
```
Effectuer une Opération sur des Blocs de Lignes
```js
  awk 'NF { block = block $0 ORS } !NF { print "Bloc:", block; block = "" }' fichier.txt
```
Manipuler des Chaînes de Caractères
```js
  awk '{ print $2, $1 }' fichier_noms.txt
```
Filtrer les Lignes uniques en Ignorant la Casse
```js
  awk '{ lines[tolower($0)]++ } END { for (line in lines) print line }' fichier.txt
```
Calculer la Distance Euclidienne entre Deux Points
```js
  awk '{ dist = sqrt(($3 - $1)^2 + ($4 - $2)^2); print "Distance entre", $1, $2, "et", $3, $4, ":", dist }' fichier_points.txt
```
Fusionner des Fichiers en Utilisant un Identifiant Commun
```js
  awk 'NR == FNR { data[$1] = $0; next } $1 in data { print data[$1], $0 }' fichier1.txt fichier2.txt
```
Manipuler des Dates et Heures
```js
  awk -F ' ' '{ cmd = "date -d \"" $1 " " $2 "\" +%s"; cmd | getline timestamp; close(cmd); new_timestamp = timestamp + 3600; print strftime("%Y-%m-%d %H:%M:%S", new_timestamp) }' fichier_dates.txt
```
Analyser et Extraire des Données JSON
```js
  awk 'BEGIN { RS = "[{}]"; FS = "[,:]"; } /"clé"/ { print $4 }' fichier.json
```
Calculer la Densité de Données dans une Fenêtre Glissante 
```js
  awk 'NR > 10 { sum -= array[NR % 10] } { array[NR % 10] = $1; sum += $1; if (NR >= 10) print "Densité :", sum / 10 }' fichier_capteurs.txt
```
Exécuter une Commande sur un Ensemble de Fichiers
```js
  awk '{ print "Traitement du fichier", FILENAME, ":", $0 }' fichier1.txt fichier2.txt
```
Filtrer et Grouper les Données par Catégories
```js
  awk -F ',' '{ categories[$1] = categories[$1] $2 "," } END { for (cat in categories) print cat, categories[cat] }' fichier.csv
```
Convertir un Format de Temps en Secondes :
```js
  awk -F ':' '{ seconds = $1 * 3600 + $2 * 60 + $3; print seconds }' fichier_temps.txt
```
Trouver le Mot le Plus Long dans un Texte :
```js
  awk '{ for (i = 1; i <= NF; i++) { if (length($i) > max_length) { max_length = length($i); longest_word = $i; } } } END { print "Mot le plus long :", longest_word }' texte.txt
```
Calculer la Différence entre Deux Colonnes
```js
  awk -F ',' '{ diff = $1 - $2; print "Différence :", diff }' fichier.csv
```
Calculer la Corrélation entre Deux Colonnes de Données
```js
  awk -F ',' '{ sum1 += $1; sum2 += $2; sum1sq += $1^2; sum2sq += $2^2; sum12 += $1 * $2 } END { n = NR; corr = (n * sum12 - sum1 * sum2) / sqrt((n * sum1sq - sum1^2) * (n * sum2sq - sum2^2)); print "Corrélation :", corr }' fichier.csv
```
Extraire et Afficher les Lignes Contenant des Motifs Multiples :
```js
  awk '/Motif1/ && /Motif2/ && /Motif3/' fichier.txt
```
Générer un Histogramme à Partir d'une Colonne de Données
```js
  awk '{ bins[int($1)]++ } END { for (bin in bins) { printf "%d : ", bin; for (i = 1; i <= bins[bin]; i++) printf "*"; print "" } }' fichier_valeurs.txt
```
Calculer la Fréquence des Mots dans un Texte :
```js
  awk '{ for (i = 1; i <= NF; i++) freq[$i]++ } END { for (mot in freq) print mot, freq[mot] }' texte.txt
```
Réorganiser les Colonnes dans un Fichier CSV
```js
  awk -F ',' '{ print $3 "," $1 "," $2 }' fichier.csv
```
Calculer la Taille Totale des Fichiers dans un Répertoire
```js
  find /chemin/vers/repertoire -type f -exec du -b {} + | awk '{ sum += $1 } END { print "Taille totale :", sum }'
```
Analyser et Extraire des Données XML :
```js
  awk -F '[<>]' '/<balise>/ { print $3 }' fichier.xml
```
Calculer la Différence entre Dates Successives :
```js
awk -F '-' '{ date = $1 "-" $2 "-" $3; if (prev_date) { diff = systime() - mktime(date " 00 00 00"); print date, ":", diff / 86400, "jours" } prev_date = date }' fichier_dates.txt
```
Calculer les Statistiques par Catégorie :
```js
  awk -F ',' 'NR == 1 { print "Catégorie | Somme | Moyenne | Max | Min" } NR > 1 { cat[$1]++; sum[$1] += $2; max[$1] = ($2 > max[$1] || !max[$1]) ? $2 : max[$1]; min[$1] = ($2 < min[$1] || !min[$1]) ? $2 : min[$1] } END { for (c in cat) { print c, sum[c], sum[c]/cat[c], max[c], min[c] } }' fichier.csv
```
  awk -F ',' 'NR == 1 { print "Catégorie | Somme | Moyenne | Max | Min" } NR > 1 { cat[$1]++; sum[$1] += $2; max[$1] = ($2 > max[$1] || !max[$1]) ? $2 : max[$1]; min[$1] = ($2 < min[$1] || !min[$1]) ? $2 : min[$1] } END { for (c in cat) { print c, sum[c], sum[c]/cat[c], max[c], min[c] } }' fichier.csv
Reformatage et Alignement de Données :

```js
  awk -F ',' '{ printf "%-20s %-10s %10s\n", $1, $2, $3 }' fichier.csv
```
Conversion d'Unités :
```js
  awk '{ miles = $1 * 0.621371; print $1 " km =", miles " miles" }' fichier_distances.txt
```
`Calcul de la Fréquence d'Occurrence de Motifs`
Supposons que vous ayez un texte et que vous souhaitiez compter la fréquence d'occurrence de motifs de deux mots 
```js
  awk '{ for (i = 1; i <= NF - 1; i++) freq[$i " " $(i+1)]++ } END { for (motif in freq) print motif, freq[motif] }' texte.txt
```
`Analyse de Log et Affichage d'Alertes`
Supposons que vous ayez un fichier de logs avec des codes d'erreur et que vous souhaitiez afficher les codes d'erreur uniques et leurs occurrences :
```js
  awk '/Code d\'erreur/ { codes[$NF]++ } END { for (code in codes) print "Code", code, ":", codes[code], "occurrences" }' fichier_logs.txt
```










