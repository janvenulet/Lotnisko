/*
To zapytanie rejestruje osobê, nastepnie trzeba uruchomiæ zapytanie rejestrujace odp. uzytkownika
Tutaj pytajniki to odp. pola z formularza rejestracyjnego (IMIE, NAZWISKO, WIEK, NR PASZPORTU, EMAIL)
Dobrze byloby zweryfikowac poprawnoœæ pól
*/
insert into osoby values(OSOBY_SEQ.Nextval, ?, ?, ?, ?, ?, null, null);

/*
To zapytanie 
PYTAJNIKI TO POLA Z FORMULARZA REJESTRACYJNEGO (LOGIN, HASLO)
*/
insert into uzytkownicy values(UZYTKOWNICY_SEQ.Nextval, OSOBY_SEQ.Currval, ?, ?, 0,null);

/*
TO ZAPYTANIE S£U¯Y DO TWORZENIA ROZWIJANEJ LISTY BILETÓW MO¯LIWYCH DO REKLAMOWANIA.
PYTAJNIK TO ID OSOBY ZALOGOWANEGO U¯YTKOWNIKA (ZAK£ADAM, ¯E TE DANE S¥ PRZECHOWYWANE W INTERFEJSIE)
*/
select nazwa_lotniska, data 
from loty l join trasy t
on l.id_trasy = t.id_trasy
join obce_lotniska x
on t.id_obcego_lotniska = x.id_obcego_lotniska;
/*join bilety b on b.id_lotu = l_id_lotu*/
/*where b.id_osoby = ?*/

insert into reklamacje values (REKLAMACJE_SEQ.Nextval, ?, 0, 