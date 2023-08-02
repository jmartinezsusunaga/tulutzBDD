/*Ajout de données sur les tables*/
INSERT INTO calendrier_tulutz VALUES (1,'AlleyPhante',1,2,1,'2023-09-08'),
(2,'AlleyFast',1,2,2,'2023-03-08'),
(3,'AlleyCat Tulutz',1,2,3,'2023-10-08'),
(4,'Tulutz vol de nuit',1,2,4,'2023-08-25'),
(5,'Posage',0,2,5,'2023-10-20');

INSERT INTO membres_tulutz VALUES (1,'Megane','je sais pas', 'megan@gmail.com','0611852065','Documentation'),
(2,'Matthias','Pedron', 'macci@gmail.com','0611852065','Tricks'),
(3,'Vittorio','Pomphile', 'vitto@gmail.com','0611852065','Tricks'),
(4,'Lucie','Bonnet viala', 'lucieBonnet@gmail.com','0611852065','Gestion devenements'),
(5,'Yanick','je sais pas', 'yanick@gmail.com','0611852065','Tricks'),
(6,'Jonathan','Martinez Susunaga', 'dub.jona@gmail.com','0611755036','Gestion devenements');

INSERT INTO info_partenaires VALUES (1,'','La mousseuse', 'mousseuse@gmail.com','','Bordeaux'),
(2,'','Nantes Fixie Crew', 'nantesfixiecrew@gmail.com','','Nantes'),
(3,'','Tolosa', 'tolosa@gmail.com','','Toulouse'),
(4,'','Vélo Fatal Crew', 'velofatalcrew@gmail.com','','Toulouse');

INSERT INTO info_evenements VALUES ('La mousseuse', '2018-10-20', 'Course gravel','Bordeaux',0,'Réunion première semaine daout'),
('AlleyPhante', '2023-09-08', 'Alleycat','Nantes',0,''),
('Tulutz Week-end', '2024-03-08', 'Alleycat + soirée','Toulouse',1,'Première réunion début année pro'),
('AlleyFast', '2023-03-08', 'Alleycat + soirée','Lyon',0,''),
('AlleyCat Tulutz', '2023-10-08', 'Alleycat + soirée','Toulouse',1,'voir avec les orga de la bike and bass'),
('Tulutz vol de nuit', '2023-08-25', 'ride + soirée','Toulouse',1,'Récuperer les info avec Raven'),
('Posage', '2023-10-20', 'posage','Toulouse',0,'');


ALTER TABLE info_evenements ALTER COLUMN est_materiaux_ie BO;

SHOW COLUMNS FROM calendrier_tulutz; 
SHOW COLUMNS FROM membres_tulutz;
SHOW COLUMNS FROM info_partenaires;
SHOW COLUMNS FROM info_evenements;


select * from membres_tulutz;
select * from info_partenaires;
select * from calendrier_tulutz;
select * from info_evenements;
