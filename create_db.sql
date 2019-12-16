
CREATE SEQUENCE public.boisson_id_seq;

CREATE TABLE public.boisson (
                id_boisson INTEGER NOT NULL DEFAULT nextval('public.boisson_id_seq'),
                nom_boisson VARCHAR NOT NULL,
                prix_boisson DOUBLE PRECISION NOT NULL,
                quantite_boisson INTEGER,
                CONSTRAINT boisson_pk PRIMARY KEY (id_boisson)
);


ALTER SEQUENCE public.boisson_id_seq OWNED BY public.boisson.id_boisson;

CREATE SEQUENCE public.pizza_id_pizza_seq;

CREATE TABLE public.pizza (
                id_pizza INTEGER NOT NULL DEFAULT nextval('public.pizza_id_pizza_seq'),
                nom_pizza VARCHAR NOT NULL,
                prix_pizza VARCHAR NOT NULL,
                base_creme BOOLEAN NOT NULL,
                CONSTRAINT pizza_pk PRIMARY KEY (id_pizza)
);


ALTER SEQUENCE public.pizza_id_pizza_seq OWNED BY public.pizza.id_pizza;

CREATE SEQUENCE public.personne_id_seq;

CREATE TABLE public.personne (
                id_personne INTEGER NOT NULL DEFAULT nextval('public.personne_id_seq'),
                nom VARCHAR NOT NULL,
                prenom VARCHAR NOT NULL,
                rue VARCHAR NOT NULL,
                code_postal VARCHAR NOT NULL,
                ville VARCHAR NOT NULL,
                date_arrivee DATE NOT NULL,
                client BOOLEAN NOT NULL,
                CONSTRAINT personne_pk PRIMARY KEY (id_personne)
);


ALTER SEQUENCE public.personne_id_seq OWNED BY public.personne.id_personne;

CREATE SEQUENCE public.personne_id_seq_1_1;

CREATE TABLE public.utilisateur (
                id_personne INTEGER NOT NULL DEFAULT nextval('public.personne_id_seq_1_1'),
                matricule INTEGER NOT NULL,
                fonction VARCHAR NOT NULL,
                CONSTRAINT utilisateur_pk PRIMARY KEY (id_personne)
);


ALTER SEQUENCE public.personne_id_seq_1_1 OWNED BY public.utilisateur.id_personne;

CREATE SEQUENCE public.personne_id_seq_1;

CREATE TABLE public.client (
                id_personne INTEGER NOT NULL DEFAULT nextval('public.personne_id_seq_1'),
                adresse_mail VARCHAR NOT NULL,
                CONSTRAINT client_pk PRIMARY KEY (id_personne)
);


ALTER SEQUENCE public.personne_id_seq_1 OWNED BY public.client.id_personne;

CREATE SEQUENCE public.commande_numero_commande_seq;

CREATE TABLE public.commande (
                numero_commande INTEGER NOT NULL DEFAULT nextval('public.commande_numero_commande_seq'),
                id_client INTEGER NOT NULL,
                date_commande TIMESTAMP NOT NULL,
                prix_commande VARCHAR NOT NULL,
                statut_commande VARCHAR NOT NULL,
                date_livraison TIMESTAMP,
                CONSTRAINT commande_pk PRIMARY KEY (numero_commande)
);


ALTER SEQUENCE public.commande_numero_commande_seq OWNED BY public.commande.numero_commande;

CREATE SEQUENCE public.quantiteboissonparcommande_numero_commande_seq;

CREATE TABLE public.quantite_boisson_par_commande (
                numero_commande INTEGER NOT NULL DEFAULT nextval('public.quantiteboissonparcommande_numero_commande_seq'),
                id_boisson INTEGER NOT NULL,
                quantite INTEGER NOT NULL,
                CONSTRAINT quantite_boisson_par_commande_pk PRIMARY KEY (numero_commande, id_boisson)
);


ALTER SEQUENCE public.quantiteboissonparcommande_numero_commande_seq OWNED BY public.quantite_boisson_par_commande.numero_commande;

CREATE TABLE public.quantite_pizza_par_commande (
                numero_commande INTEGER NOT NULL,
                id_pizza INTEGER NOT NULL,
                quantite INTEGER NOT NULL,
                CONSTRAINT quantite_pizza_par_commande_pk PRIMARY KEY (numero_commande, id_pizza)
);


CREATE SEQUENCE public.facture_numero_facture_seq;

CREATE SEQUENCE public.facture_numero_commande_seq;

CREATE TABLE public.facture (
                numero_facture INTEGER NOT NULL DEFAULT nextval('public.facture_numero_facture_seq'),
                numero_commande INTEGER NOT NULL DEFAULT nextval('public.facture_numero_commande_seq'),
                date_facture TIMESTAMP NOT NULL,
                nom_pizzeria VARCHAR NOT NULL,
                prix DOUBLE PRECISION NOT NULL,
                CONSTRAINT facture_pk PRIMARY KEY (numero_facture)
);


ALTER SEQUENCE public.facture_numero_facture_seq OWNED BY public.facture.numero_facture;

