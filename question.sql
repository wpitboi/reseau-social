--question a
SELECT prenom, nom,COUNT(*) as nombre_amis FROM MEMBRE, POSSEDE_RELATION, RELATION WHERE (MEMBRE.id = membre_1 OR MEMBRE.id = membre_2) AND relation = RELATION.id AND RELATION.statut = 1 GROUP BY MEMBRE.id;

--question b

--question c
SELECT PAGES.id as numero_page, aime FROM INTERESSE, PAGES, MEMBRE WHERE aime = 1 AND PAGES.id = pages AND MEMBRE.id = membre;

--question d
SELECT MEMBRE.nom, prenom, date_naissance, VILLE.nom as ville_residence, PAGES.nom as nom_de_la_page, aime FROM MEMBRE, VILLE, INTERESSE, PAGES WHERE ville_residence = VILLE.id AND (VILLE.nom = "Paris-1" OR VILLE.nom = "Paris-2" OR VILLE.nom = "Paris-3") AND '2001' > YEAR(date_naissance) AND YEAR(date_naissance)>'1993' AND INTERESSE.membre = MEMBRE.id AND INTERESSE.PAGES = PAGES.id AND aime = 1 AND PAGES.nom = 'H3 Hitema';

--question e
SELECT DISTINCT E.id FROM EVENEMENT AS E JOIN PARTICIPE P on E.id = P.evenement WHERE (SELECT COUNT(PA.statut) FROM PARTICIPE AS PA WHERE PA.evenement = E.id AND PA.statut = 0) > ( SELECT COUNT(PA.statut) FROM PARTICIPE AS PA  WHERE PA.evenement = E.id AND PA.statut = 1)

--question f
SELECT count(*) as nb_habitant, VILLE.nom FROM VILLE, MEMBRE WHERE departement = "Paris" AND VILLE.id = MEMBRE.ville_residence GROUP BY VILLE.id;

--question g
SELECT AVG(YEAR(NOW()) - YEAR(date_naissance)) as age_moyen_like_h3 FROM MEMBRE, INTERESSE, PAGES WHERE INTERESSE.pages = PAGES.id AND INTERESSE.membre = MEMBRE.id AND PAGES.nom = "H3 Hitema" AND INTERESSE.aime = 1

--question h
SELECT prenom, nom, ville_naissance, ville_residence FROM MEMBRE WHERE ville_naissance = ville_residence;

--question i
SELECT MAX(YEAR(NOW()) - YEAR(date_naissance)) AS age FROM MEMBRE;

--question j
SELECT nom,COUNT(*) AS apparition FROM MEMBRE GROUP BY nom ORDER BY apparition desc limit 1;

--question k
SELECT prenom, nom, image, COUNT(*) as apparition FROM IDENTIFIE, MEMBRE WHERE IDENTIFIE.membre = MEMBRE.id GROUP BY MEMBRE ORDER BY apparition desc limit 1;

--question l
SELECT prenom, MEMBRE.nom, departement.nom as departement, date_aime FROM MEMBRE, VILLE, DEPARTEMENT, INTERESSE WHERE VILLE.id = ville_residence AND DEPARTEMENT.nom = VILLE.departement AND DEPARTEMENT.nom = 'Haute-Vienne' AND INTERESSE.membre = MEMBRE.id AND 16 < DAY(date_aime) < 24 AND MONTH(date_aime) = 1 AND YEAR(date_aime) = 2021;