CREATE DATABASE comercial; 

USE comercial;

CREATE TABLE comclien(
	n_numeclien INTEGER NOT NULL AUTO_INCREMENT,
	c_codiclien VARCHARACTER(10),
	c_nomeclien VARCHARACTER(10),
	c_razaclien VARCHARACTER(10),
	d_dataclien DATE,
	c_cnpjclien VARCHARACTER(20),
	c_foneclien VARCHARACTER(20),
	PRIMARY KEY (n_numeclien)
);

CREATE TABLE comforne(
	n_numeforne INTEGER NOT NULL AUTO_INCREMENT,
	c_codiforne VARCHARACTER(10),
	c_nomeforne VARCHARACTER(100),
	c_razaforne VARCHARACTER(100),
	c_foneforne VARCHARACTER(20),
	PRIMARY KEY(n_numeforne)
);

CREATE TABLE comvende(
	n_numevende INTEGER NOT NULL AUTO_INCREMENT,
	c_codivende VARCHARACTER(10),
	c_nomevende VARCHARACTER(100),
	c_razavende VARCHARACTER(100),
	c_fonevende VARCHARACTER(20),
	n_porcvende FLOAT(10,2),
	PRIMARY KEY(n_numevende)
);

CREATE TABLE comprodu(
	n_numeprodu INTEGER NOT NULL AUTO_INCREMENT,
	c_codiprodu VARCHARACTER(20),
	c_descprodu VARCHARACTER(100),
	n_valoprodu FLOAT(10,2),
	c_situprodu VARCHARACTER(1),
	n_numeforne INTEGER,
	PRIMARY KEY(n_numeprodu)
);

create table comvenda(
	n_numevenda INTEGER NOT NULL AUTO_INCREMENT,
	c_codivenda VARCHARACTER(10),
	n_numeclien INTEGER NOT NULL,
	n_numeforne INTEGER NOT NULL,
	n_numevende INTEGER NOT NULL,
	n_valovenda FLOAT(10,2),
	n_descvenda FLOAT(10,2),
	n_totavenda FLOAT(10,2),
	d_datavenda DATE,
	PRIMARY KEY(n_numevenda)
);

CREATE TABLE comvendas(
	n_numevenda INTEGER NOT NULL AUTO_INCREMENT,
	c_codivenda VARCHARACTER(10),
	n_numeclien INTEGER NOT NULL,
	n_numeforne INTEGER NOT NULL,
	n_numevende INTEGER NOT NULL,
	n_valovenda FLOAT(10,2),
	n_descvenda FLOAT(10,2),
	n_totavenda FLOAT(10,2),
	d_datavenda DATE,
	PRIMARY KEY(n_numevenda)
);

create table comivenda(
	n_numeivenda INTEGER NOT NULL AUTO_INCREMENT,
	n_numevenda INTEGER NOT NULL,
	n_numeprodu INTEGER NOT NULL,
	n_valoivenda FLOAT(10,2),
	n_qtdeivenda INTEGER,
	n_descivenda FLOAT(10,2),
	PRIMARY KEY(n_numeivenda)
);