/* EVENEMENT */
INSERT INTO EVENEMENT
VALUES (1, '1 rue de bretagne', STR_TO_DATE('14/02/2023 10:40:10', '%d/%m/%Y %H:%i:%s'),
        STR_TO_DATE('14/02/2023 12:40:10', '%d/%m/%Y %H:%i:%s'), 5000, 'mon_image.png');
INSERT INTO EVENEMENT
VALUES (2, '2 rue de bretagne', STR_TO_DATE('15/02/2023 10:40:10', '%d/%m/%Y %H:%i:%s'),
        STR_TO_DATE('15/02/2023 12:40:10', '%d/%m/%Y %H:%i:%s'), 5000, 'mon_image1.png');
INSERT INTO EVENEMENT
VALUES (3, '3 rue de bretagne', STR_TO_DATE('16/02/2023 10:40:10', '%d/%m/%Y %H:%i:%s'),
        STR_TO_DATE('16/02/2023 12:40:10', '%d/%m/%Y %H:%i:%s'), 5000, 'mon_image2.png');
INSERT INTO EVENEMENT
VALUES (4, '4 rue de bretagne', STR_TO_DATE('17/02/2023 10:40:10', '%d/%m/%Y %H:%i:%s'),
        STR_TO_DATE('17/02/2023 12:40:10', '%d/%m/%Y %H:%i:%s'), 5000, 'mon_image3.png');
INSERT INTO EVENEMENT
VALUES (5, '5 rue de bretagne', STR_TO_DATE('18/02/2023 10:40:10', '%d/%m/%Y %H:%i:%s'),
        STR_TO_DATE('18/02/2023 12:40:10', '%d/%m/%Y %H:%i:%s'), 5000, 'mon_image4.png');

/* BIBLIOTHEQUE PERSO */
INSERT INTO BIBLIOTHEQUE_PERSO
VALUES (1, STR_TO_DATE('18/04/2023 10:40:10', '%d/%m/%Y %H:%i:%s'));
INSERT INTO BIBLIOTHEQUE_PERSO
VALUES (2, STR_TO_DATE('19/04/2023 10:40:10', '%d/%m/%Y %H:%i:%s'));
INSERT INTO BIBLIOTHEQUE_PERSO
VALUES (3, STR_TO_DATE('20/04/2023 10:40:10', '%d/%m/%Y %H:%i:%s'));
INSERT INTO BIBLIOTHEQUE_PERSO
VALUES (4, STR_TO_DATE('21/04/2023 10:40:10', '%d/%m/%Y %H:%i:%s'));
INSERT INTO BIBLIOTHEQUE_PERSO
VALUES (5, STR_TO_DATE('22/04/2023 10:40:10', '%d/%m/%Y %H:%i:%s'));

/* ESPACE */
INSERT INTO ESPACE
VALUES (1, STR_TO_DATE('22/05/2023 10:40:10', '%d/%m/%Y %H:%i:%s'), 'image');
INSERT INTO ESPACE
VALUES (2, STR_TO_DATE('22/05/2023 10:40:10', '%d/%m/%Y %H:%i:%s'), 'video');
INSERT INTO ESPACE
VALUES (3, STR_TO_DATE('22/05/2023 10:40:10', '%d/%m/%Y %H:%i:%s'), 'texte');
INSERT INTO ESPACE
VALUES (4, STR_TO_DATE('22/05/2023 10:40:10', '%d/%m/%Y %H:%i:%s'), 'image');
INSERT INTO ESPACE
VALUES (5, STR_TO_DATE('22/05/2023 10:40:10', '%d/%m/%Y %H:%i:%s'), 'video');

/* CONVERSATION */
INSERT INTO CONVERSATION
VALUES (1, null);
INSERT INTO CONVERSATION
VALUES (2, 1);
INSERT INTO CONVERSATION
VALUES (3, null);
INSERT INTO CONVERSATION
VALUES (4, 1);
INSERT INTO CONVERSATION
VALUES (5, null);

/* DEPARTEMENT */
INSERT INTO DEPARTEMENT
VALUES ('Sommes', 80);
INSERT INTO DEPARTEMENT
VALUES ('Oise', 60);
INSERT INTO DEPARTEMENT
VALUES ('Paris', 75);
INSERT INTO DEPARTEMENT
VALUES ('Haute-Vienne', 30);
INSERT INTO DEPARTEMENT
VALUES ('Corse', 46);

