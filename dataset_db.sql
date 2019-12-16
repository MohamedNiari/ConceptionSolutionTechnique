 INSERT INTO public.pizzeria (id_pizzeria, nom_pizzeria, nom_rue, code_postal, nom_ville, telephone, horaire)
 VALUES
 (1, 'Pizza Lyonnaise', 'Rue de Tivoli', 69007, 'Lyon', '04 37 66 27 13','10h/14h - 18h/23h'),
 (2, 'Pizzeria Mami Mia', 'Avenue de l"Industrie', 13009, 'Marseille', '04 91 24 90 63', '11h/15h - 18h/00h'),
 (3, 'Pizza du Sud-Ouest', 'Rue Daux', 33002, 'Bordeaux', '05 56 81 53 34', '11h/13h - 19h/22h' ),
 (4, 'Pizzeria de la gare', 'Place de la Gare', 59004, 'Lille', '03 20 15 93 40', '11h/14h - 19h/22h'),
 (5, 'La parisienne pizza', 'Rue du port', 75014, 'Paris', '01 44 27 04 94', '10h/15h - 19h/23h');
 
 
 INSERT INTO public.personne (id_personne, nom, prenom, rue, code_postal, ville, date_arrivee, client)
 VALUES
 (1, 'Durand', 'Beatrice', 'Rue des Flandres', 69009, 'Lyon', '15/09/2004', false),
 (2, 'Tamouaf', 'Rachid', 'Route de l"Espoir', 69002, 'Lyon', '20/10/2009', false),
 (3, 'Ling', 'Chai', 'Rue Funes', 69001, 'Lyon', '15/08/2018', true),
 (4, 'Desouza', 'Roberto', 'Place du Marche', 69100, 'Villeurbanne', '10/09/2017', true),
 (5, 'Scott', 'Andrew', 'Rue du Jardin', 69094, 'Lyon', '15/01/2016', true),
 (6, 'Tourteau', 'Monique', 'Rue de Sacari', 13007, 'Marseille', '12/04/2014', false),
 (7, 'Chimenez', 'Layla', 'Avenue de l"Europe', 13009, 'Marseille', '18/08/2016', false),
 (8, 'Tomer', 'Gul', 'Rue du Temple', 13002, 'Marseille', '16/07/2015', true),
 (9, 'Groize', 'Julien', 'Place du Village', 13004, 'Marseille', '14/07/2013', true),
 (10, 'Vanger', 'Stephanie', 'Rue du Vieux-Port', 13814, 'Aix-en-Provence', '11/02/2012', true),
 (11, 'Beau', 'Emilien', 'Rue de Houeye', 33007, 'Bordeaux', '11/04/2011', false),
 (12, 'Benalle', 'Aziz', 'Avenue Truman', 33009, 'Bordeaux', '12/07/2006', false),
 (13, 'Sanchez', 'Claudio', 'Rue du CostaRica', 33002, 'Bordeaux', '12/03/2013', false),
 (14, 'Moure', 'Capucine', 'Place de l"etoile', 33004, 'Bordeaux', '16/02/2009', true),
 (15, 'Simon', 'Jacob', 'Rue Victor Hugo', 33015, 'Begle', '19/04/2013', true),
 (16, 'Masson', 'Philippe', 'Rue de Lyon', 59007, 'Lille', '25/04/2017', false),
 (17, 'Dupres', 'Veronique', 'Avenue Jean Jaures', 59009, 'Lille', '21/02/2013', false),
 (18, 'Sourde', 'Caroline', 'Rue De Docks', 59002, 'Lille', '17/03/2014', false),
 (19, 'Dercoute', 'Fabien', 'Place des Jacobins', 59004, 'Lille', '22/04/2018', true),
 (20, 'Montagne', 'Andree', 'Rue du Commerce', 59014, 'Valenciennes', '12/07/2015', true), 
 (21, 'Salvio', 'Eric', 'Rue de Venise', 75007, 'Paris', '17/04/2012', false),
 (22, 'Tocky', 'Jordan', 'Avenue Tolstoi', 75009, 'Paris', '19/02/2015', false),
 (23, 'Courete', 'Florence', 'Rue Jean du Moulin', 75002, 'Paris', '11/03/2016', false),
 (24, 'Faure', 'Denis', 'Place de l"hirondelle', 75004, 'Paris', '12/09/2018', true),
 (25, 'Wootz', 'Antony', 'Rue du courage', 75014, 'Paris', '07/02/2016', true);
 
 
 INSERT INTO personne_pizzeria (id_pizzeria, id_personne)
 VALUES
 (1, 1),
 (1, 2),
 (1, 3),
 (1, 4),
 (1, 5),
 (2, 6),
 (2, 7),
 (2, 8),
 (2, 9),
 (2, 10),
 (3, 11),
 (3, 12),
 (3, 13),
 (3, 14),
 (3, 15),
 (4, 16),
 (4, 17),
 (4, 18),
 (4, 19),
 (4, 20), 
 (5, 21),
 (5, 22),
 (5, 23),
 (5, 24),
 (5, 25);
 
 
 INSERT INTO public.statistique (id_pizzeria, nom_pizzeria, nombre_pizza_vendu, nombre_pizza_preparee)
 VALUES
 (1, 'Pizza Lyonnaise', 1948, 2009),
 (2, 'Pizzeria Mami Mia', 1533, 1698),
 (3, 'Pizza du Sud-Ouest', 1234, 1289),
 (4, 'Pizzeria de la gare', 1422, 1467),
 (5, 'La parisienne pizza', 4567, 4790);
 
 
 INSERT INTO public.client (id_personne, adresse_mail)
 VALUES
 (3, 'Ling.Chai@hotmail.fr'),
 (4, 'Doudou212@gmail.com'),
 (5, 'Scotty@free.fr'),
 (8, 'Gul25@free.fr'),
 (9, 'Julien.Groize@hotmail.fr'),
 (10, 'Stefy@gmail.com'),
 (14, 'Capuce@free.fr'),
 (15, 'Jacob.Simon@hotmail.fr'),
 (19, 'Fabio34@gmail.com'),
 (20, 'Andree.Montagne@free.fr'),
 (24, 'DenisFaurefree.fr'),
 (25, 'Antony345@gmail.com');
 
 INSERT INTO public.utilisateur (id_personne, matricule, fonction)
 VALUES
 (1, 23556774, 'Manager'),
 (2, 23556444, 'Pizzaiolo'),
 (6, 23556944, 'Manager'),
 (7, 23556245, 'Pizzaiolo'),
 (11, 23556454, 'Manager'),
 (12, 23555522, 'Pizzaiolo'),
 (13, 23550895, 'livreur'), 
 (16, 23559993, 'Manager'),
 (17, 23552459, 'Pizzaiolo'),
 (18, 23550252, 'livreur'),
 (21, 23554455, 'Manager'),
 (22, 23554223, 'Pizzaiolo'),
 (23, 23550994, 'livreur');
 
 INSERT INTO public.commande (numero_commande, id_client, date_commande, prix_commande, statut_commande, date_livraison)
 VALUES
 (1, 3, '2015-05-03 11:35:13', 95.6, 'livré', '2015-05-03 13:05:13'),
 (2, 3, '2018-08-30 13:35:13', 15.5, 'en cours de préparation', null),
 (3, 4, '2017-06-04 17:25:53', 17.5, 'livré', '2017-06-04 18:55:53'),
 (4, 8, '2015-12-06 12:15:03', 34.3, 'livré', '2015-12-06 11:45:03'),
 (5, 8, '2018-08-30 12:15:03', 54.7, 'en cours de livraison', null),
 (6, 9, '2016-05-07 13:00:23', 25, 'livré', '2016-05-07 13:52:23'),
 (7, 14, '2018-05-03 11:10:53', 75.5, 'livré', '2018-05-03 12:35:53'),
 (8, 15, '2018-07-15 13:00:11', 35, 'livré', '2018-07-15 14:05:11'),
 (9, 19, '2014-10-13 18:55:19', 53, 'livré', '2018-07-15 14:05:11'),
 (10, 20, '2016-11-02 19:05:33', 49.8, 'livré','2016-11-02 19:55:33'),
 (11, 24, '2015-03-24 20:40:51', 41.2, 'livré', '2015-03-24 22:23:51'),
 (12, 25, '2018-07-03 20:00:33', 32.3, 'livré', '2018-07-03 20:55:33');
 
  INSERT INTO public.facture (numero_commande, date_facture, nom_pizzeria, prix)
 VALUES
 (1, '2015-05-03 12:35:13', 'Pizza Lyonnaise', 50),
 (1, '2015-05-03 12:35:13', 'Pizza Lyonnaise', 45.6),
 (3, '2017-06-04 18:25:53', 'Pizza Lyonnaise', 17.5),
 (4, '2015-12-06 11:15:03', 'Pizzeria Mami Mia', 34.3),
 (6, '2016-05-07 13:22:23', 'Pizzeria Mami Mia', 25),
 (7, '2018-05-03 11:55:53', 'Pizza du Sud-Ouest', 75.5),
 (8, '2018-07-15 13:45:11', 'Pizza du Sud-Ouest', 35),
 (9, '2014-10-13 19:25:19', 'Pizzeria de la gare', 30),
 (9, '2014-10-13 19:25:19', 'Pizzeria de la gare', 23),
 (10, '2016-11-02 19:45:33', 'Pizzeria de la gare', 49.8),
 (11, '2015-03-24 21:43:51', 'La parisienne pizza', 41.2),
 (12, '2018-07-03 20:35:33', 'La parisienne pizza', 32.3);

