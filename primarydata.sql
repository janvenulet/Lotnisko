select *  FROM obce_lotniska;
select *  FROM linie;
delete FROM linie;
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