/* RELATION */
INSERT INTO RELATION
VALUES (1, 1);
INSERT INTO RELATION
VALUES (2, 1);
INSERT INTO RELATION
VALUES (3, 1);
INSERT INTO RELATION
VALUES (4, 'b');
INSERT INTO RELATION
VALUES (5, 1);

/* PASSION */
INSERT INTO PASSION
VALUES ('1', 'football');
INSERT INTO PASSION
VALUES ('2', 'danse');
INSERT INTO PASSION
VALUES ('3', '??checs');
INSERT INTO PASSION
VALUES ('4', 'alcool');
INSERT INTO PASSION
VALUES ('5', 'informatique');

/* ALBUM */
INSERT INTO ALBUM
VALUES ('1', "L'amour est dans le bl??", 'priv??');
INSERT INTO ALBUM
VALUES ('2', 'La saison des salades', 'priv??');
INSERT INTO ALBUM
VALUES ('3', 'Manger des crevettes', 'priv??');
INSERT INTO ALBUM
VALUES ('4', 'Asterisque et Obelisque', 'priv??');
INSERT INTO ALBUM
VALUES ('5', 'Mes chachous', 'priv??');

/* GROUPE */
INSERT INTO GROUPE
VALUES (1, 1);
INSERT INTO GROUPE
VALUES (2, 3);
INSERT INTO GROUPE
VALUES (3, 2);
INSERT INTO GROUPE
VALUES (4, 5);
INSERT INTO GROUPE
VALUES (5, 4);

/* VILLE */
INSERT INTO VILLE
VALUES (1, 'Paris-1', '75000', 'Paris');
INSERT INTO VILLE
VALUES (2, 'Paris-2', '80000', 'Paris');
INSERT INTO VILLE
VALUES (3, 'Paris-3', '80250', 'Paris');
INSERT INTO VILLE
VALUES (4, 'Amiens', '80250', 'Sommes');
INSERT INTO VILLE
VALUES (5, 'Ailly sur noye', '75000', 'Haute-Vienne');

/* MEMBRE */
INSERT INTO MEMBRE
VALUES (1, 'Georgette', 'Zizi', 'F', STR_TO_DATE('01/12/1987', '%d/%m/%Y'), '11 rue du poisson pas n??',
        'georgette@free.fr', 100, 1, 3, 2, 5, 1);
INSERT INTO MEMBRE
VALUES (2, 'Marcus', 'Zizi', 'M', STR_TO_DATE('30/05/2000', '%d/%m/%Y'), '11 avenue de la moquette',
        'm.zizi@google.com', 100, 2, 4, 4, 3, 2);
INSERT INTO MEMBRE
VALUES (3, 'Patrice', 'Evra', 'M', STR_TO_DATE('03/07/1007', '%d/%m/%Y'), '1 rue de g??n??ral Petain',
        'allezlefoot@orange.com', 100, 3, 5, 1, 1, 1);
INSERT INTO MEMBRE
VALUES (4, 'Herv??', 'Huit', 'M', STR_TO_DATE('08/08/1888', '%d/%m/%Y'), '8 rue du grand huit', 'herve8@huit.huit', 100,
        4, 4, 4, 4, 3);
INSERT INTO MEMBRE
VALUES (5, 'Oleg', 'Magomedov', 'F', STR_TO_DATE('11/11/1987', '%d/%m/%Y'), '287 all??e de Staline',
        'st4l!n3.43vr@yahoo.ru', 100, 5, 2, 2, 5, 5);

/* ADMINISTRATEUR */
INSERT INTO ADMINISTRATEUR
VALUES (1, 2);
INSERT INTO ADMINISTRATEUR
VALUES (2, 4);
INSERT INTO ADMINISTRATEUR
VALUES (3, 1);
INSERT INTO ADMINISTRATEUR
VALUES (4, 5);
INSERT INTO ADMINISTRATEUR
VALUES (5, 3);

