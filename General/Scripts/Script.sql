
/*SERIAL PRIMARY key =  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY*/
CREATE TABLE utilisateur(
id_uti SERIAL PRIMARY key,
date_naissance_uti DATE DEFAULT NULL,
mdp_uti VARCHAR(256),
nom_uti VARCHAR(100),
prenom_uti VARCHAR(100) NOT NULL,
mail_uti VARCHAR(100) NOT NULL,
droits_uti VARCHAR(50),
personnalite_juridique_uti VARCHAR(50) NOT NULL,
nom_artisttique_uti VARCHAR(50) NOT NULL,
photo_uti VARCHAR(1000) NOT NULL,
type_poste_association_uti VARCHAR(50) NOT NULL,
bio_art VARCHAR(1000) NOT NULL,
lien_instagram_art VARCHAR(1000) NOT NULL,
lien_soundCloud_art VARCHAR(1000) NOT NULL,
lien_facebook_art VARCHAR(1000) NOT NULL,
lien_spotify_art VARCHAR(1000) NOT NULL,
lien_youtube_art VARCHAR(1000) NOT NULL,
logo_ass_art VARCHAR(1000) NOT NULL
);


CREATE TABLE evenements(
id_ev SERIAL PRIMARY KEY,
nom_ev VARCHAR(100) NOT NULL,
lieu_ev VARCHAR(100) NOT NULL,
date_ev DATE DEFAULT NULL,
capacite_event_ev INTEGER NOT NULL,
visuel_facebook_ev VARCHAR(100) NOT NULL,
visuel_insta_poste_ev VARCHAR(100) NOT NULL,
visuel_insta_story_ev VARCHAR(1000) NOT null
);


CREATE TABLE Utilisateur_evenemments(
id_utilisateur_ue INTEGER,
id_evenement_ue INTEGER,
heure_passage_ue DATE,
visuel_artiste_ue VARCHAR(1000),
PRIMARY KEY (id_utilisateur_ue, id_evenement_ue),
FOREIGN key (id_utilisateur_ue) REFERENCES utilisateur(id_uti),
FOREIGN key (id_evenement_ue) REFERENCES evenements(id_ev)
);

ALTER TABLE calendrier_tulutz ADD FOREIGN KEY (id_partenaire_ct) REFERENCES info_partenaires(id_ip);


select * from test;
select * from evenements;
select * from utilisateur;
select * from utilisateur_evenemments;

INSERT INTO test VALUES (1,'jenja','2023-09-08'),
(2,'biken bass','2023-03-08'),
(3,'posage Tulutz','2023-10-08'),
(4,'alleycat','2023-10-20');


select * from test_2;

CREATE TABLE test_2(
id_evenement_mre INTEGER,
membre VARCHAR(100) NOT NULL,
FOREIGN key (id_evenement_mre) REFERENCES test(id_test)
);

INSERT INTO test_2 VALUES (1,'joshua'),
(2,'lol'),
(3,'cam'),
(4,'Megane');

INSERT INTO utilisateur VALUES (1,'1995-08-13','Jonathan1995','Martinez','Jonathan','jonathan@gmail.com','Admin','perNat','','','','','','','','','',''),
(2,'1996-08-09','Mathilde1996','Vodka','Mathilde','Mathilde@gmail.com','Creator','perNat','','','','','','','','','',''),
(3,'1997-07-15','Lucie1997','Bonnet','Lucie','Lucie@gmail.com','artiste','perNat','JMS','','','','','','','','',''),
(4,'1998-06-11','Aura1998','Susunaga','Aura','Aura@gmail.com','participant','perNat','','','','','','','','','',''),
(5,'2018-05-17','ExoSound1999','','','exosound@gmail.com','Creator','Association','Exo Sound','','','','','','','','','');

INSERT INTO evenements VALUES (1,'Exo festival','La crousette','2024-07-20','420','','',''),
(2,'Exo Jenja','Toulouse','2024-03-09','40','','',''),
(3,'Ipitoal','Le mase dazil','2024-08-13','60','','',''),
(4,'Soytek','Bordeaux','2024-12-16','1000','','',''),
(5,'Sun Systeme','Pau','2024-06-14','70','','','');

INSERT INTO utilisateur_evenemments VALUES (1,1,'2023-10-20 05:06:11',''),
(1,2,'2023-10-20 05:06:11',''),
(5,1,'2023-10-20 05:06:11',''),
(5,2,'2023-10-20 05:06:11',''),
(2,2,'2023-10-20 05:06:11',''),
(3,3,'2023-10-20 05:06:11',''),
(4,3,'2023-10-20 05:06:11',''),
(1,5,'2023-10-20 05:06:11',''),
(5,4,'2023-10-20 05:06:11','');