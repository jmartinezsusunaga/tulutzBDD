# Projet Asso
## BDD

```mermaid
erDiagram
    
    Utilisateur ||--|{ Utilisateur_evenemments : ""
    evenements ||--|{ Utilisateur_evenemments : ""

 
    Utilisateur {
        int id_uti PK "NOT NULL AUTO_INCREMENT"
        Date date_naissance_uti "NOT NULL"
        string mdp_uti "NOT NULL Max ?? caracteres"
        string nom_uti "NOT NULL Max 100 caracteres"
        string prenom_uti "NOT NULL Max 100 caracteres"
        string mail_uti "NOT NULL Max 100 caracteres"
        string droits_uti "NOT NULL Max 100 caracteres"
        string personnalite_juridique_uti "NOT NULL Max 100 caracteres (Cela aura comme valeurs = Association, Artiste)"
        string nom_artistique_uti "NOT NULL Max 100 caracteres"
        string photo_uti "Max 1000 caracteres"
        string type_poste_association_uti "NOT NULL Max 100 caracteres (si association ça valeur sera = Président, tresorier, vice-président etc)"
        string bio_art "NOT NULL Max 1000 caracteres"
        string lien_instagram_art "Max 1000 caracteres"
        string lien_soundCloud_art "Max 1000 caracteres" 
        string lien_facebook_art "Max 1000 caracteres"
        string lien_spotify_art "Max 1000 caracteres"
        string lien_youtube_art "Max 1000 caracteres"
        string logo_ass_art "Max 1000 caracteres"
    }

    Utilisateur_evenemments {
        int Utilisateur_evenemments_ue PK "NOT NULL AUTO_INCREMENT"
        int id_utilisateur_ue FK
        int id_evenement_ue FK
        Date heure_passage_ue
        string visuel_artiste_ue
    }

  
    evenements {
        int id_ev PK "NOT NULL AUTO_INCREMENT"
        string nom_ev "NOT NULL Max 100 caracteres"
        string lieu_ev "NOT NULL Max 100 caracteres"
        Date date_ev "NOT NULL"
        int capacite_event_ev "NOT NULL"
        string visuel_facebook_ev " Max 1000 caracteres"
        string visuel_insta_poste_ev "Max 1000 caracteres"
        string visuel_insta_story_ev "Max 1000 caracteres"
    }


```
## Diagrame de classes
```mermaid
classDiagram
    note "From Utilisateur till Associations "
    Animal <|-- Utilisateur
    note for Utilisateur "can fly\ncan swim\ncan dive\ncan help in debugging"
    Animal <|-- Artistes
    Animal <|-- Associations 
    Animal : +int age
    Animal : +String gender
    Animal: +isMammal()
    Animal: +mate()
    class Utilisateur{
        -id_uti : int
        -nom_uti : string
        -prenom_uti : string
        -mail_uti : string
        -droits_uti : string
        -date_naissance_uti : Date
        -personnalite_juridique_uti : boolean
        -id_association_uti : int
        +xxx()
        +yyy()
    }
    class Artistes{
        -int sizeInFeet
        -canEat()
    }
    class Association {
        +bool is_wild
        +run()
    }
    class Associations {
        +bool is_wild
        +run()
    }

```