# coding: utf-8

class SspQuestionaire < Questionaire

  set_table_name "ssp_questionaires"

  FIELDS = [
    "Pod bardzo wieloma względami moja praca bliska jest ideału",
    "Mam świetne warunki pracy",
    "Jestem zadowolony z pracy",
    "Jak dotąd, w pracy udawało mi się osiągać to, czego chciałem",
    "Gdybym miał decydować raz jeszcze, wybrałbym tę samą prace",
  ]

  TITLE = "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz SSP"

  NAME = "SKALA SATYSFAKCJI Z PRACY (SSP)"

  AUTHOR = "(A. Zalewska, 2003)"

  DESCRIPTION = "Poniżej znajdują się stwierdzenia, z którymi mo/e się Pan (i) zgodzić lub nie zgodzić. Proszę wybrać na linii pod każdym stwierdzeniem odpowiedni numer podanej niżej 7~ punktowej skali, który najbardziej odpowiada Pana (i) opinii. Prosimy o szczere wypowiedzi, zgodnie z punktacją:"

  SELECTIONS = [
   "zdecydowanie się nie zgadzam",
   "nie zgadzam się",
   "raczej się nie zgadzam ",
   "trudno powiedzieć, czy się zgadzam, czy się nie zgadzam",
   "raczej się zgadzam",
   "zgadzam się",
   "zdecydowanie się zgadzam",
  ]

  SELECTION_STARTS = 1

end
