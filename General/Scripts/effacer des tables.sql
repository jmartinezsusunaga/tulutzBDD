/*EFACCER UNE CLE ETRANGERE*/

SHOW CREATE table calendrier_tulutz; /*il faut fair eun create table pour voir le nom réferencé pour la clé composée*/
ALTER TABLE calendrier_tulutz DROP CONSTRAINT calendrier_tulutz_ibfk_3; 
ALTER TABLE calendrier_tulutz DROP CONSTRAINT calendrier_tulutz_ibfk_2;
ALTER TABLE calendrier_tulutz DROP CONSTRAINT calendrier_tulutz_ibfk_1;

/*EFFACER UNE TABLE*/
DROP TABLE info_evenements ;
DROP TABLE membres_tulutz  ;
DROP TABLE info_partenaires  ;
DROP TABLE calendrier_tulutz  ;

/*Effacer une colonne*/
ALTER TABLE calendrier_tulutz  DROP COLUMN partenaire_ct;  


SHOW COLUMNS FROM calendrier_tulutz; 
SHOW COLUMNS FROM membres_tulutz;
SHOW COLUMNS FROM info_partenaires;
SHOW COLUMNS FROM info_evenements;

