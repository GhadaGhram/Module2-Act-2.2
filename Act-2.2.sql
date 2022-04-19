/*Ecrire un script permettant d'insérer des données dans votre bd (réelle)*/
INSERT INTO `client` (`idclient`, `nomclient`, `telephone`, `abonnement`, `interet`) VALUES (NULL, 'ines Masmoudi', '99737515', 'classique', 'cinema');
INSERT INTO `fournisseurs` (`idfournisseur`, `nomfournisseur`) VALUES (NULL, 'topnet');
INSERT INTO `produits` (`idproduit`, `nomproduit`, `type`, `marque`, `réference_au_fournisseur`) VALUES (NULL, 'smartADSL', 'service', 'particulier', 'topnet');

/*Afficher la liste de tous les clients*/
SELECT * FROM client;

/*Afficher la liste des produits*/
SELECT *FROM produits;

/*Afficher les types de produits qui existent dans la BD*/
SELECT DISTINCT type FROM produits;

/*Afficher le nombre de produits disponibles pour chaque type de produit.*/
SELECT type, COUNT(nomproduit)FROM produits GROUP BY type;

/*Afficher les infos sur les clients dont le nom des clients 'S'*/
SELECT * FROM client WHERE nomclient LIKE '%S%';

/*Ajouter une colonne prix. Insérer un prix (égal à 200) dans les lignes déjà existante*/
ALTER TABLE `produits` ADD `prix` FLOAT NOT NULL AFTER `réference_au_fournisseur`;
UPDATE produits SET prix = '200';

/*Afficher pour tous les produits les infos suivantes :nom, type, prix, nom du fournisseur */
SELECT nomproduit, type, prix, nomfournisseur 
FROM produits JOIN fournisseurs ON produits.réference_au_fournisseur= nomfournisseur;

/*Afficher le nombre de produit pour chaque fournisseur*/
SELECT nomfournisseur, COUNT(nomproduit)
FROM produits JOIN fournisseurs ON produits.réference_au_fournisseur= nomfournisseur GROUP BY nomfournisseur;
