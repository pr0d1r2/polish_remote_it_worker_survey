Feature: Demographic questionaire

  Scenario: Entering page
    When I go to the new_demographic_questionaire page

    Then I should see "ANKIETA DEMOGRAFICZNA" within header

    Then I should see "Proszę o uzupełnienie informacji dotyczących Państwa osoby w podanych pustych miejscach lub zakreślenie kółkiem wybranej opcji." within header

    Then I should see "WIEK" within "1" point of list with dropdown selection of "80" options starting from "10"

    Then I should see "PŁEĆ" within "2" point of list with dropdown boolean selection

    Then I should see "STATUS RODZINNY" within "3" point of list with dropdown boolean selection

    Then I should see "LICZBA DZIECI" within "4" point of list with dropdown selection of "20" options

    Then I should see "ZAWÓD (PEŁNIONA FUNKCJA)" within "5" point of list with text field

    Then I should see "STAŻ PRACY" within "6" point of list with dropdown selection of "20" options

    Then I should see "MIEJSCE PRACY" within "7" point of list with text field
    Then I should see "biuro | dom | biuro/dom | inne" within paragraph in numbered list

    Then I should see "ŚREDNIA LICZBA GODZIN TYGODNIOWO PRZEZNACZANA NA PRACĘ ZAWODOWĄ" within "8" point of list with dropdown selection of "70" options
