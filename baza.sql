DROP TABLE REKLAMACJE;
DROP TABLE UZYTKOWNICY;
DROP TABLE PRZYDZIALY;
DROP TABLE BILETY;
DROP TABLE BAGAZE;
DROP TABLE OSOBY;
DROP TABLE LOTY;
DROP TABLE SAMOLOTY;
DROP TABLE TRASY;
DROP TABLE MODELE;
DROP TABLE LINIE;
DROP TABLE OBCE_LOTNISKA;
DROP VIEW WIDOK;


DROP SEQUENCE uzytkownicy_seq;
DROP SEQUENCE osoby_seq;
DROP SEQUENCE trasy_seq;
DROP SEQUENCE samoloty_seq;
DROP SEQUENCE reklamacje_seq;
DROP SEQUENCE obce_lotniska_seq;
DROP SEQUENCE modele_seq;
DROP SEQUENCE linie_seq;
DROP SEQUENCE bagaze_seq;
DROP SEQUENCE loty_seq;
DROP SEQUENCE bilety_seq;





CREATE TABLE MODELE
(
    id_modelu NUMBER(6,0) PRIMARY KEY,
    marka VARCHAR2(20) NOT NULL,
    liczba_siedzen NUMBER(3) NOT NULL CHECK (liczba_siedzen > 0), 
    nazwa VARCHAR2(20) NOT NULL UNIQUE
);

CREATE TABLE OBCE_LOTNISKA
(
    id_lotniska NUMBER(6,0) PRIMARY KEY,
    nazwa_lotniska VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE LINIE
(
    id_linii NUMBER(6,0) PRIMARY KEY,
    limit_wymiar1 NUMBER(4,0) NOT NULL CHECK (limit_wymiar1>0) ,
    limit_wymiar2 NUMBER(4,0) NOT NULL CHECK (limit_wymiar2 > 0 ),
    limit_wymiar3 NUMBER(4,0) NOT NULL CHECK (limit_wymiar3 > 0 ),
    limit_wagi NUMBER(2,0) NOT NULL CHECK (limit_wagi > 0 ),
    nazwa_linii VARCHAR2(40) NOT NULL UNIQUE
);

CREATE TABLE SAMOLOTY
(
    id_samolotu NUMBER(6,0) PRIMARY KEY,
    id_linii NUMBER(6,0) NOT NULL REFERENCES LINIE(id_linii),
    id_modelu NUMBER(6,0) NOT NULL REFERENCES MODELE(id_modelu)
);

CREATE TABLE OSOBY
(
    id_osoby NUMBER(6,0) PRIMARY KEY,
    imie VARCHAR(20) NOT NULL,
    nazwisko VARCHAR(40) NOT NULL,
    wiek NUMBER(3,0) NOT NULL CHECK (wiek > 0 AND wiek <150),
    nr_paszportu VARCHAR2(10) UNIQUE,
    email VARCHAR2(40) UNIQUE,
    stanowisko VARCHAR2(30),
    id_linii NUMBER(6,0) REFERENCES LINIE(id_linii)
);



CREATE TABLE TRASY 
(
    id_trasy NUMBER(6,0) PRIMARY KEY,
    cena NUMBER(4,0) CHECK (cena > 0),
    id_lotniska NUMBER(6,0) NOT NULL REFERENCES obce_lotniska(id_lotniska) ,
    id_linii NUMBER(6,0) REFERENCES linie(id_linii)
);

CREATE TABLE UZYTKOWNICY
(
    id_uzytkownika NUMBER(6,0) PRIMARY KEY,
    id_osoby NUMBER(6,0) NOT NULL,
    login VARCHAR2(20) NOT NULL UNIQUE,
    haslo VARCHAR2(20) NOT NULL,
    tryb_dostepu NUMBER(1) DEFAULT 0 NOT NULL,
    id_linii NUMBER(6) REFERENCES LINIE(id_linii)
);

CREATE TABLE LOTY
(
    id_lotu NUMBER(6,0) PRIMARY KEY,
    data DATE NOT NULL,
    bramka NUMBER(6,0),
    status CHAR(1),
    id_samolotu NUMBER(6,0) NOT NULL REFERENCES SAMOLOTY(id_samolotu),
    id_trasy NUMBER(6,0) NOT NULL REFERENCES TRASY(id_trasy)
);

CREATE TABLE PRZYDZIALY
(
    id_lotu NUMBER(6) NOT NULL REFERENCES LOTY(id_lotu),
    id_osoby NUMBER(6) NOT NULL REFERENCES OSOBY(id_osoby)
);



CREATE TABLE BILETY
(
    id_biletu NUMBER(6,0) PRIMARY KEY,
    id_osoby NUMBER(6,0) NOT NULL REFERENCES OSOBY(id_osoby),
    id_lotu NUMBER(6,0) NOT NULL REFERENCES LOTY(id_lotu),
    siedzenie NUMBER(3) NOT NULL CHECK(siedzenie > 0)
);

CREATE TABLE BAGAZE
(
    id_bagazu NUMBER(6,0) PRIMARY KEY,
    waga NUMBER(6,0) CHECK (waga > 0),
    nadbagaz NUMBER(1,0) DEFAULT 0,
    wymiar1 NUMBER(4,0) CHECK (wymiar1 > 0),
    wymiar2 NUMBER(4,0) CHECK (wymiar2 > 0),
    wymiar3 NUMBER(4,0) CHECK (wymiar3 > 0),
    id_biletu NUMBER(6,0) REFERENCES BILETY(id_biletu)
);

CREATE TABLE REKLAMACJE
(
    id_reklamacji NUMBER(6,0),
    opis_reklamacji VARCHAR2(70), 
    status_reklamacji NUMBER(1,0), 
    id_biletu NUMBER(6,0) NOT NULL REFERENCES BILETY (id_biletu)
);

CREATE SEQUENCE uzytkownicy_seq
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE osoby_seq
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE obce_lotniska_seq
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE modele_seq
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE samoloty_seq
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE linie_seq
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE trasy_seq
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE reklamacje_seq
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE bagaze_seq
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE bilety_seq
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE loty_seq
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

CREATE VIEW WIDOK AS
SELECT * FROM LOTY NATURAL JOIN TRASY;

insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Santiago');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Puebla');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Lizbona');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Alicante');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Cancun');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Lima');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Mexico City');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Vigo');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Sewilla');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Bogota');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Miami');