/* PARTICIPE */
INSERT INTO PARTICIPE
VALUES (1, 1, 1);
INSERT INTO PARTICIPE
VALUES (1, 2, 0);
INSERT INTO PARTICIPE
VALUES (1, 3, 0);
INSERT INTO PARTICIPE
VALUES (2, 1, 0);
INSERT INTO PARTICIPE
VALUES (2, 2, 0);

/* MESSAGE_POSTE */
INSERT INTO MESSAGE_POSTE
VALUES (1, 'vive rafoufoune', STR_TO_DATE('15/05/2001', '%d/%m/%Y'), 'video', 'image', 'F',
        STR_TO_DATE('16/05/2001', '%d/%m/%Y'), 1);
INSERT INTO MESSAGE_POSTE
VALUES (2, 'vive les cornichons au cassoul??', STR_TO_DATE('17/05/2001', '%d/%m/%Y'), 'text', 'image', 'M',
        STR_TO_DATE('23/05/2001', '%d/%m/%Y'), 2);
INSERT INTO MESSAGE_POSTE
VALUES (3, 'vive les bons plats en famille', STR_TO_DATE('16/05/2001', '%d/%m/%Y'), 'video', 'image', 'F',
        STR_TO_DATE('26/05/2001', '%d/%m/%Y'), 3);
INSERT INTO MESSAGE_POSTE
VALUES (4, 'vive les montagnes russes', STR_TO_DATE('20/05/2001', '%d/%m/%Y'), 'texte', 'video', 'F',
        STR_TO_DATE('31/05/2001', '%d/%m/%Y'), 4);
INSERT INTO MESSAGE_POSTE
VALUES (5, 'vive partir en vacances', STR_TO_DATE('22/05/2001', '%d/%m/%Y'), 'video', 'text', 'F',
        STR_TO_DATE('03/05/2001', '%d/%m/%Y'), 5);

/* SUGGERE_PAS */
INSERT INTO SUGGERE_PAS
VALUES (1, 3);
INSERT INTO SUGGERE_PAS
VALUES (2, 4);
INSERT INTO SUGGERE_PAS
VALUES (4, 5);
INSERT INTO SUGGERE_PAS
VALUES (2, 1);
INSERT INTO SUGGERE_PAS
VALUES (2, 5);

/* MESSAGE */
INSERT INTO MESSAGE
VALUES (1, 'coucou toi ??a va ?', STR_TO_DATE('22/05/2001', '%d/%m/%Y'), 'text', 'video', 'M', 1, 2, 3);
INSERT INTO MESSAGE
VALUES (2, 'Yo mec, je ne sais pas quoi mettre', STR_TO_DATE('24/05/2001', '%d/%m/%Y'), 'video', 'text', 'F', 2, 5, 1);
INSERT INTO MESSAGE
VALUES (3, 'vive le frigidaire', STR_TO_DATE('26/05/2001', '%d/%m/%Y'), 'text', 'video', 'M', 3, 4, 2);
INSERT INTO MESSAGE
VALUES (4, 'vive le couscous tagine canadien', STR_TO_DATE('28/05/2001', '%d/%m/%Y'), 'image', 'video', 'F', 5, 1, 5);
INSERT INTO MESSAGE
VALUES (5, 'vive ce que tu es beau le ramouchaut', STR_TO_DATE('30/05/2001', '%d/%m/%Y'), 'text', 'image', 'M', 4, 3,
        4);

/* APPARTIENT */
INSERT INTO APPARTIENT
VALUES (1, 2);
INSERT INTO APPARTIENT
VALUES (2, 3);
INSERT INTO APPARTIENT
VALUES (3, 4);
INSERT INTO APPARTIENT
VALUES (4, 5);
INSERT INTO APPARTIENT
VALUES (5, 1);

/* POSSEDE_RELATION */
INSERT INTO POSSEDE_RELATION
VALUES (1, 2, 3);
INSERT INTO POSSEDE_RELATION
VALUES (2, 3, 1);
INSERT INTO POSSEDE_RELATION
VALUES (3, 4, 5);
INSERT INTO POSSEDE_RELATION
VALUES (4, 5, 1);
INSERT INTO POSSEDE_RELATION
VALUES (5, 1, 2);

