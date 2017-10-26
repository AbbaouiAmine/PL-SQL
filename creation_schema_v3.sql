
-- pour afficher les commandes � l'�cran avant l'execution
set echo on

-- la commande pour ex�cuter ce fichier
-- @C:\Users\P12\Desktop\SEANCE_2\SOL_S1\creation_schema_V3.sql 

-- pour copier la tarce d'ex�cution dans un fichier (copie d'�cran)
-- syntaxe SPOOL <chemain d'un fichier>

spool  C:\Users\P12\Desktop\SEANCE_2\SOL_S1\creation_schema_V3_trace.txt

-- nettoyage uniquement pour les tests
drop table ligne_commande;
drop table commande;
drop table client;
drop table produit;

-- creation du sch�ma de la BD
-- V1
-- creation de la table ligne de commande
create table ligne_commande(
	NUMCOM		NUMBER(7),
	NUMPROD		NUMBER(7),
	PRIX		NUMBER(11,2),
	QTECOM		NUMBER(9),
	CONSTRAINT PK_LC PRIMARY KEY (NUMCOM, NUMPROD)
);

-- test
desc ligne_commande

-- creation de la table des commandes
create table commande(
	NUMCOM		NUMBER(7),
	NUMCLI		NUMBER(7),
	DATECOM		DATE,
	DATELIVRAI	DATE,
	CONSTRAINT PK_COM PRIMARY KEY (NUMCOM)
);

-- test
desc commande
--- creation de la table des clients
create table client(
	NUMCLI		NUMBER(7),
	NOM		VARCHAR2(50),
	PRENOM		VARCHAR2(25),
	TELEPHONE	VARCHAR2(25),
	ADRESSE		VARCHAR2(200) ,
	VILLE		VARCHAR2(30),
	PAYS		VARCHAR2(30),
	CONSTRAINT PK_CLIENT PRIMARY KEY (NUMCLI)
);

-- test
desc client

-- creation de la table des produits
create table produit(
	NUMPROD		NUMBER(7),
	DESIGNATION	VARCHAR2(50),
	DESCRIPTION	VARCHAR2(200),
	PRIX		NUMBER(11,2), 
	QTESTOCK	NUMBER (9),
	CONSTRAINT PK_PROD PRIMARY KEY (NUMPROD)
);

-- test
desc produit

-- ajout des contraintes d'int�grit� r�ferntielles apr un chnagement du sch�ma des tables
-- ligne_commande
ALTER TABLE LIGNE_COMMANDE
	ADD CONSTRAINT CIR_LC_COM FOREIGN KEY (NUMCOM) REFERENCES COMMANDE(NUMCOM);
ALTER TABLE LIGNE_COMMANDE
	ADD CONSTRAINT CIR_LC_PROD FOREIGN KEY (NUMPROD) REFERENCES PRODUIT(NUMPROD);

-- commande
ALTER TABLE COMMANDE
	ADD CONSTRAINT CHECK_NN_DATECOM CHECK (DATECOM IS NOT NULL);
ALTER TABLE COMMANDE
	ADD CONSTRAINT CHECK_NN_DATELIVRAI CHECK (DATELIVRAI IS NOT NULL);
ALTER TABLE COMMANDE
	ADD CONSTRAINT CIR_COM_CLIENT FOREIGN KEY (NUMCLI) REFERENCES CLIENT(NUMCLI);

-- client
ALTER TABLE CLIENT
	ADD CONSTRAINT CHECK_NN_NOM CHECK (NOM IS NOT NULL);
-- produit
ALTER TABLE PRODUIT
	ADD CONSTRAINT CHECK_NN_DESIGN CHECK (DESIGNATION IS NOT NULL);

-- liste de mes tables
select table_name from user_tables;

-- les contraintes
select constraint_name from user_constraints;


-- pour fermer le fichier de sauvegarde de la tarce
-- sinon le fichier n'est pas ferm� et reste vide
spool off