insert into LINIE (id_linii ,limit_wymiar1 , limit_wymiar2 , limit_wymiar3, limit_wagi, nazwa_linii) VALUES (LINIE_seq.NEXTVAL, 120 , 50 , 42 , 20, 'Iberia');
insert into LINIE (id_linii ,limit_wymiar1 , limit_wymiar2 , limit_wymiar3, limit_wagi, nazwa_linii) VALUES (LINIE_seq.NEXTVAL, 80 , 40 , 38 , 18, 'Peruvian Airlines');
insert into LINIE (id_linii ,limit_wymiar1 , limit_wymiar2 , limit_wymiar3, limit_wagi, nazwa_linii) VALUES (LINIE_seq.NEXTVAL, 105 , 52 , 50 , 23, 'LATAM Airlines');
insert into LINIE (id_linii ,limit_wymiar1 , limit_wymiar2 , limit_wymiar3, limit_wagi, nazwa_linii) VALUES (LINIE_seq.NEXTVAL, 90 , 60 , 36 , 20, 'AirFrance');
insert into LINIE (id_linii ,limit_wymiar1 , limit_wymiar2 , limit_wymiar3, limit_wagi, nazwa_linii) VALUES (LINIE_seq.NEXTVAL, 90 , 60 , 36 , 20, 'AeroMexico');

INSERT INTO OSOBY VALUES(OSOBY_SEQ.NEXTVAL, 'Tomasz', 'Zieba', 25, 1234, 'tomasz@zieba.com', NULL, NULL);
INSERT INTO OSOBY VALUES(OSOBY_SEQ.NEXTVAL,'Andrzej', 'Krzak', 40, 1000, 'andrzej123@gmail.com', NULL, NULL);
INSERT INTO OSOBY VALUES(OSOBY_SEQ.NEXTVAL, 'Zbigniew', 'Zimoch', 23, 53141, 'zzimon@hotmail.com', NULL, NULL);
INSERT INTO OSOBY VALUES(OSOBY_SEQ.NEXTVAL, 'Anna', 'Grzyb', 11, 4141, 'agrz@mit.usa', NULL, NULL);
INSERT INTO OSOBY VALUES(OSOBY_SEQ.NEXTVAL, 'Joachim', 'Lew', 42, 5315, 'achimek1976@gmail.com', NULL, NULL);

INSERT INTO UZYTKOWNICY VALUES(UZYTKOWNICY_SEQ.NEXTVAL, 4, 'pusia123', 'haslo123', 0, NULL);
INSERT INTO UZYTKOWNICY VALUES(UZYTKOWNICY_SEQ.NEXTVAL, 3, 'zzimon', 'zimon', 0, NULL);
INSERT INTO UZYTKOWNICY VALUES(UZYTKOWNICY_SEQ.NEXTVAL, 2, 'krzaczysko', 'ognisko', 0, NULL);
INSERT INTO UZYTKOWNICY VALUES(UZYTKOWNICY_SEQ.NEXTVAL, 5, 'achim1976', 'haslo', 0, NULL);
INSERT INTO UZYTKOWNICY VALUES(UZYTKOWNICY_SEQ.NEXTVAL, 1, 'tomzieb', 'l4tjklna', 0, NULL);

