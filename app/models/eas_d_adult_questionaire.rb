# coding: utf-8

class EasDAdultQuestionaire < Questionaire

  set_table_name "eas_d_adult_questionaires"

  FIELDS = [
    "Lubię przebywać z ludźmi",
    "Zwykle sprawiam wrażenie osoby spieszącej się",
    "Łatwo mnie przestraszyć",
    "Często jestem spięty(a)",
    "Kiedy jestem niezadowolony(a) natychmiast daję to odczuć innym ludziom",
    "Jestem czasem samotnikiem",
    "Lubię być stale czymś zajęty(a)",
    "Uchodzę za osobę zapalczywą i porywczą",
    "Często czuję się sfrustrowany(a)",
    "Moje życie ma szybkie tempo",
    "Codzienne zdarzenia czynią mnie zatroskanym(ą) i roztrzęsionym(ą)",
    "Często nie czuję się bezpiecznie",
    "Wiele rzeczy irytuje mnie",
    "Kiedy się przestraszę wpadam w panikę",
    "Wolę pracować w grupie niż samotnie",
    "Łatwo jest wytrącić mnie z równowagi",
    "Często czuję się jakbym tryskał(a) energią",
    "Trzeba wiele wysiłków aby mnie rozzłościć",
    "Przeżywam mniej obaw niż moi rówieśnicy",
    "Uważam, że ludzie są bardziej zajmujący niż cokolwiek innego",
  ]

  POSITIVE_FIELDS = []
  NEGATIVE_FIELDS = []

  EXACT_POSITIVE_FIELDS = []
  EXACT_NEGATIVE_FIELDS = []

  SIMILAR_POSITIVE_FIELDS = []
  SIMILAR_NEGATIVE_FIELDS = []

  TITLE = "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz EAS-D WERSJA DLA DOROSŁYCH"

  NAME = "Arnold H. Buss i Robert Plomin KWESTIONARIUSZ EAS-D WERSJA DLA DOROSŁYCH w polskiej adaptacji Włodzimierza Oniszezenki"

  AUTHOR = " "

  DESCRIPTION = "Kwestionariusz ten zawiera stwierdzenia odnoszące się do różnych cech temperamentu. Prosimy przeczytać uważnie każde z nich i otoczyć kółkiem jedną z cyfr od I do 5, aby wskazać, w jakim stopniu dane stwierdzenie opisuje Pana/Panią, Nie ma tu odpowiedzi dobrych lub złych, bo każdy człowiek jest inny, Prosimy nie zastanawiać się długo nad każdym stwierdzeniem i udzielić szczerych odpowiedzi. Należy ustosunkować się do każdego stwierdzenia otaczając kółkiem jedną z pięciu cyfr zależnie od tego, w jakim stopniu dane stwierdzenie dotyczy Pana/Pani:"

  SELECTIONS = [
    "zdecydowanie nie",
    "raczej nie",
    "nie wiem",
    "raczej tak",
    "zdecydowanie tak"
  ]

  SELECTION_STARTS = 1

end