/* POSSEDE_PASSION */
INSERT INTO POSSEDE_PASSION
VALUES (1, 2);
INSERT INTO POSSEDE_PASSION
VALUES (2, 3);
INSERT INTO POSSEDE_PASSION
VALUES (3, 4);
INSERT INTO POSSEDE_PASSION
VALUES (4, 5);
INSERT INTO POSSEDE_PASSION
VALUES (5, 1);

/* IMAGE */
INSERT INTO IMAGE
VALUES (1, 'mon image', 'priv??', 1, 2);
INSERT INTO IMAGE
VALUES (2, 'mon image1', 'public', 2, 3);
INSERT INTO IMAGE
VALUES (3, 'mon image2', 'priv??', 3, 4);
INSERT INTO IMAGE
VALUES (4, 'mon image3', 'public', 4, 5);
INSERT INTO IMAGE
VALUES (5, 'mon image4', 'priv??', 5, 1);

/* COMMENTAIRE */
INSERT INTO COMMENTAIRE
VALUES (1, STR_TO_DATE('30/05/2001', '%d/%m/%Y'), 1, 2);
INSERT INTO COMMENTAIRE
VALUES (2, STR_TO_DATE('30/05/2001', '%d/%m/%Y'), 2, 3);
INSERT INTO COMMENTAIRE
VALUES (3, STR_TO_DATE('30/05/2001', '%d/%m/%Y'), 3, 4);
INSERT INTO COMMENTAIRE
VALUES (4, STR_TO_DATE('30/05/2001', '%d/%m/%Y'), 4, 5);
INSERT INTO COMMENTAIRE
VALUES (5, STR_TO_DATE('30/05/2001', '%d/%m/%Y'), 5, 1);

/* ENREGISTRE */
INSERT INTO ENREGISTRE
VALUES (1, 2);
INSERT INTO ENREGISTRE
VALUES (2, 3);
INSERT INTO ENREGISTRE
VALUES (3, 4);
INSERT INTO ENREGISTRE
VALUES (4, 5);
INSERT INTO ENREGISTRE
VALUES (5, 1);

/* PAGE */
INSERT INTO PAGES
VALUES (1, 'H3 Hitema', 2, 5, 4);
INSERT INTO PAGES
VALUES (2, 'GTA V', 4, 1, 3);
INSERT INTO PAGES
VALUES (3, 'Vogages', 1, 2, 2);
INSERT INTO PAGES
VALUES (4, 'Animal Crossing', 5, 3, 5);
INSERT INTO PAGES
VALUES (5, 'Les animaux', 5, 4, 1);

/* IDENTIFIE */
INSERT INTO IDENTIFIE
VALUES (1, 2);
INSERT INTO IDENTIFIE
VALUES (2, 4);
INSERT INTO IDENTIFIE
VALUES (3, 4);
INSERT INTO IDENTIFIE
VALUES (4, 5);
INSERT INTO IDENTIFIE
VALUES (5, 4);

/* MODERE */
INSERT INTO MODERE
VALUES (1, 2);
INSERT INTO MODERE
VALUES (2, 3);
INSERT INTO MODERE
VALUES (3, 4);
INSERT INTO MODERE
VALUES (4, 5);
INSERT INTO MODERE
VALUES (5, 1);

/* INTERESSE */
INSERT INTO INTERESSE
VALUES (1, 2, 1, STR_TO_DATE('18/01/2021', '%d/%m/%Y'));
INSERT INTO INTERESSE
VALUES (2, 1, 1, STR_TO_DATE('30/05/2021', '%d/%m/%Y'));
INSERT INTO INTERESSE
VALUES (3, 4, 1, STR_TO_DATE('19/01/2021', '%d/%m/%Y'));
INSERT INTO INTERESSE
VALUES (4, 5, null, STR_TO_DATE('20/01/2021', '%d/%m/%Y'));
INSERT INTO INTERESSE
VALUES (5, 3, null, STR_TO_DATE('30/05/2021', '%d/%m/%Y'));

/* GALERIE */
INSERT INTO GALERIE
VALUES (1, 2);
INSERT INTO GALERIE
VALUES (2, 3);
INSERT INTO GALERIE
VALUES (3, 4);
INSERT INTO GALERIE
VALUES (4, 5);
INSERT INTO GALERIE
VALUES (5, 1);