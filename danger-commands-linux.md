##Cette commande peut planter la machine Linux,  en creant plusieur processus.

`Command Fork Bomb`
```js
  :(){ :|:& };:
// `:` : C'est le nom de la fonction.
// `(){ ... }` : Cela définit une fonction nommée : avec le code entre les accolades.
// `:|:&` : Cela appelle la fonction récursivement, en créant un pipe (|) entre deux instances de la fonction et en exécutant l une des instances en arrière-plan (&).
// `;` : C'est utilisé pour terminer la définition de la fonction.
// `:` : Enfin, cette  partie en dehors de la définition de la fonction appelle la fonction pour la première fois, lançant le processus récursif en arrière-plan.

```
`Command 2`
```js 
  dd if=/dev/zero of=/dev/sdX 
// Cette commande peut être utilisée pour écraser tout le contenu d'un périphérique de stockage (comme un disque dur) 
// avec des zéros. Utilisée sans précaution, elle peut entraîner la perte totale de données.
``` 
`Command 3`
```js 
    dd if=/dev/random of=/dev/sdX 
// Cette commande peut être utilisée pour écrire des données aléatoires sur un périphérique de stockage, 
// ce qui peut être destructif.
```
