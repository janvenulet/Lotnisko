

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
INSERT INTO MODELE VALUES (MODELE_SEQ.NEXTVAL, 'Airbus' , 150, 'Airbus A320' );
INSERT INTO MODELE VALUES (MODELE_SEQ.NEXTVAL, 'Boeing' , 104, 'Boeing 737' );
INSERT INTO MODELE VALUES (MODELE_SEQ.NEXTVAL, 'Airbus' , 560, 'Airbus A380' );
INSERT INTO MODELE VALUES (MODELE_SEQ.NEXTVAL, 'Boeing' , 250, 'Boeing 787 Dreamliner' );

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