INSERT INTO public.pizza (nom_pizza, prix_pizza, base_creme)
 VALUES
 ('SAVOYARDE', 14.9, true),
 ('KEBAB', 15.7, false),
 ('ESTIVALE', 10.9, false),
 ('ROYAL', 16.9, false),
 ('MIELINA', 14.9, true),
 ('MAGRET', 13.7, false),
 ('BASQUAISE', 14.9, true),
 ('ITALIENNE', 15.7, false);
 
 INSERT INTO public.quantite_pizza_par_commande (numero_commande, id_pizza, quantite)
 VALUES
 (1, 4, 2),
 (1, 3, 3),
 (1, 2, 2),
 (2, 6, 1),
 (3, 7, 1),
 (4, 3, 2),
 (4, 7, 1),
 (5, 8, 5),
 (6, 2, 2),
 (7, 8, 4),
 (7, 1, 3),
 (8, 2, 3),
 (9, 6, 5),
 (10, 6, 4),
 (11, 3, 3),
 (12, 2, 3);
 
 
 INSERT INTO public.boisson (nom_boisson, prix_boisson, quantite_boisson)
 VALUES
 ('Coca-Cola', 1.5, 14),
 ('Sprite', 1.5, 34),
 ('Fanta', 1.5, 3),
 ('Orangina', 1.5, 23),
 ('Pepsi', 1.5, 43);
 
 INSERT INTO public.quantite_boisson_par_commande (numero_commande, id_Boisson, quantite)
 VALUES
 (1, 4, 2),
 (1, 3, 3),
 (2, 2, 2),
 (2, 1, 0),
 (3, 2, 2),
 (4, 3, 3),
 (5, 3, 1),
 (5, 1, 5),
 (6, 2, 2),
 (7, 1, 4),
 (8, 1, 4),
 (8, 2, 3),
 (9, 4, 6),
 (10, 3, 2),
 (11, 3, 4),
 (12, 2, 3);

 INSERT INTO public.ingredient (nom_ingredient, parent_id_ingredient, id_pizzeria, prix_ingredients, quantite)
 VALUES
 ('Viande', 1, 1, null, 44),
 ('Saumon', 1, 2, 7.5, 31),
 ('Sardine', 1, 3, 6, 16),
 ('Fromage', 2, 4, null, 45),
 ('Chevre', 2, 5, 4, 23),
 ('Mozarella', 2, 1, 7, 67),
 ('Base', 3, 2, null, 76),
 ('Sauce tomate', 3, 3, 2, 45),
 ('Sauce crème', 3, 4, 2.5, 40),
 ('Legume', 4, 5, null, 34),
 ('Pomme de terre', 4, 1, 2.5, 23),
 ('Champignon', 4, 2, 1.75, 16);
 
 INSERT INTO public.composition_pizza (id_pizza, id_ingredient)
 VALUES
 (1, 4),
 (1, 11),
 (1, 7),
 (2, 6),
 (2, 9),
 (3, 3),
 (3, 7),
 (4, 12),
 (4, 7),
 (5, 8),
 (5, 2),
 (6, 6),
 (6, 1),
 (7, 8),
 (7, 10),
 (8, 2);
 


 