ALTER SEQUENCE public.facture_numero_commande_seq OWNED BY public.facture.numero_commande;

CREATE SEQUENCE public.pizzeria_id_seq;

CREATE TABLE public.pizzeria (
                id_pizzeria INTEGER NOT NULL DEFAULT nextval('public.pizzeria_id_seq'),
                nom_pizzeria VARCHAR NOT NULL,
                nom_rue VARCHAR NOT NULL,
                code_postal INTEGER NOT NULL,
                nom_ville VARCHAR NOT NULL,
                telephone VARCHAR NOT NULL,
                horaire VARCHAR NOT NULL,
                CONSTRAINT pizzeria_pk PRIMARY KEY (id_pizzeria)
);


ALTER SEQUENCE public.pizzeria_id_seq OWNED BY public.pizzeria.id_pizzeria;

CREATE SEQUENCE public.ingredient_id_ingredient_seq;

CREATE TABLE public.ingredient (
                id_ingredient INTEGER NOT NULL DEFAULT nextval('public.ingredient_id_ingredient_seq'),
                nom_ingredient VARCHAR NOT NULL,
                parent_id_ingredient INTEGER NOT NULL,
                id_pizzeria INTEGER NOT NULL,
                prix_ingredients DOUBLE PRECISION,
                quantite INTEGER,
                CONSTRAINT ingredient_pk PRIMARY KEY (id_ingredient)
);


ALTER SEQUENCE public.ingredient_id_ingredient_seq OWNED BY public.ingredient.id_ingredient;

CREATE TABLE public.composition_pizza (
                id_pizza INTEGER NOT NULL,
                id_ingredient INTEGER NOT NULL,
                CONSTRAINT composition_pizza_pk PRIMARY KEY (id_pizza, id_ingredient)
);


CREATE TABLE public.personne_pizzeria (
                id_pizzeria INTEGER NOT NULL,
                id_personne INTEGER NOT NULL,
                CONSTRAINT personne_pizzeria_pk PRIMARY KEY (id_pizzeria, id_personne)
);


CREATE SEQUENCE public.statistique_id_seq;

CREATE TABLE public.statistique (
                id_pizzeria INTEGER NOT NULL DEFAULT nextval('public.statistique_id_seq'),
                nom_pizzeria VARCHAR NOT NULL,
                nombre_pizza_vendu INTEGER NOT NULL,
                nombre_pizza_preparee INTEGER NOT NULL,
                CONSTRAINT statistique_pk PRIMARY KEY (id_pizzeria)
);


ALTER SEQUENCE public.statistique_id_seq OWNED BY public.statistique.id_pizzeria;

ALTER TABLE public.quantite_boisson_par_commande ADD CONSTRAINT boisson_boissoncommande_fk
FOREIGN KEY (id_boisson)
REFERENCES public.boisson (id_boisson)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.quantite_pizza_par_commande ADD CONSTRAINT pizza_pizzacommande_fk
FOREIGN KEY (id_pizza)
REFERENCES public.pizza (id_pizza)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.composition_pizza ADD CONSTRAINT pizza_compositionpizza_fk
FOREIGN KEY (id_pizza)
REFERENCES public.pizza (id_pizza)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.client ADD CONSTRAINT personne_client_fk
FOREIGN KEY (id_personne)
REFERENCES public.personne (id_personne)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.utilisateur ADD CONSTRAINT personne_utilisateur_fk
FOREIGN KEY (id_personne)
REFERENCES public.personne (id_personne)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.personne_pizzeria ADD CONSTRAINT personne_personnepizzeria_fk
FOREIGN KEY (id_personne)
REFERENCES public.personne (id_personne)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.commande ADD CONSTRAINT client_commande_fk
FOREIGN KEY (id_client)
REFERENCES public.client (id_personne)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.facture ADD CONSTRAINT commande_facture_fk
FOREIGN KEY (numero_commande)
REFERENCES public.commande (numero_commande)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.quantite_pizza_par_commande ADD CONSTRAINT commande_pizzacommande_fk
FOREIGN KEY (numero_commande)
REFERENCES public.commande (numero_commande)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.quantite_boisson_par_commande ADD CONSTRAINT commande_boissoncommande_fk
FOREIGN KEY (numero_commande)
REFERENCES public.commande (numero_commande)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.statistique ADD CONSTRAINT pizzeria_statistique_fk
FOREIGN KEY (id_pizzeria)
REFERENCES public.pizzeria (id_pizzeria)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.personne_pizzeria ADD CONSTRAINT pizzeria_personnepizzeria_fk
FOREIGN KEY (id_pizzeria)
REFERENCES public.pizzeria (id_pizzeria)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ingredient ADD CONSTRAINT pizzeria_ingredient_fk
FOREIGN KEY (id_pizzeria)
REFERENCES public.pizzeria (id_pizzeria)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ingredient ADD CONSTRAINT ingredient_ingredient_fk
FOREIGN KEY (parent_id_ingredient)
REFERENCES public.ingredient (id_ingredient)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.composition_pizza ADD CONSTRAINT ingredient_compositionpizza_fk
FOREIGN KEY (id_ingredient)
REFERENCES public.ingredient (id_ingredient)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
