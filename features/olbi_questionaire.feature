Feature: OLBI Questionaire

  Scenario: Entering page
    When I go to the new_olbi_questionaire page
    Then Page should have title "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz OLBI"

    And I should see "KWESTIONARIUSZ OLBI" within header

    And I should see "Poniżej znajdują się stwierdzenia, z którymi ludzie się zgadzają lub nie zgadzają. Używając zaproponowanej skali odpowiedzi, proszę wskazać, w jakim stopniu Pani/Pan zgadza się z danym stwierdzeniem." within paragraph

    And I should see "Zawsze odnajduję nowe i interesujące aspekty mojej pracy" within "1" point of list with selection "1-4"
    And I should see "Są dni, kiedy już przed pracą czuję się zmęezony(a)" within "2" point of list with selection "1-4"
    And I should see "Coraz częściej zdarza się, że mówię o mojej pracy w negatywny sposób" within "3" point of list with selection "1-4"
    And I should see "Po pracy zwykle potrzebuję więcej czasu niż kiedyś, aby się zrelaksować i wrócić do formy" within "4" point of list with selection "1-4"
    And I should see "Dość dobrze znoszę presję związaną z moją pracą" within "5" point of list with selection "1-4"
    And I should see "Ostatnio zwykle mniej myślę w pracy, a moją pracę wykonuję prawie mechanicznie" within "6" point of list with selection "1-4"
    And I should see "Moja praca stwarza wiele pozytywnych wyzwań" within "7" point of list with selection "1-4"
    And I should see "W czasie pracy coraz częściej czuję się emocjonalnie wyczerpany(a)" within "8" point of list with selection "1-4"
    And I should see "Z czasem, można stracić zaangażowanie w wykonywanie tego typu pracy" within "9" point of list with selection "1-4"
    And I should see "Po pracy z reguły mam dość siły, aby zająć się czymś dla własnej przyjemności" within "10" point of list with selection "1-4"
    And I should see "Czasami to co robię w pracy napawa mnie obrzydzeniem" within "11" point of list with selection "1-4"
    And I should see "Po pracy zazwyczaj czuję się wy kończony (a) iznużony(a)" within "12" point of list with selection "1-4"
    And I should see "To jedyny typ pracy, jaki wyobrażam sobie, że mogę wykonywać" within "13" point of list with selection "1-4"
    And I should see "Zazwyczaj, dobrze daję sobie radę z ilością pracy, jaką mam wykonać" within "14" point of list with selection "1-4"
    And I should see "Z czasem coraz bardziej angażuję się w swoją pracę" within "15" point of list with selection "1-4"
    And I should see "Kiedy pracuję, zazwyczaj czuję się pełny(a) energii" within "16" point of list with selection "1-4"

    And I should see button "Następny" within "#next"
