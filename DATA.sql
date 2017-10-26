
--------------------------------------------------------------------
--	ALIMENTATION DE LA BASE

insert into CLIENT
Values(1,'Idrissi','Mohammed','O60000000','Rue 1, N° 23','Rabat','Maroc');
insert into CLIENT
Values(2,'Soufiani','Mohammed','O60000001','Rue 45, N° 78','Rabat','Maroc');
insert into CLIENT
Values(3,'Miliani','NasrEddine','O60000002','Rue 56, N° 98','Casa','Maroc');
insert into CLIENT
Values(4,'Zamouri','Hicham','O60000003','Rue 678, N° 223','Casa','Maroc');
insert into CLIENT
Values(5,'Saidi','Rachid','O60000004','Rue 43, N° 324','Fes','Maroc');
insert into CLIENT
Values(6,'Doukkali','Badr','O60000005','Rue 45, N° 456','Rabat','Maroc');
insert into CLIENT
Values(7,'Idrissi','Mohammed','O60000006','Rue 23, N° 567','Casa','Maroc');
insert into CLIENT
Values(8,'Zahraoui','Mostapha','O60000007','Rue 56, N° 45','Rabat','Maroc');
insert into CLIENT
Values(9,'Andaloussi','Iliass','O60000008','Rue 34, N° 89','Tanger','Maroc');
insert into CLIENT
Values(10,'Redouani','Mohammed','O60000009','Rue 3, N° 3','Marrakech','Maroc');
insert into CLIENT
Values(11,'Meknassi','Reda','O60000010','Rue 12, N° 9','Rabat','Maroc');
insert into CLIENT
Values(12,'Charel','Bernard','O600000021','Rue 20, N° 23','Paris','France');
insert into CLIENT
Values(13,'Jouve','Michel','O600000056','Rue 1, N° 23','Toulouse','France');



Insert into PRODUIT
values(1,'Onduleur X400','Pas de description',11000, 400);
Insert into PRODUIT
values(2,'Onduleur X405','Pas de description',12000, 120);
Insert into PRODUIT
values(3,'Onduleur X415','Pas de description',15000, 45);
Insert into PRODUIT
values(4,'Onduleur X489','Pas de description',16000, 678);
Insert into PRODUIT
values(5,'Onduleur X400','Pas de description',11050, 345);
Insert into PRODUIT
values(6,'PC P4','Pas de description',10000, 100);
Insert into PRODUIT
values(7,'Macintosh','Pas de description',16000, 200);
Insert into PRODUIT
values(8,'Satation Sun','Pas de description',50000, 300);
Insert into PRODUIT
values(9,'Station HP','Pas de description',60000, 350);
Insert into PRODUIT
values(10,'Hub','Pas de description',1000, 50);
Insert into PRODUIT
values(11,'Retour','Pas de description',40000, 600);
Insert into PRODUIT
values(12,'Switch','Pas de description',1500, 500);
Insert into PRODUIT
values(13,'Carte réseau','Pas de description',100, 20);
Insert into PRODUIT
values(14,'Carte graphique','Pas de description',400, 150);



Insert into COMMANDE
values(1,1,'11/11/2001','12/11/2001');
Insert into COMMANDE
values(2,1,'11/12/2001','12/02/2002');
Insert into COMMANDE
values(3,2,'10/11/2001','12/11/2001');
Insert into COMMANDE
values(4,3,'11/11/2002','12/11/2002');
Insert into COMMANDE
values(5,1,'12/11/2003','01/01/2004');
Insert into COMMANDE
values(6,4,'15/11/2003','19/11/2003');
Insert into COMMANDE
values(7,6,'11/11/2003','01/01/2004');
Insert into COMMANDE
values(8,6,'02/01/2004','12/01/2004');
Insert into COMMANDE
values(9,8,'10/01/2004','15/01/2004');
Insert into COMMANDE
values(10,13,'11/01/2004','16/01/2004');

insert into LIGNCOMMANDE values (1, 2, 9000, 45);
insert into LIGNCOMMANDE values (2, 2, 9000, 100);
insert into LIGNCOMMANDE values (7, 2, 3000, 10);
insert into LIGNCOMMANDE values (3, 4, 1000, 5);
insert into LIGNCOMMANDE values (4, 4, 1500, 10);
insert into LIGNCOMMANDE values (5, 4, 2000, 20);
insert into LIGNCOMMANDE values (6, 4, 3000, 55);
insert into LIGNCOMMANDE values (2, 9, 9000, 100);
insert into LIGNCOMMANDE values (7, 9, 3000, 10);
insert into LIGNCOMMANDE values (4, 9, 9000, 100);
insert into LIGNCOMMANDE values (8, 9, 3000, 10);

commit;	
