drop table logi;
create table logi
(
    data_zmiany date,
    typ_zmiany CHAR,
    id_lotu number(6,0),
    stara_data date,
    nowa_data date,
    stara_bramka number(6,0),
    nowa_bramka number(6,0),
    stary_status char(2),
    nowy_status char(2),
    stare_id_samolotu number(6,0),
    nowe_id_samolotu number(6,0),
    stare_id_trasy number(6,0),
    nowe_id_trasy number(6,0)
);

CREATE OR REPLACE TRIGGER LOGGER AFTER INSERT OR UPDATE OR DELETE ON LOTY
FOR EACH ROW
DECLARE 
zmiana char(1);
BEGIN
IF UPDATING THEN
zmiana := 'u';
END IF;
IF INSERTING THEN
zmiana := 'i';
END IF;
IF DELETING THEN
zmiana := 'd';
END IF;
    insert into logi values(SYSDATE, zmiana, :old.id_lotu, :old.data, :new.data, :old.bramka,
                            :new.bramka, :old.status, :new.status, :old.id_samolotu,
                            :new.id_samolotu, :old.id_trasy, :new.id_trasy);
END;

