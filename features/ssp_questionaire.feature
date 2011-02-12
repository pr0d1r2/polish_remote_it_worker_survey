Feature: SSP Questionaire

  Scenario: Entering page
    When I go to the new_ssp_questionaire page
    Then Page should have title "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz SSP"

    And I should see "SKALA SATYSFAKCJI Z PRACY (SSP)" within header

    And I should see "(A. Zalewska, 2003)" within header

    And I should see "Poniżej znajdują się stwierdzenia, z którymi mo/e się Pan (i) zgodzić lub nie zgodzić. Proszę wybrać na linii pod każdym stwierdzeniem odpowiedni numer podanej niżej 7~ punktowej skali, który najbardziej odpowiada Pana (i) opinii. Prosimy o szczere wypowiedzi, zgodnie z punktacją:" within paragraph

    And I should see "zdecydowanie się nie zgadzam" within "1" point of list
    And I should see "nie zgadzam się" within "2" point of list
    And I should see "raczej się nie zgadzam " within "3" point of list
    And I should see "trudno powiedzieć, czy się zgadzam, czy się nie zgadzam" within "4" point of list
    And I should see "raczej się zgadzam" within "5" point of list
    And I should see "zgadzam się" within "6" point of list
    And I should see "zdecydowanie się zgadzam" within "7" point of list

    And I should see "Pod bardzo wieloma względami moja praca bliska jest ideału" within "1" point of list with dropdown selection of "7" options
    And I should see "Mam świetne warunki pracy" within "2" point of list with dropdown selection of "7" options
    And I should see "Jestem zadowolony z pracy" within "3" point of list with dropdown selection of "7" options
    And I should see "Jak dotąd, w pracy udawało mi się osiągać to, czego chciałem" within "4" point of list with dropdown selection of "7" options
    And I should see "Gdybym miał decydować raz jeszcze, wybrałbym tę samą prace" within "5" point of list with dropdown selection of "7" options

    And I should see button "Następny" within "#next"
