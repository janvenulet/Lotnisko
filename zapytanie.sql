/*
To zapytanie rejestruje osobê, nastepnie trzeba uruchomiæ zapytanie rejestrujace odp. uzytkownika
Tutaj pytajniki to odp. pola z formularza rejestracyjnego (IMIE, NAZWISKO, WIEK, NR PASZPORTU, EMAIL)
Dobrze byloby zweryfikowac poprawnoœæ pól po stronie programu
*/
insert into osoby values(OSOBY_SEQ.Nextval, ?, ?, ?, ?, ?, null, null);

/*
To zapytanie 
Pytajniki to pola z formularza rejestracyjnego (login, haslo)
Mo¿na dodaæ weryfikacjê loginu i hasla (np. dlugosc, znaki specjalne) po stronie programu
*/
insert into uzytkownicy values(UZYTKOWNICY_SEQ.Nextval, OSOBY_SEQ.Currval, ?, ?, 0,null);

/*
To zapytanie sluzy do wyswietlenia listy przylotow
*/
select nazwa_lotniska, data, status 
from loty l join trasy t
on l.id_trasy = t.id_trasy
join obce_lotniska x
on t.id_lotniska = x.id_lotniska
where status = 'ap';

/*
To zapytanie sluzy do wyswietlenia listy odlotow
*/
select nazwa_lotniska, data, status 
from loty l join trasy t
on l.id_trasy = t.id_trasy
join obce_lotniska x
on t.id_lotniska = x.id_lotniska
where status = 'ao';


/*
To zapytanie sluzy do wytworzenia rozwijanej listy biletow mozliwych do reklamacji.
Pytajnik to id_osoby zalogowanego uzytkownika (Zakladam, ze te dane sa przechowywane w programie)
Wybór odpowiedniego pola wskazuje id_biletu, na który zgloszona bedzie reklamacja
*/

select nazwa_lotniska, data 
from loty l join trasy t
on l.id_trasy = t.id_trasy
join obce_lotniska x
on t.id_lotniska = x.id_lotniska
join bilety b on b.id_lotu = l.id_lotu
where b.id_osoby = ?;

/*
To zapytanie obsluguje formularz reklamacyjny
Pytajniki to kolejno: pole opisu formularza, id_biletu wybrane z listy rozwijanej
*/
insert into reklamacje values (REKLAMACJE_SEQ.Nextval, ?, 0, ?);


/*
To zapytanie sprawdza status reklamacji
Pytajnik to id_reklamacji uzyskane w jakis sposob (jaki?)
*/

select status_reklamacji from reklamacje
where id_reklamacji = ?;

/*
To podzapytanie obsluguje wyszukanie lotu wedlug kryteriow
Pytajniki to: dzien, miesiac, rok, cel (nazwa_lotniska), cena_min, cena_max
Format ustawiæ na YY lub YYYY w zale¿noœci od sposobu zapisu w programie

*/
select l.data, cena, nazwa_linii, nazwa_lotniska
from loty l join trasy t
on l.id_trasy = t.id_trasy
join obce_lotniska x
on t.id_lotniska = x.id_lotniska
join linie n
on t.id_linii = n.id_linii
where (trunc(l.data) = trunc(to_date(? || ? || ?, 'DDMMYY')))
/* mo¿e proœciej i lepiej bêdzie where(trunc(l.data) = trunc(to_date(?, 'DDMMYY')))
wtedy ? oznacza ciag dzienmiesiacrok, zkonkatenowany po stronie programu
*/
AND nazwa_lotniska = ?
AND cena > ?
AND cena < ?;

/*
To podzapytanie obsluguje zakup biletu
id_lotu pochodzi z poprzedniego okienka
id_osoby jest przechowywane w programie
Pytajniki kolejno to: id_osoby, id_lotu, siedzenie (siedzenie obliczane w programie?)
id_bagazu zostanie dodane dopiero przy nadawaniu bagazu na lotnisku
*/
INSERT INTO BILETY VALUES(BILETY_SEQ.NEXTVAL, ?, ?, ?,null);