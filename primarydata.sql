

--select *  FROM obce_lotniska;
--select *  FROM linie;
--delete FROM linie;
--delete FROM obce_lotniska;


/*

insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Santiago');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Puebla');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Belfast');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Alicante');
insert into OBCE_LOTNISKA (id_lotniska, nazwa_lotniska) VALUES (obce_lotniska_seq.NEXTVAL, 'Lima');


*/


insert into LINIE (id_linii ,limit_wymiar1 , limit_wymiar2 , limit_wymiar3, limit_wagi, nazwa_linii) VALUES (LINIE_seq.NEXTVAL, 120 , 50 , 42 , 20, 'LOT');
insert into LINIE (id_linii ,limit_wymiar1 , limit_wymiar2 , limit_wymiar3, limit_wagi, nazwa_linii) VALUES (LINIE_seq.NEXTVAL, 80 , 40 , 38 , 18, 'Peruvian Airlines');
insert into LINIE (id_linii ,limit_wymiar1 , limit_wymiar2 , limit_wymiar3, limit_wagi, nazwa_linii) VALUES (LINIE_seq.NEXTVAL, 105 , 52 , 50 , 23, 'FlyCanada');
insert into LINIE (id_linii ,limit_wymiar1 , limit_wymiar2 , limit_wymiar3, limit_wagi, nazwa_linii) VALUES (LINIE_seq.NEXTVAL, 90 , 60 , 36 , 20, 'AirFrance');

insert into LINIE (id_linii ,limit_wymiar1 , limit_wymiar2 , limit_wymiar3, limit_wagi, nazwa_linii) VALUES (LINIE_seq.NEXTVAL, 90 , 60 , 36 , 20, 'Malaysia Airlines');

INSERT INTO OSOBY VALUES(OSOBY_SEQ.NEXTVAL, 'Tomasz', 'Zi�ba', 25, 1234, 'tomasz@zieba.com', NULL, NULL);
INSERT INTO OSOBY VALUES(OSOBY_SEQ.NEXTVAL,'Andrzej', 'Krzak', 40, 1000, 'andrzej123@gmail.com', NULL, NULL);
INSERT INTO OSOBY VALUES(OSOBY_SEQ.NEXTVAL, 'Zbigniew', 'Zimo�', 23, 53141, 'zzimon@hotmail.com', NULL, NULL);
INSERT INTO OSOBY VALUES(OSOBY_SEQ.NEXTVAL, 'Anna', 'Grzyb', 11, 4141, 'agrz@gmail.com', NULL, NULL);
INSERT INTO OSOBY VALUES(OSOBY_SEQ.NEXTVAL, 'Joachim', 'Lew', 42, 5315, 'achimek1976@gmail.com', NULL, NULL);

INSERT INTO UZYTKOWNICY VALUES(UZYTKOWNICY_SEQ.NEXTVAL, 4, 'pusia123', 'haslo123', 0, NULL);
INSERT INTO UZYTKOWNICY VALUES(UZYTKOWNICY_SEQ.NEXTVAL, 3, 'zzimon', 'zimon', 0, NULL);
INSERT INTO UZYTKOWNICY VALUES(UZYTKOWNICY_SEQ.NEXTVAL, 2, 'krzaczysko', 'ognisko', 0, NULL);
INSERT INTO UZYTKOWNICY VALUES(UZYTKOWNICY_SEQ.NEXTVAL, 5, 'achim1976', 'haslo', 0, NULL);
INSERT INTO UZYTKOWNICY VALUES(UZYTKOWNICY_SEQ.NEXTVAL, 1, 'tomzieb', 'l4tjklna', 0, NULL);

INSERT INTO LOTY VALUES (LOTY_SEQ.NEXTVAL, '01-jan-2019', 0, 'd', 1, 1);
INSERT INTO LOTY VALUES (LOTY_SEQ.NEXTVAL, '02-jun-2018', 0, 'd', 2, 3);
INSERT INTO LOTY VALUES (LOTY_SEQ.NEXTVAL, '03-jun-2018', 0, 'd', 1, 2);
INSERT INTO LOTY VALUES (LOTY_SEQ.NEXTVAL, '04-jun-2018', 0, 'd', 2, 2);
INSERT INTO LOTY VALUES (LOTY_SEQ.NEXTVAL, '05-jun-2018', 0, 'd', 2, 4);

INSERT INTO BILETY VALUES(BILETY_SEQ.NEXTVAL, 2, 1, 22, 4);
INSERT INTO BILETY VALUES(BILETY_SEQ.NEXTVAL, 2, 2, 24, 5);
INSERT INTO BILETY VALUES(BILETY_SEQ.NEXTVAL, 1, 3, 27, 1);
INSERT INTO BILETY VALUES(BILETY_SEQ.NEXTVAL, 4, 1, 1, 2);
INSERT INTO BILETY VALUES(BILETY_SEQ.NEXTVAL, 5, 2, 30, 3);


INSERT INTO REKLAMACJE VALUES(REKLAMACJE_SEQ.NEXTVAL, 'obsluga byla niemila', 0, 1);
INSERT INTO REKLAMACJE VALUES(REKLAMACJE_SEQ.NEXTVAL, 'samolot nie polecial', 0, 2);
INSERT INTO REKLAMACJE VALUES(REKLAMACJE_SEQ.NEXTVAL, 'zupa byla za slona', 0, 3);


INSERT INTO BAGAZE VALUES(BAGAZE_SEQ.NEXTVAL, 5, default, 3, 2, 1);
INSERT INTO BAGAZE VALUES(BAGAZE_SEQ.NEXTVAL, 7, default, 3, 3, 3);
INSERT INTO BAGAZE VALUES(BAGAZE_SEQ.NEXTVAL, 5, default, 10, 10, 5);
INSERT INTO BAGAZE VALUES(BAGAZE_SEQ.NEXTVAL, 3, default, 4, 10, 15);
INSERT INTO BAGAZE VALUES(BAGAZE_SEQ.NEXTVAL, 5, default, 3, 5, 11);

INSERT INTO PRZYDZIALY VALUES (1,1);
INSERT INTO PRZYDZIALY VALUES (1,2);
INSERT INTO PRZYDZIALY VALUES (2,1);
INSERT INTO PRZYDZIALY VALUES (2,3);
INSERT INTO PRZYDZIALY VALUES (3,4);

select * from bagaze;



