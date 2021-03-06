# coding: utf-8

class OlbiQuestionaire < Questionaire

  set_table_name "olbi_questionaires"

  FIELDS = [
    "Zawsze odnajduję nowe i interesujące aspekty mojej pracy",
    "Są dni, kiedy już przed pracą czuję się zmęezony(a)",
    "Coraz częściej zdarza się, że mówię o mojej pracy w negatywny sposób",
    "Po pracy zwykle potrzebuję więcej czasu niż kiedyś, aby się zrelaksować i wrócić do formy",
    "Dość dobrze znoszę presję związaną z moją pracą",
    "Ostatnio zwykle mniej myślę w pracy, a moją pracę wykonuję prawie mechanicznie",
    "Moja praca stwarza wiele pozytywnych wyzwań",
    "W czasie pracy coraz częściej czuję się emocjonalnie wyczerpany(a)",
    "Z czasem, można stracić zaangażowanie w wykonywanie tego typu pracy",
    "Po pracy z reguły mam dość siły, aby zająć się czymś dla własnej przyjemności",
    "Czasami to co robię w pracy napawa mnie obrzydzeniem",
    "Po pracy zazwyczaj czuję się wy kończony (a) iznużony(a)",
    "To jedyny typ pracy, jaki wyobrażam sobie, że mogę wykonywać",
    "Zazwyczaj, dobrze daję sobie radę z ilością pracy, jaką mam wykonać",
    "Z czasem coraz bardziej angażuję się w swoją pracę",
    "Kiedy pracuję, zazwyczaj czuję się pełny(a) energii",
  ]

  POSITIVE_FIELDS = [1, 5, 7, 10, 13, 14, 15, 16]
  NEGATIVE_FIELDS = [2, 3, 4, 6, 8, 9, 11, 12]

  EXACT_POSITIVE_FIELDS = []
  EXACT_NEGATIVE_FIELDS = []

  SIMILAR_POSITIVE_FIELDS = []
  SIMILAR_NEGATIVE_FIELDS = []

  TITLE = "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz OLBI"

  NAME = "KWESTIONARIUSZ OLBI"

  AUTHOR = " "

  DESCRIPTION = "Poniżej znajdują się stwierdzenia, z którymi ludzie się zgadzają lub nie zgadzają. Używając zaproponowanej skali odpowiedzi, proszę wskazać, w jakim stopniu Pani/Pan zgadza się z danym stwierdzeniem."

  SELECTIONS = [
    "Zgadzam się",
    "Raczej zgadzam się",
    "Raczej nie zgadzam się",
    "Nie zgadzam się"
  ]

  SELECTION_STARTS = 1

end
