/*Ecrire la requête permettant d'afficher le contenu du devis ayant l'id 10 (nom du produit, prix unitaire, quantité, total TTC), en utilisant les jointures dans la requête*/
SELECT offername, unitPriceTTC, quantity, totalTTC FROM offer, quotationcontent, quotation
WHERE quotationcontent.id_quotation=quotation.id AND quotationcontent.id_offer=offer.id AND quotation.id = 10;

/*Ecrire la requête permettant d'afficher la liste des devis créés par les utilisateurs ayant une adresse Email sous GMAIL.COM (id devis, nom et prénom de l'utilisateur, adresse email) en utilisant les jointures dans la requête*/
SELECT user.id, firstname, lastname, email FROM user , quotation
WHERE quotation.id_user= user.id AND (user.email LIKE '%gmail.com' OR user.email LIKE '%GMAIL.COM');