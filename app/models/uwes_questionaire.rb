# coding: utf-8

class UwesQuestionaire < Questionaire

  set_table_name "uwes_questionaires"

  FIELDS = [
    "W pracy czuję, źe rozpiera mnie energia.",
    "Praca, którą wykonuję jest dla mnie pełna sensu i celowości.",
    "Czas szybko płynie, kiedy pracuję.",
    "W pracy czuję się silny(a) i pelen(na) energii.",
    "Jestem oddany(ą) swojej pracy.",
    "Kiedy pracuję, zapominam o wszystkim dokoła mnie.",
    "Moja praca jest dla mnie natchnieniem.",
    "Kiedy rano wstaję, mam ochotę iść do pracy.",
    "Czuję się szcześliwy(a), kiedy intensywnie pracuję.",
    "Jestem dumny(a) z pracy, którą wykonuję.",
    "Jestem pochłomęty(a) swoją pracą.",
    "Mogę kontynuować pracą przez bardzo długie odcinki czasu.",
    "Praca jest dla mnie wyzwaniem.",
    "Zapominam się kiedy pracuję.",
    "W pracy jestem odporny(a) psychicznie.",
    "Trudno mi oderwać się od mojej pracy.",
    "Pracuję wytrwale, nawet jeśli sprawy nie idą dobrze.",
  ]

  POSITIVE_FIELDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
  NEGATIVE_FIELDS = []

  EXACT_POSITIVE_FIELDS = []
  EXACT_NEGATIVE_FIELDS = []

  SIMILAR_POSITIVE_FIELDS = []
  SIMILAR_NEGATIVE_FIELDS = []

  TITLE = "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz UWES"

  NAME = "Praca i samopoczucie (Kwestionariusz UWES)"

  AUTHOR = "Schaufeli & Bakker (2003)"

  DESCRIPTION = "Poniższe stwierdzenia dotyczą twojego samopoczucia w pracy. Proszę uważnie przeczytać każde stwierdzenie i zdecydować, czy kiedykolwiek czułeś(aś) się w ten sposób w związku ze swoją pracą Jeśli nigdy nie miałeś(aś) takiego odczucia, wybierz cyfrę zero 0 (zero) w pustym miejscu znajdującym się po numerze danego stwierdzenia. Jeśli miałeś(aś) takie odczucie, wskaż jak często czułeś się w ten sposób. Wybierz cyfrę od 1 do 6, wybierając tę, która w najlepszy sposób opisuje częstość twoich odczuć."

  SELECTIONS = [
    "Nigdy",
    "Prawie nigdy (kilka razy w roku lub rzadziej)",
    "Rzadko (raz w miesiącu lub rzadziej)",
    "Czasami (kilka razy w miesiącu)",
    "Często (raz w tygodniu)",
    "Bardzo często (kilka razy w tygodniu)",
    "Zawsze (każdego dnia)",
  ]

  SELECTION_STARTS = 0

end
