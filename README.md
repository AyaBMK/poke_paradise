# poke_paradise

## Fonctionnalités clés

- Interface d'administration (CRUD) et upload de fichiers :  Cette fonctionnalité permet à l'administrateur de se connecter et, une fois connecté, d'être redirigé vers la page d'index de l'administration. Sur cette page, un sidebar propose les fonctionnalités nécessaires pour effectuer des opérations CRUD sur les produits et les catégories, ainsi que pour télécharger des images via l'upload de fichier. (Je n'ai pas utilisé Easy Admin, j'ai essayé de reproduire les mêmes fonctionnalités sans recourir à cet outil.)

- Interface utilisateur : Cette fonctionnalité permet à l'utilisateur de se connecter et, une fois connecté, d'être redirigé vers la page home. Les utilisateurs ont la possibilité de s'inscrire à la newsletter.

- Système d'authentification et d'inscription avce upload de fichers : Garantit la sécurité de l'accès aux différentes fonctionnalités du site en offrant aux utilisateurs la possibilité de créer un compte sécurisé et de s'authentifier. 

- Limitez l'accès à certaines pages, telles que les pages d'administration, en configurant les paramètres dans le fichier security.yaml.

- Les fixtures:  pour ajouter des données pour les tests

## Système d’administrateurs pour administrer les plats.

- Ce système d'administration permet l'accès à une interface avec un utilisateur de type administrateur, identifiable par le role = ROLE_ADMIN. Les informations de connexion pour cette interface sont les suivantes :

Email : baron.anouk@sfr.fr
Mot de passe : test

## Système d’utilisateurs.


L'interface utilisateur permet l'accès à une interface dédiée aux utilisateurs réguliers. Ces utilisateurs peuvent accéder à différentes fonctionnalités du site après s'être connectés avec leurs informations d'identification, ou s'inscrire.

Les informations de connexion pour cette interface utilisateur sont les suivantes :

Email : josephine.bertrand@sfr.fr
Mot de passe : test

## Hachache du mot de passe

- Créer un écouteur sous la forme d'un subscriber pour hacher automatiquement le mot de passe d'un utilisateur lorsqu'il est enregistré en base de données.
