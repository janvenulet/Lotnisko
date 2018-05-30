CREATE TABLE MODELE
(
    id_modelu NUMBER(6,0) PRIMARY KEY,
    marka VARCHAR2(20) NOT NULL,
    liczba_siedzen NUMBER(3) NOT NULL, 
    nazwa VARCHAR2(20) NOT NULL UNIQUE
);

CREATE TABLE BAGAZE
(
    id_bagazu NUMBER(6,0) PRIMARY KEY,
    waga NUMBER(6,0) CHECK (waga > 0),
    nadbagaz NUMBER(1,0),
    wymiar1 NUMBER(4,0) CHECK (wymiar1 > 0),
    wymiar2 NUMBER(4,0) CHECK (wymiar2 > 0),
    wymiar3 NUMBER(4,0) CHECK (wymiar3 > 0)
);

CREATE TABLE OBCE_LOTNISKA
(
    id_lotniska NUMBER(6,0) PRIMARY KEY,
    nazwa_miasta VARCHAR(30) NOT NULL
);

CREATE TABLE LINIE
(
    id_linii NUMBER(6,0) PRIMARY KEY,
    limit_wymiar1 NUMBER(4,0) NOT NULL,
    limit_wymiar2 NUMBER(4,0) NOT NULL,
    limit_wymiar3 NUMBER(4,0) NOT NULL,
    limit_wagi NUMBER(2,0) NOT NULL,
    nazwa_linii VARCHAR2(40) NOT NULL
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
    wiek NUMBER(3,0) NOT NULL,
    nr_paszportu VARCHAR2(10),
    email VARCHAR2(40),
    stanowisko VARCHAR2(30),
    id_linii NUMBER(6,0) REFERENCES LINIE(id_linii)
);



CREATE TABLE TRASY 
(
    id_trasy NUMBER(6,0) PRIMARY KEY,
    cena NUMBER(4,0),
    id_obcego_lotniska NUMBER(6,0) REFERENCES obce_lotniska(id_lotniska) ,
    id_linii NUMBER(6,0) REFERENCES linie(id_linii)
);

CREATE TABLE UZYTKOWNICY
(
    id_uzytkownika NUMBER(6,0),
    id_osoby NUMBER(6,0) NOT NULL,
    login VARCHAR2(20) NOT NULL,
    haslo VARCHAR2(20) NOT NULL,
    tryb_dostepu NUMBER(1) NOT NULL,
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
    siedzenie NUMBER(3) NOT NULL,
    id_bagazu NUMBER(6,0) REFERENCES BAGAZE(id_bagazu)
);

CREATE TABLE REKLAMACJE
(
    id_reklamacje NUMBER(6,0),
    opis_reklamacji VARCHAR2(70), 
    status_reklamacji NUMBER(1,0), 
    id_biletu NUMBER(6,0) REFERENCES BILETY (id_biletu) ,
)

