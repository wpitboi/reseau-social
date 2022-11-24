CREATE TABLE EVENEMENT
(
    id               INTEGER PRIMARY KEY,
    adresse          VARCHAR(100),
    date_debut       DATE,
    date_fin         DATE,
    max_participants INTEGER,
    image            VARCHAR(100)
);

CREATE TABLE BIBLIOTHEQUE_PERSO
(
    id         INTEGER PRIMARY KEY,
    date_ajout DATE
);

CREATE TABLE ESPACE
(
    id               INTEGER PRIMARY KEY,
    date_publication DATE,
    type             VARCHAR(30)
);

CREATE TABLE CONVERSATION
(
    id      INTEGER PRIMARY KEY,
    accepte BOOL
);

CREATE TABLE DEPARTEMENT
(
    nom    VARCHAR(30) PRIMARY KEY,
    numero INTEGER
);

CREATE TABLE RELATION
(
    id     INTEGER PRIMARY KEY,
    statut CHAR(1)
);

CREATE TABLE PASSION
(
    id  INTEGER PRIMARY KEY,
    nom VARCHAR(20)
);

CREATE TABLE ALBUM
(
    id     INTEGER PRIMARY KEY,
    titre  VARCHAR(50),
    statut VARCHAR(15)
);

CREATE TABLE GROUPE
(
    id        INTEGER PRIMARY KEY,
    evenement INTEGER NOT NULL REFERENCES EVENEMENT (id)
);

CREATE TABLE VILLE
(
    id          INTEGER PRIMARY KEY,
    nom         VARCHAR(50),
    code_postal CHAR(5),
    departement VARCHAR(30) NOT NULL REFERENCES DEPARTEMENT (nom)
);

CREATE TABLE MEMBRE
(
    id              INTEGER PRIMARY KEY,
    prenom          VARCHAR(50),
    nom             VARCHAR(50),
    sexe            CHAR(1),
    date_naissance  DATE,
    adresse         VARCHAR(100),
    email           VARCHAR(100),
    invit_restantes INTEGER,
    espace          INTEGER NOT NULL REFERENCES ESPACE (id),
    bibliotheque    INTEGER NOT NULL REFERENCES BIBLIOTHEQUE_PERSO (id),
    groupe          INTEGER REFERENCES GROUPE (id),
    ville_naissance INTEGER NOT NULL REFERENCES VILLE (id),
    ville_residence INTEGER NOT NULL REFERENCES VILLE (id)
);

CREATE TABLE ADMINISTRATEUR
(
    evenement INTEGER REFERENCES EVENEMENT (id),
    membre    INTEGER REFERENCES MEMBRE (id),
    PRIMARY KEY (evenement, membre)
);

CREATE TABLE PARTICIPE
(
    evenement INTEGER REFERENCES EVENEMENT (id),
    membre    INTEGER REFERENCES MEMBRE (id),
    statut    BOOL,
    PRIMARY KEY (evenement, membre)
);

CREATE TABLE MESSAGE_POSTE
(
    id               INTEGER PRIMARY KEY,
    contenu          VARCHAR(500),
    date_envoi       DATE,
    type_1           VARCHAR(15),
    type_2           VARCHAR(15),
    genre            CHAR(1),
    date_publication DATE,
    membre           INTEGER NOT NULL REFERENCES MEMBRE (id)
);

CREATE TABLE SUGGERE_PAS
(
    membre INTEGER REFERENCES MEMBRE (id),
    espace INTEGER REFERENCES ESPACE (id),
    PRIMARY KEY (membre, espace)
);

CREATE TABLE MESSAGE
(
    id           INTEGER PRIMARY KEY,
    centenu      VARCHAR(500),
    date_envoi   DATE,
    type_1       VARCHAR(15),
    type_2       VARCHAR(15),
    genre        CHAR(1),
    membre       INTEGER NOT NULL REFERENCES MEMBRE (id),
    conversation INTEGER NOT NULL REFERENCES CONVERSATION (id),
    espace       INTEGER NOT NULL REFERENCES ESPACE (id)
);

CREATE TABLE APPARTIENT
(
    membre       INTEGER REFERENCES MEMBRE (id),
    conversation INTEGER REFERENCES CONVERSATION (id),
    PRIMARY KEY (membre, conversation)
);

CREATE TABLE POSSEDE_RELATION
(
    relation INTEGER REFERENCES RELATION (id),
    membre_1   INTEGER REFERENCES MEMBRE (id),
    membre_2   INTEGER REFERENCES MEMBRE (id),
    PRIMARY KEY (relation, membre_1, membre_2)
);

CREATE TABLE POSSEDE_PASSION
(
    passion INTEGER REFERENCES PASSION (id),
    membre  INTEGER REFERENCES MEMBRE (id),
    PRIMARY KEY (passion, membre)
);

CREATE TABLE IMAGE
(
    id      INTEGER PRIMARY KEY,
    contenu VARCHAR(500),
    statut  VARCHAR(15),
    auteur  INTEGER NOT NULL REFERENCES MEMBRE (id),
    album   INTEGER NOT NULL REFERENCES ALBUM (id)
);

CREATE TABLE COMMENTAIRE
(
    id            INTEGER PRIMARY KEY,
    date_publi    DATE,
    message_poste INTEGER NOT NULL REFERENCES MESSAGE_POSTE (id),
    membre        INTEGER NOT NULL REFERENCES MEMBRE (id)
);

CREATE TABLE ENREGISTRE
(
    message_poste      INTEGER REFERENCES MESSAGE_POSTE (id),
    bibliotheque_perso INTEGER REFERENCES BIBLIOTHEQUE_PERSO (id),
    PRIMARY KEY (message_poste, bibliotheque_perso)
);

CREATE TABLE PAGES
(
    id             INTEGER PRIMARY KEY,
    nom            VARCHAR(50),
    administrateur INTEGER NOT NULL REFERENCES MEMBRE (id),
    illustre       INTEGER NOT NULL REFERENCES IMAGE (id),
    passion        INTEGER NOT NULL REFERENCES PASSION (id)
);

CREATE TABLE IDENTIFIE
(
    image  INTEGER REFERENCES IMAGE (id),
    membre INTEGER REFERENCES MEMBRE (id),
    PRIMARY KEY (image, membre)
);

CREATE TABLE MODERE
(
    pages  INTEGER REFERENCES PAGES (id),
    membre INTEGER REFERENCES MEMBRE (id),
    PRIMARY KEY (pages, membre)
);

CREATE TABLE INTERESSE
(
    pages  INTEGER REFERENCES PAGES (id),
    membre INTEGER REFERENCES MEMBRE (id),
    aime   BOOL,
    date_aime DATE,
    PRIMARY KEY (pages, membre)
);

CREATE TABLE GALERIE
(
    pages INTEGER REFERENCES PAGES (id),
    image INTEGER REFERENCES IMAGE (id),
    PRIMARY KEY (pages, image)
);
