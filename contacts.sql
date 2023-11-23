DROP DATABASE IF EXISTS exo_contacts;

Create database IF NOT EXISTS exo_contacts CHARACTER set "utf8" COLLATE = "utf8_general_ci";

USE exo_contacts;

CREATE TABLE contacts (
    id INT UNSIGNED PRIMARY KEY auto_increment,
    nom VARCHAR(70) NOT NULL,
    prenom VARCHAR(70) NOT NULL,
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT,
    code_postal VARCHAR(10),
    ville VARCHAR(70),
    pays VARCHAR(3),
    FOREIGN KEY(pays) REFERENCES pays_iso(iso_3)
);

INSERT INTO contacts (nom,prenom,date_de_naissance,sexe,adresse,code_postal,ville,pays)





CREATE TABLE pays_iso (
        iso_3 CHAR(3)PRIMARY KEY,
        nom VARCHAR(70),
        iso_2 VARCHAR(2),
        nationalite VARCHAR(50)
);

INSERT INTO pays_iso (iso_3,nom,iso_2,nationalite) VALUES
('FRA','France','FR','Française');

SHOW DATABASES;

SHOW TABLES;

DESCRIBE contacts;