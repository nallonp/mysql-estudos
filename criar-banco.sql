DROP DATABASE comercial;
CREATE DATABASE comercial;
USE comercial;
CREATE TABLE comclien(
    n_numeclien INTEGER NOT NULL AUTO_INCREMENT,
    c_codiclien VARCHARACTER(10),
    c_nomeclien VARCHARACTER(10),
    c_razaclien VARCHARACTER(10),
    d_dataclien DATE,
    c_cnpjclien VARCHARACTER(20),
    c_foneclien VARCHARACTER(20), PRIMARY KEY(n_numeclien)
);
CREATE TABLE comforne(
    n_numeforne INTEGER NOT NULL AUTO_INCREMENT,
    c_codiforne VARCHARACTER(10),
    c_nomeforne VARCHARACTER(100),
    c_razaforne VARCHARACTER(100),
    c_foneforne VARCHARACTER(20), PRIMARY KEY(n_numeforne)
);
CREATE TABLE comvende(
    n_numevende INTEGER NOT NULL AUTO_INCREMENT,
    c_codivende VARCHARACTER(10),
    c_nomevende VARCHARACTER(100),
    c_razavende VARCHARACTER(100),
    c_fonevende VARCHARACTER(20),
    n_porcvende FLOAT(10, 2), PRIMARY KEY(n_numevende)
);
CREATE TABLE comprodu(
    n_numeprodu INTEGER NOT NULL AUTO_INCREMENT,
    c_codiprodu VARCHARACTER(20),
    c_descprodu VARCHARACTER(100),
    n_valoprodu FLOAT(10, 2),
    c_situprodu VARCHARACTER(1),
    n_numeforne INTEGER, PRIMARY KEY(n_numeprodu)
);
CREATE TABLE comvenda(
    n_numevenda INTEGER NOT NULL AUTO_INCREMENT,
    c_codivenda VARCHARACTER(10),
    n_numeclien INTEGER NOT NULL,
    n_numeforne INTEGER NOT NULL,
    n_numevende INTEGER NOT NULL,
    n_valovenda FLOAT(10, 2),
    n_descvenda FLOAT(10, 2),
    n_totavenda FLOAT(10, 2),
    d_datavenda DATE, PRIMARY KEY(n_numevenda)
);
CREATE TABLE comvendas(
    n_numevenda INTEGER NOT NULL AUTO_INCREMENT,
    c_codivenda VARCHARACTER(10),
    n_numeclien INTEGER NOT NULL,
    n_numeforne INTEGER NOT NULL,
    n_numevende INTEGER NOT NULL,
    n_valovenda FLOAT(10, 2),
    n_descvenda FLOAT(10, 2),
    n_totavenda FLOAT(10, 2),
    d_datavenda DATE, PRIMARY KEY(n_numevenda)
);
CREATE TABLE comivenda(
    n_numeivenda INTEGER NOT NULL AUTO_INCREMENT,
    n_numevenda INTEGER NOT NULL,
    n_numeprodu INTEGER NOT NULL,
    n_valoivenda FLOAT(10, 2),
    n_qtdeivenda INTEGER,
    n_descivenda FLOAT(10, 2), PRIMARY KEY(n_numeivenda)
);
ALTER TABLE comvenda ADD CONSTRAINT fk_comprodu_comforne FOREIGN KEY(n_numeforne) REFERENCES comforne(n_numeforne) ON
DELETE NO ACTION ON
UPDATE NO ACTION;
ALTER TABLE comvenda ADD CONSTRAINT fk_comprodu_comvende FOREIGN KEY(n_numevende) REFERENCES comvende(n_numevende) ON
DELETE NO ACTION ON
UPDATE NO ACTION;
ALTER TABLE comvenda ADD CONSTRAINT fk_comvenda_comclien FOREIGN KEY(n_numeclien) REFERENCES comclien(n_numeclien) ON
DELETE NO ACTION ON
UPDATE NO ACTION;
ALTER TABLE comivenda ADD CONSTRAINT fk_comivenda_comprodu FOREIGN KEY(n_numeprodu) REFERENCES comprodu(n_numeprodu) ON
DELETE NO ACTION ON
UPDATE NO ACTION;
ALTER TABLE comivenda ADD CONSTRAINT fk_comivenda_comvenda FOREIGN KEY(n_numevenda) REFERENCES comvenda(n_numevenda) ON
DELETE NO ACTION ON
UPDATE NO ACTION;
ALTER TABLE comclien ADD COLUMN c_cidaclien VARCHARACTER(50);
ALTER TABLE comclien ADD COLUMN c_razaclien VARCHARACTER(50);
ALTER TABLE comclien ADD COLUMN c_estclien VARCHARACTER(50);
ALTER TABLE comclien
DROP COLUMN c_estclien;
ALTER TABLE comclien ADD COLUMN c_estaclien VARCHARACTER(50);
ALTER TABLE comclien MODIFY COLUMN c_razaclien VARCHARACTER(150);
DROP TABLE comvendas;
INSERT INTO comclien(
    n_numeclien,
    c_codiclien,
    c_nomeclien,
    c_razaclien,
    d_dataclien,
    c_cnpjclien,
    c_foneclien,
    c_cidaclien,
    c_estaclien
)
VALUES(
    1,
    '0001',
    'AARONSON',
    'AARONSON FURNITURE LTDA',
    '2015-02-17',
    '17.807.928/0001-85',
    '(21)8167-6584',
    'QUEIMADOS',
    'RJ'
);
INSERT INTO comclien VALUES(
    2,
    '0002',
    'LUXÓTICA',
    'LUXÓTICA COMERCIO E INDÚSTRIA S.A.',
    '2015-01-09',
    '17.768.888/0001-48',
    '(21)8927-7658',
    'RIO DE JANEIRO',
    'RJ'
);
/*DELETE FROM comclien WHERE n_numeclien = 1;*/