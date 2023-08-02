
CREATE TABLE evenements_tulutz(
id_et INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
nom_evenement_et VARCHAR(100),
date_et DATE DEFAULT NULL,
type_evenement_ie VARCHAR(100) NOT NULL,
ville_evenement_ie VARCHAR(100) NOT NULL,
commentaires_materiaux_ie VARCHAR(255)
);


CREATE TABLE partenaires(
id_ip INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
nom_ip VARCHAR(100) NOT NULL,
prenom_ip VARCHAR(100) NOT NULL,
mail_ip VARCHAR(255) NOT NULL,
telephone_ip  VARCHAR(13) NOT NULL,
ville_ip VARCHAR(100) NOT null
);

CREATE TABLE membres_tulutz(
id_mt INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
nom_mt VARCHAR(100) NOT NULL,
prenom_mt VARCHAR(100) NOT NULL,
mail_mt VARCHAR(255) NOT NULL,
telephone_mt  VARCHAR(13) NOT NULL,
responsabilite_mt VARCHAR(100) NOT null
);

CREATE TABLE memebre_responsable_evenement(
id_evenement_mre INTEGER,
id_membre_mre INTEGER,
PRIMARY KEY (id_evenement_mre, id_membre_mre),
FOREIGN key (id_evenement_mre) REFERENCES evenements_tulutz(id_et),
FOREIGN key (id_membre_mre) REFERENCES membres_tulutz(id_mt)
);

CREATE TABLE partenaire_responsable_evenement(
id_evenement_pre INTEGER,
id_partenaire_pre INTEGER, 
PRIMARY KEY (id_evenement_pre, id_partenaire_pre),
FOREIGN key (id_evenement_pre) REFERENCES evenements_tulutz(id_et),
FOREIGN key (id_partenaire_pre) REFERENCES partenaires(id_ip)
);
