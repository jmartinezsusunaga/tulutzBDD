
CREATE TABLE calendrier_tulutz(
id_ct INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
nom_evenement_ct VARCHAR(100),
est_collaboration_ct BOOLEAN,
partenaire_ct VARCHAR(255),
membre_tulutz_ct VARCHAR(100) NOT NULL
);

CREATE TABLE info_evenements(
nom_evenement_ie VARCHAR(100) NOT NULL,
date_ie DATE DEFAULT NULL,
type_evenement_ie VARCHAR(100) NOT NULL,
ville_evenement_ie VARCHAR(100) NOT NULL,
est_materiaux_ie BOOLEAN,
commentaires_materiaux_ie VARCHAR(255)
);

ALTER TABLE info_evenements ADD PRIMARY KEY(nom_evenement_ie, date_ie);

CREATE TABLE info_partenaires(
id_ip INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
nom_ip VARCHAR(100) NOT NULL,
prenom_ip VARCHAR(100) NOT NULL,
mail_ip VARCHAR(255) NOT NULL,
telephone_ip  VARCHAR(13) NOT NULL,
ville_ip VARCHAR(100) NOT NULL
);

CREATE TABLE membres_tulutz(
id_mt INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
nom_mt VARCHAR(100) NOT NULL,
prenom_mt VARCHAR(100) NOT NULL,
mail_mt VARCHAR(255) NOT NULL,
telephone_mt  VARCHAR(13) NOT NULL,
responsabilite_mt VARCHAR(100) NOT NULL
);