# Générateur d'attestation de déplacement dérogatoire COVID19

![Comparaison entre le document du ministère et celui généré](exemples/comparaison.png)

[Exemple d'attestation générée](exemples/exemple_attestation.pdf)

## Comment générer ?

Depuis votre console, à la racine du projet, tapez la commande ``make``.

Si vous n'avez pas de fichier de configuration, un assistant vous demandera de saisir les valeurs du formulaire.

L'attestation généré se trouve à la racine du projet sous le nom ``attestation.pdf``

## Quelles dépendances ?

    apt-get install inkscape gettext-base python-qrcode pdftk

## Comment ca fonctionne ?

Le fichier Makefile vient remplir une version SVG de l'attestation du ministère de l'intérieur et un qr code contenant les informations attendues est généré.
