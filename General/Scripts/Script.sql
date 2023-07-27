ALTER TABLE calendrier_tulutz add column id_partenaire_ct;

add column id_membre_ct,
FOREIGN KEY (id_membre_ct) REFERENCES info_partenaires(id_mt),