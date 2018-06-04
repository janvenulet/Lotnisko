# Lotnisko
Projekt Bazy Danych 1 temat: lotnisko

Stałe zawartości rekordów:
  a) w uzytkownicy dla trybów dostępu przyjmujemy:
    - 0 dla pasazera
    - 1 dla zarzadzajacego lotniskiem 
    - 2 dla pracownikow linii 
    - 3 dla bagazowych
  
  b) Statusy lotów. Pierwszy bajt odpowiada za status drugi za kierunek lotu
     Statusy: 
      - a dla zaakceptowanego
      - n dla niezaakceptowanego
      - c dla odwołanego
      - d dla opóźnionego
      - e dla wyegzekwowanego (przyleciał albo wystartował) 
    Kierunki:
      - o odlot
      - p przylot
  
