Feature: Cope Loss Questionaire

  Scenario: Entering page
    When I go to the new_cope_loss_questionaire page
    Then Page should have title "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz Cope - Strat"

    And I should see "Wersja eksperymentalna" within header

    And I should see "C. S. CARVER, M. F. SCHEIER, J. K, WEINTRAUB" within header

    And I should see "KWESTIONARIUSZ COPE - STRAT" within header

    And I should see "(Za zgodą autorów polska adaptacja przygotowana przez S. Piątek i K. Wrześniewskiego)" within header

    And I should see "Ze stresem można poradzić sobie na wiele różnych sposobów, W tym kwestionariuszu prosimy o wskazanie tego, co Pan(i) czuł(a), jak postępował(a) doświadczając ostatnio stresującego wydarzenia związanego z pracą. Prosimy o ustosunkowanie się do 60-ciu niżej wymienionych stwierdzeń. Przy każdym z nich podano cztery cyfry (1,2,3,4), Prosimy o zakreślenie tej cyfry, której znaczenie najlepiej charakteryzuje Pana(i) reakcje. Nie ma tu odpowiedzi dobrych ani złych, dlatego prosimy o szczere odpowiedzi, bo tylko takie będą miały wartość. Proszę nie pominąć żadnej pozycji." within paragraph

    And I should see "Rozwijalem(am) się jako człowiek dzięki doświadczeniom życiowym." within "1" point of list with dropdown selection of "4" options
    And I should see "Koncentrowałem(am) się na pracy i innych czynnościach, aby nie myśleć o trudnościach" within "2" point of list with dropdown selection of "4" options
    And I should see "Czułem(am) się rozbity(a) i okazywałem(am) to" within "3" point of list with dropdown selection of "4" options
    And I should see "Radziłem(am) się innych, co robić" within "4" point of list with dropdown selection of "4" options
    And I should see "Usiłowałem(am) coś z tym zrobić" within "5" point of list with dropdown selection of "4" options
    And I should see "Mówiłem(am) sobie 'to nie dzieje się naprawdę'" within "6" point of list with dropdown selection of "4" options
    And I should see "Powierzyłem(am) wszystko Bogu" within "7" point of list with dropdown selection of "4" options
    And I should see "Śmiałem(am) się z tej sytuacji" within "8" point of list with dropdown selection of "4" options
    And I should see "Przyznawałem(am) się przed sobą, że nic tu nie poradzę i przestawałem(am) próbować" within "9" point of list with dropdown selection of "4" options
    And I should see "Powstrzymywałem(am) się przed pochopnym działaniem" within "10" point of list with dropdown selection of "4" options
    And I should see "Rozmawiałem(am) z kimś o tym co czułem(am)" within "11" point of list with dropdown selection of "4" options
    And I should see "Poprawiałem(am) sobie samopoczucie pijąc alkohol lub przyjmując inne środki" within "12" point of list with dropdown selection of "4" options
    And I should see "Przyzwyczajałem(am) się do myśli, że to się stało" within "13" point of list with dropdown selection of "4" options
    And I should see "Rozmawiałem(am) z kimś, żeby dowiedzieć się czegoś więcej o sytuacji" within "14" point of list with dropdown selection of "4" options
    And I should see "Starałem(am) się, by nie rozpraszały mnie inne myśli i działania" within "15" point of list with dropdown selection of "4" options
    And I should see "Marzyłem(am) o czymś innym" within "16" point of list with dropdown selection of "4" options
    And I should see "Denerwowałem(am) się i byłem(am) tego świadomy(a)" within "17" point of list with dropdown selection of "4" options
    And I should see "Prosiłem(am) Boga o pomoc." within "18" point of list with dropdown selection of "4" options
    And I should see "Układałem(am) plan działania" within "19" point of list with dropdown selection of "4" options
    And I should see "Żartowałem(am) z tego" within "20" point of list with dropdown selection of "4" options
    And I should see "Mówiłem(am) sobie 'stało się i się nie odstanie'" within "21" point of list with dropdown selection of "4" options
    And I should see "Powstrzymywałem(am) się od działania, dopóki sytuacja nie pozwalała na nie" within "22" point of list with dropdown selection of "4" options
    And I should see "Szukałem(am) uczuciowego oparcia u przyjaciół i rodziny" within "23" point of list with dropdown selection of "4" options
    And I should see "Po porostu rezygnowałem(am) z prób osiągnięcia celu" within "24" point of list with dropdown selection of "4" options
    And I should see "Robiłem(am) wszystko, aby rozwiązać problem" within "25" point of list with dropdown selection of "4" options
    And I should see "Zatracałem(am) się na chwilę pijąc alkohol lub przyjmując inne środki" within "26" point of list with dropdown selection of "4" options
    And I should see "Nie przyjmowałem(am) do wiadomości, że to się stało" within "27" point of list with dropdown selection of "4" options
    And I should see "Dawałem(am) upust moim emocjom" within "28" point of list with dropdown selection of "4" options
    And I should see "Starałem(am) się zobaczyć to w lepszym świetle" within "29" point of list with dropdown selection of "4" options
    And I should see "Rozmawiałem(am) z kimś, kto mógł zrobić coś konkretnego w tej sprawie" within "30" point of list with dropdown selection of "4" options
    And I should see "Sypiałem(am) więcej niż zwykle" within "31" point of list with dropdown selection of "4" options
    And I should see "Starałem(am) się wymyślać strategie działania" within "32" point of list with dropdown selection of "4" options
    And I should see "Koncentrowałem(am) się na problemie i jeśli trzeba odkładałem(am) inne rzeczy" within "33" point of list with dropdown selection of "4" options
    And I should see "Szukałem(am) u kogoś współczucia i zrozumienia" within "34" point of list with dropdown selection of "4" options
    And I should see "Piłem(am) alkohol lub używałem(am) innych środków, żeby mniej o tym myśleć" within "35" point of list with dropdown selection of "4" options
    And I should see "Stroiłem(am) sobie z tego żarty" within "36" point of list with dropdown selection of "4" options
    And I should see "Rezygnowałem(am) z prób osiągnięcia tego, czego chciałcm(am)" within "37" point of list with dropdown selection of "4" options
    And I should see "Szukałem(am) czegoś dobrego w tym, co się wydarzyło" within "38" point of list with dropdown selection of "4" options
    And I should see "Zastanawiałem(am) się jak najlepiej poradzić sobie z tym problemem" within "39" point of list with dropdown selection of "4" options
    And I should see "Udawałem(am), że tak naprawdę nic się nie wydarzyło" within "40" point of list with dropdown selection of "4" options
    And I should see "Upewniałem(am) się czy przedwczesne działanie nie pogorszy sprawy" within "41" point of list with dropdown selection of "4" options
    And I should see "Starałem(am) się aby inne rzeczy nie przeszkadzały mi w rozwiązaniu tego problemu" within "42" point of list with dropdown selection of "4" options
    And I should see "Chodziłem(am) do kina lub oglądałem(am) TV żeby mniej o tym myśleć" within "43" point of list with dropdown selection of "4" options

    And I should see button "Następny" within "#next"
