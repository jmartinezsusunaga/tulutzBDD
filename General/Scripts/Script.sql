/*Créer une colonne*/
ALTER TABLE calendrier_tulutz ADD COLUMN id_partenaire_ct INTEGER NOT NULL;

/*Effacer une colonne*/
ALTER TABLE calendrier_tulutz  DROP COLUMN partenaire_ct;  

/*Montrer les colonnes d'une table*/
SHOW COLUMNS FROM calendrier_tulutz; 

/*Ajouter une cléf étrangère*/
ALTER TABLE calendrier_tulutz ADD FOREIGN KEY (id_partenaire_ct) REFERENCES info_partenaires(id_ip);

ALTER TABLE calendrier_tulutz ADD FOREIGN KEY (id_membre_ct) REFERENCES membres_tulutz(id_mt);

ALTER TABLE calendrier_tulutz ADD FOREIGN KEY (nom_evenement_ct) REFERENCES info_evenements(nom_evenement_ie, date_ie);

/*Une clé primaire répresentée en deux colonnes*/
ALTER TABLE calendrier_tulutz ADD FOREIGN KEY(nom_evenement_ct, date_ct) REFERENCES info_evenements(nom_evenement_ie, date_ie);



