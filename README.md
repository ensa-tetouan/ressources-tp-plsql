# Installation base de données exemple

Ce guide est une source principale d'informations sur la mise en place d'un schéma de base de données utilisés pour les exemples dans la documentation d'Oracle Database.

L'exemple utilisé tout au long des TP du Module Administration et Optimisation des base de données est le schéma OT. [Plus d'infos](https://docs.oracle.com/database/121/COMSC/toc.htm).

Cette ressource dispose de trois fichier sql :
1. **1-ot_create_user.sql** : Ce fichier permet la création de l'utilisateur OT
2. **2-ot_schema.sql** : Ce fichier contient le script pour la création des tables 
3. **3-ot_data** : Ce fichier contient le code pour remplir les tables créées à partir du script **2-ot.schema.sql**

## Installation

### Étape 1

Télécharger le dossier contenant les script, puis dans sql developer connectez-vous avec l'utilisateur **sys** exécuter le script **1-ot_create_user.sql** pour créer l'utilisateur OT. Une fois l'utilisateur créée, Créer une nouvelle connexion (![Image](images/1-sqldevelopper.png "Nouvelle connexion")) puis remplir les informations comme vous l'avez fait pour l'utilisateur **sys**  mais en changeant maintenant l'utilisateur par OT et le mot de passe par le mot de passe que vous avez mis lors de la création de l'utilisateur (![Image](images/2-sqldevelopper.png "Saisie des informations")) , puis connectez-vous avec.

### Étape 2
Exécuter le code du script **2-ot_schema.sql** pour créer les tables

### Étape 3
Exécuter le code du script **3-ot_data.sql** pour remplir les tables
