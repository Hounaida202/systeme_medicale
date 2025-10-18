#  Système de Télé-Expertise Médicale

## Contexte du projet
Ce projet a été réalisé dans le cadre d’un développement **Java Web (Jakarta EE)**.  
L’objectif est de concevoir et développer une **plateforme de télé-expertise médicale** permettant d’améliorer la coordination entre le personnel soignant et d’optimiser le parcours du patient.  

Le système facilite la collaboration entre **infirmiers** et **médecins généralistes**, en assurant une **prise en charge rapide** et **centralisée** des patients au sein d’un hôpital.

---

##  Objectif principal
Permettre à un **médecin généraliste** de gérer les consultations des patients et de demander, si nécessaire, un avis spécialisé à distance (télé-expertise).  
Le système couvre les étapes suivantes :
- Enregistrement du patient par l’infirmier  
- Gestion de la file d’attente  
- Consultation par le médecin généraliste  
- Création et suivi des consultations  

---

## Modules développés

###  Module Infirmier
#### US1 — Accueil du patient
- Recherche d’un patient existant par numéro de sécurité sociale  
- Si le patient existe :
  - Affichage de ses informations
  - Ajout des nouveaux signes vitaux
  - Ajout automatique à la file d’attente  
- Si c’est un nouveau patient :
  - Création du dossier patient (informations personnelles et signes vitaux)
  - Ajout automatique à la file d’attente après enregistrement  

#### US2 — Liste des patients enregistrés
- Affichage de la liste des patients du jour  
- Informations : nom, prénom, signes vitaux, numéro de sécurité sociale  
- Tri par heure d’arrivée (du plus ancien au plus récent)  
- Utilisation de **Stream API** pour filtrer les patients par date d’enregistrement  

---

###  Module Médecin Généraliste
#### US1 — Créer une consultation
- Sélection d’un patient existant dans la file d’attente  
- Saisie du motif et des observations de la consultation  
- Coût fixe de consultation : **150 DH**
  
---

##  Module Authentification
- Authentification simple (login/logout)  
- Trois rôles principaux :
  - **Infirmier**
  - **Médecin Généraliste**
- Gestion d’état avec **sessions (stateful)**  
- Hachage des mots de passe avec **bcrypt**  
- Protection **CSRF** activée  

---

## Technologies utilisées

| Catégorie | Technologies |
|------------|---------------|
| Langage | Java |
| Framework | Jakarta EE |
| Serveur | Apache Tomcat |
| ORM | JPA / Hibernate |
| Build Tool | Maven |
| Vue | JSP, JSTL |
| Authentification | Sessions + bcrypt |
| Tests | JUnit / Mockito |
| Architecture | MVC (Model-View-Controller) |


