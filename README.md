# 🚖 Taxi Data Insights — SQL + Power BI Project

## 1. Objectif du projet
(… résumé …)

## 2. Data Quality Assessment

Avant toute analyse, un contrôle qualité a été réalisé sur les tables principales du dataset.
Objectif : valider l'intégrité, la cohérence et la fiabilité des données utilisées pour les KPIs et le dashboard.

✔️ Structure des tables

Table	Lignes
trips	320
customers	120
drivers	45
cities	6
➡️ Les volumes sont cohérents : beaucoup plus de courses que de clients, et un nombre limité de villes, signe d’une activité locale.

✔️ Valeurs manquantes (NULL)

Aucun NULL détecté sur les colonnes critiques :
customer_id
driver_id
price_total
➡️ Le dataset est complet, aucun risque de distorsion sur les KPIs.

✔️ Distribution des statuts de courses

Status	Volume
completed	258
cancelled_by_customer	36
cancelled_by_driver	17
no_show	9
➡️ 80,6 % des courses sont complétées.
Le taux d’annulation total atteint 19,4 %, ce qui est non négligeable et représente un enjeu opérationnel clair.

✔️ Valeurs aberrantes

Aucun prix négatif ou supérieur à 200 €.
➡️ Les données financières sont propres.
Aucune correction nécessaire.

🎯 Conclusion Data Quality

Les données sont fiables, complètes et directement exploitables pour une analyse SQL & Power BI.
→ Aucun nettoyage agressif requis.
→ Confiance forte dans les KPIs générés.

## 3. Core Business KPIs

L’analyse SQL met en évidence les indicateurs clés de performance pour comprendre l'activité globale.

💰 Chiffre d’affaires total

6 953,94 €
Le service génère un CA modéré mais cohérent avec une plateforme locale en phase d’adoption.

🚕 Courses complétées

258 courses sur 320 au total (80,6 %)
➡️ Le taux de complétion est bon.
➡️ Le taux d’annulation global (~19 %) révèle un levier d’amélioration opérationnel.

💳 Revenu moyen par course

26,95 €
Indicateur clé pour :
la prévision du revenu,
le pilotage marketing,
la compréhension du panier moyen.

👤 Clients actifs

107 clients uniques
➡️ Base client correcte.
Le niveau de fidélité devra être confirmé via l’analyse du funnel et de la rétention.

🗺️ Répartition du CA par ville

Ville	Revenu (€)
Bordeaux	1 438,03
Lille	1 365,31
Marseille	1 266,12
Toulouse	1 132,73
Lyon	934,06
Paris	817,69
➡️ 55 % du CA provient de Bordeaux, Lille et Marseille.
➡️ Paris est la ville la moins contributrice, alors qu’elle représente un marché large.
Hypothèse business : trajets plus courts, concurrence plus forte, ou comportements clients différents.

🎯 Conclusion KPIs

Le business modèle repose sur :
un panier moyen stable,
une base client large,
une performance géographique contrastée.
Ces KPIs servent de fondation à l’analyse avancée (funnel, rétention, segmentation chauffeurs et clients).

## 4. SQL Scripts
(lien vers /sql)

## 5. Power BI Dashboard
(images + lien PBIX)

## 6. Insights business
## 7. Conclusion / Next steps
