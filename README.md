
,<a name="readme-top"></a>

<!--
!!! IMPORTANT !!!
This README is an example of how you could professionally present your codebase. 
Writing documentation is a crucial part of your work as a professional software developer and cannot be ignored. 

You should modify this file to match your project and remove sections that don't apply.

REQUIRED SECTIONS:
- Table of Contents
- About the Project
  - Built With
  - Live Demo
- Getting Started
- Authors
- Future Features
- Contributing
- Show your support
- Acknowledgements
- License

OPTIONAL SECTIONS:
- FAQ

After you're finished please remove all the comments and instructions!

For more information on the importance of a professional README for your repositories: https://github.com/microverseinc/curriculum-transversal-skills/blob/main/documentation/articles/readme_best_practices.md
-->

<div align="center">
  <!-- You are encouraged to replace this logo with your own! Otherwise you can also remove it. -->
  <img src="assets/images/blanc.png" alt="logo" width="140"  height="auto" />
  <br/>


</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖À propos du Projet](#about-project)
  - [🛠 Construit avec](#built-with)
    - [Technologies Utilisées](#tech-stack)
    - [Fonctionnalités Clés](#key-features)
  - [🚀Démo en Direct](#live-demo)
- [💻 Démarrage](#getting-started)
  - [Prérequis](#prerequisites)
  - [Configuration](#setup)
  - [Installation](#install)
  - [Utilisation](#usage)
  - [Exécution des Tests](#run-tests)
  - [Deployment](#deployment)
- [👥 Les Auteurs](#authors)
- [🔭 Fonctionnalités Futures](#future-features)
- [🤝 Contribution](#contributing)
- [⭐️ Support](#support)
- [🙏  Remerciements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 À propos du Projet <a name="about-project"></a>

> ArtEshop est une plateforme dédiée à la vente de produits artisanaux locaux, offrant une vitrine aux artisans pour promouvoir et commercialiser leurs créations. Cette application vise à mettre en avant la richesse et la diversité des produits artisanaux, offrant aux artisans une opportunité de gagner en visibilité et de toucher un public plus large.

**ArtEshop** Une application de commerce électronique

## 🛠 Construit avec<a name="built-with"></a>

### Technologies Utilisées <a name="tech-stack"></a>

>Cette application a etait construite avec des technologie comme :
##### Le Framework Flutter :
>Le Framework Flutter est utilisé pour le developement des differents interfaces (coté utilisateur et coté administrateur).
##### Le Framework Spring Boot :
>Spring Boot est utilisé pour la creation des differents endpoints de l'API RESTful qui permet d'etablire la communication  entre l'interface utilisateur et la base de données.
##### L'angage de Programmation Dart :
>Dart est utilisé pour gerer la logique de traitement a fin de communiquer les endpoints a l'interface.
##### L'angage de Programmation Java :
>Dans le contexte de cette application, Java est utilisé principalement avec Spring Boot pour créer des API RESTful et pour gérer la logique métier plus complexe. Il permet de structurer l'application en définissant des classes, des méthodes, et des modèles de données nécessaires à l'interaction avec la base de données.
##### L'angage de Programmation SQL :
>Langage SQL nous servent des programmes pour écrire des requêtes qui permettent de manipuler et d'interroger la base de données
##### Outil de gestion de projet (Trello)
>Trello est utilisé pour la gestion du projet le suivis et l'avancement des differentes fonctionnalités 
##### Figma
>Figma est utiliser pour faire la maquette et le prothotipage de l'application avant le developpement
##### Drawio
>Outil utilisé pour faire une analyse glabale et une vue d'ensemble du systeme
<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://flutter.dev/">Flutter.dev</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://spring.io/projects/spring-data/">Spring Boot</a></li>
  </ul>
</details>

<details>
<summary>Base de Données</summary>
  <ul>
    <li><a href="https://sql.sh/sgbd">SQL</a></li>
  </ul>
</details>

<!-- Features -->

### Fonctionnalités Clés <a name="key-features"></a>
##### Inscription de l'artisan
chaque artisan doit s'inscrire sur la plateforme en fournissant ses informations complet tel que: Nom, Prenom, Region, Telephone etc...., qui doivent etre validée par un administrateur avan de se connecter.
##### Identification (artisan)
L'artisan pourra s'identifier apres verification et confirmation de ses information personnels
##### Ajout de produit(article)
Apres inscription et validation l'artisan pourra se connecter afin d'ajouter des articles par categorie dans sa boutique qui doivent etre validée par un administrateur avant d'etre apparaitre dans l'interface utilisateur 
##### Modifier les information du produit(article)
L'artisan pourra modifier les informations tel que le prix, les couleurs
##### Supprimer un produit(article)
L'artisan pourra supprimer un produit de sa boutique 
##### Identification (administrateur)
L'administrateur dois se connecter pour suivre l'evolution de la plateforme mais aussi accepter les demandes d'adhesion sur la plateforme et validée les articles publier etc....

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Démo en Direct <a name="live-demo"></a>

> lien du demo.

- [Live Demo ](https://google.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Démarrage <a name="getting-started"></a>
 
> Ce projet est composer de deux grandes parties avec deux dossier differents regroupé dans meme dossier<br>
> un dossier pour la partie mobil(mobile) et un autre pour la partie web(desktop)
>La structure est composer de dossier Model, dossier service, et dossier page
> Pour demarrer avec ce projet veillez suivre les etapes suivantes

### Prérequis
Liste des logiciels ou les configurations nécessaires pour exécuter le projet:
###### Logiciels/outils
1. Android Studio/Vscode comme éditeur de texte
2. Flutter SDK version 3.1.3 ou supperieur
3. Emulateur Android ou IOS
4. Ordinateur Portable (8Go RAM)
5. Un compte github
6. JDK 20
7. Servere XAMP ou WAMP

<!--
Example command:

```sh
 gem install rails
```
 -->

### Configuration
>Cloner le projet depuis le repository https://github.com/yelensoft-org/artEshop_flutter dans un dossier en local
>Ouvrir le dossier par l'un des editeur cité ci-dessus

<!--
Example commands:

```sh
  cd my-folder
  git clone git@github.com:myaccount/my-project.git
```
--->

### Installation
>Télécharger est installer l'API contenant les endpoints <a href="https://github.com/yelensoft-org/SpringBoot_artEshop"> Endpoints</a>
>Installer les dependences avec la commsnde suivante dans un terminal "flutter pub get"
>Apres l'installation de dependences vous exécuter la commande  suivante "flutter run" pour demarer l'application
>



<!--
Example command:

```sh
  cd my-project
  gem install
```
--->

### Utilisation
>L'application propose deux interfaces differentes : la partie dasbord s'execute automatiquement sur web quand l'application est executer sur ordinateur et la partie mobile lors de l'execution sur mobile
>Pour Utilisé la partie web il faut au prealable un compte Administrateur puis s'identifier
>Les differentes interface de la parrie web :
>Dashboard
>Produits
>Artisan
>Categorie
>Taille/pointure-Produit
>La partie mobile propose une interface avec deux utilisateur differents (vendeur et acheteur)
>Les differentes interface de la parrie mobile :
>Accueil
>Notification/Panier
>Profil
>Le vendeur(Artisan) doit d'abord s'inscrire a son pemiere usage 
To run the project, execute the following command:

<!--
Example command:

```sh
  rails server
```
--->

### Exécution des Tests

To run tests, run the following command:

<!--
Example command:

```sh
  bin/rails test test/models/article_test.rb
```
--->

### Deployment

You can deploy this project using:

<!--
Example:

```sh

```
 -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Les Auteurs <a name="authors"></a>

>Les acteurs du developpement.

👤 **Auteur1**

- GitHub: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

👤 **Auteur2**

- GitHub: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Fonctionnalités Futures<a name="future-features"></a>
> chacun de ces fonctionnalité dois etre implementé pour complete cette application 

- **[un utilisateur quelconque dois avoir la possibilite de consulter l'application sans se connecter]**
  >Cela signifie que les visiteurs auront la capacité de naviguer dans l'application, parcourir les produits ou services disponibles, accéder aux informations sur les vendeurs ou artisans sans avoir à s'authentifier. Cela peut susciter l'intérêt des utilisateurs potentiels en leur permettant d'explorer l'offre avant de prendre la décision de s'inscrire ou de se connecter.
- **[les statistique de vente  au niveau de l'admin doit automatique]**
  >cette fonctionnalite vas permettre a l'administrateur de voir le nombre des utilisateurs ainsi que celles des artisan sans oublier la capacité de l'application a promouvre une vente croissante
- **[chqaue artisan doit avoir ses propres  produit dans sa propre boutique]**
  >Chaque artisan aura son propre espace où il pourra ajouter, modifier ou supprimer des produits à vendre. Cela offrira une expérience personnalisée aux utilisateurs, leur permettant de parcourir et d'acheter des produits spécifiques à chaque vendeur.
- **[la boutique dois etre disparaitre apres avoir desactiver un artisan]**
  >Lorsqu'un artisan est désactivé pour une raison quelconque (par exemple, s'il décide de ne plus vendre sur la plateforme), il est essentiel que sa boutique et ses produits disparaissent de manière cohérente et immédiate de l'application.
- **[Implementation Mode de paiement par Orange Money, Carte Visa, tap-tap send]**
  >L'intégration de modes de paiement diversifiés comme Orange Money, Carte Visa et tap-tap send permettra aux utilisateurs d'effectuer des transactions en utilisant différentes méthodes de paiement. Cela élargira la portée de l'application en répondant à une variété de préférences et de besoins des utilisateurs en matière de paiement
- **[l'application de etre traduit en Francais ou Anglais]**
  >En permettant à l'application d'être traduite dans différentes langues telles que le français et l'anglais, offrez une accessibilité accrue à un plus grand nombre d'utilisateurs. Cela permet aux utilisateurs de sélectionner la langue qui leur convient le mieux, ce qui améliore considérablement leur expérience utilisateur.
- **[Implementation de chat]**
  >Cela favorisera les échanges directs entre vendeurs et acheteurs, offrant la possibilité de poser des questions sur les produits, de négocier, ou de demander des détails supplémentaires avant un achat. Le chat facilitera également la gestion des transactions et renforcera l'engagement des utilisateurs.
- **[Implementation Foire virtuel]**
  >Cela permettra aux vendeurs et aux artisans de présenter leurs produits dans un cadre plus large et potentiellement lors d'événements spéciaux organisés au sein de l'application. Les utilisateurs pourront parcourir et acheter des produits spéciaux disponibles uniquement pendant ces foires virtuelles, créant ainsi un sentiment d'exclusivité


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contribution<a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Support <a name="support"></a>

> Write a message to encourage readers to support your project

If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Remerciements <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **[Question_1]**

  - [Answer_1]

- **[Question_2]**

  - [Answer_2]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
