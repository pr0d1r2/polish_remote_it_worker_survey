# coding: utf-8

class CopeLossQuestionaire < Questionaire

  set_table_name 'cope_loss_questionaires'

  FIELDS = [
    "Rozwijalem(am) się jako człowiek dzięki doświadczeniom życiowym.",
    "Koncentrowałem(am) się na pracy i innych czynnościach, aby nie myśleć o trudnościach",
    "Czułem(am) się rozbity(a) i okazywałem(am) to",
    "Radziłem(am) się innych, co robić",
    "Usiłowałem(am) coś z tym zrobić",
    "Mówiłem(am) sobie 'to nie dzieje się naprawdę'",
    "Powierzyłem(am) wszystko Bogu",
    "Śmiałem(am) się z tej sytuacji",
    "Przyznawałem(am) się przed sobą, że nic tu nie poradzę i przestawałem(am) próbować",
    "Powstrzymywałem(am) się przed pochopnym działaniem",
    "Rozmawiałem(am) z kimś o tym co czułem(am)",
    "Poprawiałem(am) sobie samopoczucie pijąc alkohol lub przyjmując inne środki",
    "Przyzwyczajałem(am) się do myśli, że to się stało",
    "Rozmawiałem(am) z kimś, żeby dowiedzieć się czegoś więcej o sytuacji",
    "Starałem(am) się, by nie rozpraszały mnie inne myśli i działania",
    "Marzyłem(am) o czymś innym",
    "Denerwowałem(am) się i byłem(am) tego świadomy(a)",
    "Prosiłem(am) Boga o pomoc.",
    "Układałem(am) plan działania",
    "Żartowałem(am) z tego",
    "Mówiłem(am) sobie 'stało się i się nie odstanie'",
    "Powstrzymywałem(am) się od działania, dopóki sytuacja nie pozwalała na nie",
    "Szukałem(am) uczuciowego oparcia u przyjaciół i rodziny",
    "Po porostu rezygnowałem(am) z prób osiągnięcia celu",
    "Robiłem(am) wszystko, aby rozwiązać problem",
    "Zatracałem(am) się na chwilę pijąc alkohol lub przyjmując inne środki",
    "Nie przyjmowałem(am) do wiadomości, że to się stało",
    "Dawałem(am) upust moim emocjom",
    "Starałem(am) się zobaczyć to w lepszym świetle",
    "Rozmawiałem(am) z kimś, kto mógł zrobić coś konkretnego w tej sprawie",
    "Sypiałem(am) więcej niż zwykle",
    "Starałem(am) się wymyślać strategie działania",
    "Koncentrowałem(am) się na problemie i jeśli trzeba odkładałem(am) inne rzeczy",
    "Szukałem(am) u kogoś współczucia i zrozumienia",
    "Piłem(am) alkohol lub używałem(am) innych środków, żeby mniej o tym myśleć",
    "Stroiłem(am) sobie z tego żarty",
    "Rezygnowałem(am) z prób osiągnięcia tego, czego chciałcm(am)",
    "Szukałem(am) czegoś dobrego w tym, co się wydarzyło",
    "Zastanawiałem(am) się jak najlepiej poradzić sobie z tym problemem",
    "Udawałem(am), że tak naprawdę nic się nie wydarzyło",
    "Upewniałem(am) się czy przedwczesne działanie nie pogorszy sprawy",
    "Starałem(am) się aby inne rzeczy nie przeszkadzały mi w rozwiązaniu tego problemu",
    "Chodziłem(am) do kina lub oglądałem(am) TV żeby mniej o tym myśleć",
  ]

  POSITIVE_FIELDS = [1, 4, 5, 10, 11, 13, 14, 15, 17, 19, 21, 22, 23, 25, 29, 30, 32, 33, 38, 39, 41, 42]
  NEGATIVE_FIELDS = [2, 3, 6, 7, 8, 9, 12, 16, 18, 20, 24, 26, 27, 28, 31, 34, 35, 36, 37, 40, 43]

  EXACT_NEGATIVE_FIELDS = [
    [7, 18],
    [8, 20, 35],
    [12, 26, 35]
  ]

  TITLE = "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz Cope - Strat"

  NAME = "KWESTIONARIUSZ COPE - STRAT"

  AUTHOR = "C. S. CARVER, M. F. SCHEIER, J. K, WEINTRAUB"

  PERMISSION = "(Za zgodą autorów polska adaptacja przygotowana przez S. Piątek i K. Wrześniewskiego)"

  EXPERIMENTAL = "Wersja eksperymentalna"

  DESCRIPTION = "Ze stresem można poradzić sobie na wiele różnych sposobów, W tym kwestionariuszu prosimy o wskazanie tego, co Pan(i) czuł(a), jak postępował(a) doświadczając ostatnio stresującego wydarzenia związanego z pracą. Prosimy o ustosunkowanie się do 43-ech niżej wymienionych stwierdzeń. Przy każdym z nich podano cztery cyfry (1,2,3,4), Prosimy o zakreślenie tej cyfry, której znaczenie najlepiej charakteryzuje Pana(i) reakcje. Nie ma tu odpowiedzi dobrych ani złych, dlatego prosimy o szczere odpowiedzi, bo tylko takie będą miały wartość. Proszę nie pominąć żadnej pozycji."

  SELECTIONS = [
    "Nigdy tak nie robiłem",
    "Rzadko tak robiłem",
    "Często tak robiłem",
    "Prawie zawsze tak robiłem"
  ]

  SELECTION_STARTS = 1

  def permission
    self.class::PERMISSION
  end

  def experimental
    self.class::EXPERIMENTAL
  end

end
