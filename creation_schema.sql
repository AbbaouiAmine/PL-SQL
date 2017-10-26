
-- pour afficher les commandes à l'écran avant l'execution
set echo on

-- la commande pour exécuter ce fichier
-- @C:\Users\P12\Desktop\SEANCE_2\SOL_S1\creation_schema.sql 

-- pour copier la tarce d'exécution dans un fichier (copie d'écran)
-- syntaxe SPOOL <chemain d'un fichier>

spool  C:\Users\P12\Desktop\SEANCE_2\SOL_S1\creation_schema_trace.txt


-- creation du schéma de la BD
-- V1

--- creation de la table des clients
create table client(
	NUMCLI		NUMBER(7)		PRIMARY KEY,
	NOM		VARCHAR2(50)		NOT NULL,
	PRENOM		VARCHAR2(25),
	TELEPHONE	VARCHAR2(25),
	ADRESSE		VARCHAR2(200) ,
	VILLE		VARCHAR2(30),
	PAYS		VARCHAR2(30)
);

-- test
desc client

-- creation de la table des produits
create table produit(
	NUMPROD		NUMBER(7)		PRIMARY KEY,
	DESIGNATION	VARCHAR2(50)		NOT NULL,
	DESCRIPTION	VARCHAR2(200),
	PRIX		NUMBER(11,2), 
	QTESTOCK	NUMBER (9)
);

-- test
desc produit

-- creation de la table des commandes
create table commande(
	NUMCOM		NUMBER(7)		PRIMARY KEY,
	NUMCLI		NUMBER(7)		REFERENCES CLIENT(NUMCLI),
	DATECOM		DATE			NOT NULL,
	DATELIVRAI	DATE			NOT NULL
);

-- test
desc commande

-- creation de la table ligne de commande
create table ligne_commande(
	NUMCOM		NUMBER(7)		REFERENCES COMMANDE(NUMCOM),
	NUMPROD		NUMBER(7)		REFERENCES PRODUIT(NUMPROD),
	PRIX		NUMBER(11,2),
	QTECOM		NUMBER(9),
	CONSTRAINT PK_LC PRIMARY KEY (NUMCOM, NUMPROD)
);

-- test
desc ligne_commande


-- liste de mes tables
select table_name from user_tables;

-- les contraintes
select constraint_name from user_constraints;


-- pour fermer le fichier de sauvegarde de la tarce
-- sinon le fichier n'est pas fermé et reste vide
spool off