INSERT INTO MODELE VALUES (MODELE_SEQ.NEXTVAL, 'Tupolew' , 210, 'Tu-204' );
INSERT INTO MODELE VALUES (MODELE_SEQ.NEXTVAL, 'Airbus' , 150, 'A320' );
INSERT INTO MODELE VALUES (MODELE_SEQ.NEXTVAL, 'Boeing' , 104, '737' );
INSERT INTO MODELE VALUES (MODELE_SEQ.NEXTVAL, 'Airbus' , 560, 'A380' );
INSERT INTO MODELE VALUES (MODELE_SEQ.NEXTVAL, 'Boeing' , 250, '787 Dreamliner' );

INSERT INTO SAMOLOTY VALUES ( SAMOLOTY_SEQ.NEXTVAL, 2, 2);
INSERT INTO SAMOLOTY VALUES ( SAMOLOTY_SEQ.NEXTVAL, 2, 5); 
INSERT INTO SAMOLOTY VALUES ( SAMOLOTY_SEQ.NEXTVAL, 5, 4);
INSERT INTO SAMOLOTY VALUES ( SAMOLOTY_SEQ.NEXTVAL, 1, 3);
INSERT INTO SAMOLOTY VALUES ( SAMOLOTY_SEQ.NEXTVAL, 1, 4);

INSERT INTO TRASY VALUES (TRASY_SEQ.NEXTVAL, 429 ,5, 1); /*aero to puebla */
INSERT INTO TRASY VALUES (TRASY_SEQ.NEXTVAL, 429 ,6, 2); /*peruvian to lima */
INSERT INTO TRASY VALUES (TRASY_SEQ.NEXTVAL, 429 ,2, 1); /*aero to puebla*/
INSERT INTO TRASY VALUES (TRASY_SEQ.NEXTVAL, 429 ,7, 1); /*aero to mexcity */
INSERT INTO TRASY VALUES (TRASY_SEQ.NEXTVAL, 429 ,1, 3); /*latam to santiago*/

INSERT INTO LOTY VALUES (LOTY_SEQ.NEXTVAL, to_date('20180623 11:20','yyyymmdd hh24:mi'), 2, 'z', 1, 1); /*bramka status samolot trasa*/
INSERT INTO LOTY VALUES (LOTY_SEQ.NEXTVAL, to_date('20180703 9:50','yyyymmdd hh24:mi'), 2, NULL, 2, 3);
INSERT INTO LOTY VALUES (LOTY_SEQ.NEXTVAL, to_date('20180619 15:00','yyyymmdd hh24:mi'), 3, 'z', 1, 1);
INSERT INTO LOTY VALUES (LOTY_SEQ.NEXTVAL, to_date('20180618 11:20','yyyymmdd hh24:mi'), 1, 'z', 2, 2);
INSERT INTO LOTY VALUES (LOTY_SEQ.NEXTVAL, to_date('20180619 18:20','yyyymmdd hh24:mi'), 5, 'c', 2, 4);

INSERT INTO BILETY VALUES(BILETY_SEQ.NEXTVAL, 2, 1, 22);
INSERT INTO BILETY VALUES(BILETY_SEQ.NEXTVAL, 2, 2, 24);
INSERT INTO BILETY VALUES(BILETY_SEQ.NEXTVAL, 1, 3, 27);
INSERT INTO BILETY VALUES(BILETY_SEQ.NEXTVAL, 4, 1, 1);
INSERT INTO BILETY VALUES(BILETY_SEQ.NEXTVAL, 5, 2, 30);


INSERT INTO REKLAMACJE VALUES(REKLAMACJE_SEQ.NEXTVAL, 'obsluga byla niemila', 0, 1);
INSERT INTO REKLAMACJE VALUES(REKLAMACJE_SEQ.NEXTVAL, 'samolot nie polecial', 0, 2);
INSERT INTO REKLAMACJE VALUES(REKLAMACJE_SEQ.NEXTVAL, 'zupa byla za slona', 0, 3);


INSERT INTO BAGAZE VALUES(BAGAZE_SEQ.NEXTVAL, NULL, default, 103, 21, 16, 1);
INSERT INTO BAGAZE VALUES(BAGAZE_SEQ.NEXTVAL, 15, default, 13, 33, 37, 3);
INSERT INTO BAGAZE VALUES(BAGAZE_SEQ.NEXTVAL, 5, default, 10, 10, 5, 4);
INSERT INTO BAGAZE VALUES(BAGAZE_SEQ.NEXTVAL, NULL, default, 4, 10, 15, 5);
INSERT INTO BAGAZE VALUES(BAGAZE_SEQ.NEXTVAL, 5, default, 3, 5, 11, 2);

INSERT INTO PRZYDZIALY VALUES (1,1);
INSERT INTO PRZYDZIALY VALUES (1,2);
INSERT INTO PRZYDZIALY VALUES (2,1);
INSERT INTO PRZYDZIALY VALUES (2,3);
INSERT INTO PRZYDZIALY VALUES (3,4);