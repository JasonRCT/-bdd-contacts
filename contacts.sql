DROP DATABASE IF EXISTS exo_contacts;

Create database IF NOT EXISTS exo_contacts CHARACTER set "utf8" COLLATE = "utf8_general_ci";

USE exo_contacts;

CREATE TABLE pays (
        iso_3 CHAR(3)PRIMARY KEY,
        nom VARCHAR(70),
        iso_2 VARCHAR(2),
        nationalite VARCHAR(50)
);

CREATE TABLE contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(70),
    prenom VARCHAR(70),
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT,
    code_postal VARCHAR(10),
    ville VARCHAR(70),
    pays_iso_3 VARCHAR(3),
    FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3)
);

CREATE TABLE telephone (
    id INT,
    id_contact INT,
    numero VARCHAR(50),
    type TINYINT, 
    FOREIGN KEY (id_contact) REFERENCES contacts(id)
);

INSERT INTO pays (iso_3,nom,iso_2,nationalite) VALUES
('FRA','France','FR','Française'),
('USA', 'États-Unis', 'US', 'Américaine'),
('CAN', 'Canada', 'CA', 'Canadienne'),
('GER', 'Allemagne', 'DE', 'Allemande'),
('JPN', 'Japon', 'JP', 'Japonaise'),
('BRA', 'Brésil', 'BR', 'Brésilienne'),
('AUS', 'Australie', 'AU', 'Australienne'),
('IND', 'Inde', 'IN', 'Indienne'),
('CHN', 'Chine', 'CN', 'Chinoise'),
('GBR', 'Royaume-Uni', 'GB', 'Britannique');

INSERT INTO contacts (nom,prenom,date_de_naissance,sexe,adresse,code_postal,ville,pays_iso_3) VALUES
('Dupont', 'Jean', '1990-05-15', 'M', '123 Rue de la Liberté', '75000', 'Paris', 'FRA'),
('Smith', 'Emily', '1985-08-22', 'F', '456 Main Street', '10001', 'New York', 'USA'),
('Tremblay', 'Michel', '1982-03-10', 'M', '789 Rue Principale', 'H2X 1Y6', 'Montréal', 'CAN'),
('Schmidt', 'Anna', '1995-11-28', 'F', '987 Hauptstraße', '10115', 'Berlin', 'GER'),
('Durand', 'Bernard', '1988-07-03', 'M', '3 Rue de la République', '84000', 'Avignon', 'FRA'),
('Oliveira', 'Isabela', '1992-09-18', 'F', '654 Avenida Paulista', '01310-000', 'São Paulo', 'BRA'),
('Smith', 'Liam', '1980-12-05', 'M', '321 Bourke Street', '3000', 'Melbourne', 'AUS'),
('Albert', 'Louis', '1987-04-20', 'M', '33 Avenue Charles De Gaulle', '13000', 'Marseille', 'FRA'),
('Terieur', 'Alain', '1993-06-15', 'M', '13 Place de la Comédie', '34000', 'Montpellier', 'FRA'),
('Terieur', 'Alex', '1984-01-30', 'F', '45 Chemin des Amandiers', '30000', 'Nîmes', 'FRA');

INSERT INTO telephone (id_contact, numero, type) VALUES
(1, '123456789', 'Mobile'),
(1, '987654321', 'Domicile'),
(2, '555111222', 'Mobile'),
(3, '999888777', 'Travail'),
(4, '333444555', 'Mobile'),
(5, '777888999', 'Domicile'),
(6, '111222333', 'Mobile'),
(7, '444555666', 'Domicile'),
(8, '666777888', 'Travail'),
(9, '888999000', 'Mobile');
