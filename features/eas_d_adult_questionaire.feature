Feature: EAS-D Adult Questionaire

  Scenario: Entering page
    When I go to the new_eas_d_adult_questionaire page
    Then Page should have title "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz EAS-D WERSJA DLA DOROSŁYCH"

    And I should see "Arnold H. Buss i Robert Plomin KWESTIONARIUSZ EAS-D WERSJA DLA DOROSŁYCH w polskiej adaptacji Włodzimierza Oniszezenki" within header

    And I should see "Kwestionariusz ten zawiera stwierdzenia odnoszące się do różnych cech temperamentu. Prosimy przeczytać uważnie każde z nich i otoczyć kółkiem jedną z cyfr od I do 5, aby wskazać, w jakim stopniu dane stwierdzenie opisuje Pana/Panią, Nie ma tu odpowiedzi dobrych lub złych, bo każdy człowiek jest inny, Prosimy nie zastanawiać się długo nad każdym stwierdzeniem i udzielić szczerych odpowiedzi. Należy ustosunkować się do każdego stwierdzenia otaczając kółkiem jedną z pięciu cyfr zależnie od tego, w jakim stopniu dane stwierdzenie dotyczy Pana/Pani:" within paragraph

    And I should see "Lubię przebywać z ludźmi" within "1" point of list with dropdown selection of "5" options
    And I should see "Zwykle sprawiam wrażenie osoby spieszącej się" within "2" point of list with dropdown selection of "5" options
    And I should see "Łatwo mnie przestraszyć" within "3" point of list with dropdown selection of "5" options
    And I should see "Często jestem spięty(a)" within "4" point of list with dropdown selection of "5" options
    And I should see "Kiedy jestem niezadowolony(a) natychmiast daję to odczuć innym ludziom" within "5" point of list with dropdown selection of "5" options
    And I should see "Jestem czasem samotnikiem" within "6" point of list with dropdown selection of "5" options
    And I should see "Lubię być stale czymś zajęty(a)" within "7" point of list with dropdown selection of "5" options
    And I should see "Uchodzę za osobę zapalczywą i porywczą" within "8" point of list with dropdown selection of "5" options
    And I should see "Często czuję się sfrustrowany(a)" within "9" point of list with dropdown selection of "5" options
    And I should see "Moje życie ma szybkie tempo" within "10" point of list with dropdown selection of "5" options
    And I should see "Codzienne zdarzenia czynią mnie zatroskanym(ą) i roztrzęsionym(ą)" within "11" point of list with dropdown selection of "5" options
    And I should see "Często nie czuję się bezpiecznie" within "12" point of list with dropdown selection of "5" options
    And I should see "Wiele rzeczy irytuje mnie" within "13" point of list with dropdown selection of "5" options
    And I should see "Kiedy się przestraszę wpadam w panikę" within "14" point of list with dropdown selection of "5" options
    And I should see "Wolę pracować w grupie niż samotnie" within "15" point of list with dropdown selection of "5" options
    And I should see "Łatwo jest wytrącić mnie z równowagi" within "16" point of list with dropdown selection of "5" options
    And I should see "Często czuję się jakbym tryskał(a) energią" within "17" point of list with dropdown selection of "5" options
    And I should see "Trzeba wiele wysiłków aby mnie rozzłościć" within "18" point of list with dropdown selection of "5" options
    And I should see "Przeżywam mniej obaw niż moi rówieśnicy" within "19" point of list with dropdown selection of "5" options
    And I should see "Uważam, że ludzie są bardziej zajmujący niż cokolwiek innego" within "20" point of list with dropdown selection of "5" options

    And I should see button "Następny" within "#next"
