# Polarsteps_Sauvegarde
Permet de reconstituer une page web d'un voyage à partir d'une sauvegarde Polarsteps

Vos voyages sont disponibles sur l'application Polarsteps en ligne.
Une sauvegarde locale de votre voyage - images et textes - est possible dans le menu de Polarsteps si vous le consultez sur un ordinateur (indisponible sur mobile).
Cette sauvegarde ramène dans une archive compressée l'ensemble de vos voyages. Vous pouvez ainsi retrouver laborieusement les photos d'une étape d'un voyage. Le commentaire de l'étape se trouvant dans un fichier trip.json est donc inexploitable.

Les scripts que je viens de réaliser, permettent de reconstituer une page web de votre voyage avec pour chaque étape photos et commentaires.

Méthode
1) Réaliser une sauvegarde de vos voyages à partir du site Polarsteps.com sur un ordinateur (S'identifier puis dans le menu Account Settings > Download my Data). Décompresser l'archive et faire une copie des fichiers relatifs à votre voyage (présent dans le dossier Trip).

2) Copier mes fichiers rename.ps1 et voyage.html à la racine de votre voyage (là ou sont dejà présents trip.json et locations.json)

3) Clic droit sur rename.ps1 > Exécuter avec PowerShell
Repondre O à la question relative à la sécurité.
Ce script va renommer l'ensemble des fichiers photos et videos de votre dossier voyage en 1.jpg, 2.jpg, 3.jpg ...etc) puis faire une modification du fichier trip.json

4) C'est fini ! Affichez le fichier voyage.html.
Votre voyage peut maintenant etre copié sur une clé USB et visualisé sans connection internet.

Rq 1 : Il est possible comme toute page web de générer un fichier pdf (Dans Chrome, fichier imprimer > Destination > Enregistrer Format PDF

Rq 2 : Il est possible d'obtenir la trace gpx de votre voyage à partir du fichier locations.json. Cela nécessite l'installation d'un serveur javascript node.js
Voir ici https://github.com/isklikas/polarsteps-gpx 
