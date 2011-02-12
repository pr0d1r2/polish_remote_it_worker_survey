Feature: PSS Questionaire

  Scenario: Entering page
    When I go to the new_pss_questionaire page
    Then Page should have title "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz PSS"

    And I should see "KWESTIONARIUSZ PSS" within header

    And I should see "Sheldon Cohen" within header

    And I should see "Zawarte w tym kwestionariuszu pytania dotyczą twoich myśli i odczuć z ostatniego miesiąca. W przypadku każdego pytania wskaż, jak często odczuwałeś, czy myślałeś w określony sposób. Chociaż niektóre z pytań są do siebie podobne, to istnieją jednak różnice między nimi. Powinieneś zatem traktować każde z pytań jako niezależne. Udzielaj odpowiedzi szybko. To znaczy, nie usiłuj dokładnie przypomnieć sobie, ile razy odczuwałeś, czy myślałeś w określony sposób, lecz raczej wskaż odpowiedz, która wydaje się w przybliżeniu właściwa. Dla każdego z pytań masz do wyboru pięć możliwych sposobów odpowiedzi: Nigdy, Prawie nigdy, Czasami, Dość często. Bardzo często." within paragraph

    And I should see "Jak często w ostatnim miesiącu wytrącały cię z równowagi jakieś niespodziewane zdarzenia?" within "1" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu czułeś, że nie potrafisz kontrolować przebiegu ważnych dla ciebie spraw?" within "2" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu czułeś się zdenerwowany i zestresowany?" within "3" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu zdołałeś uporać się z denerwującymi kłopotami dnia codziennego?" within "4" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu miałeś przeświadczenie, że poradzisz sobie w ważnymi zmianami, które pojawiły się w twoim życiu?" within "5" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu byłeś pewien, że jesteś w stanie sam pokierować własnymi sprawami?" within "6" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu czułeś, że sprawy układają się po twojej myśli?" within "7" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu stwierdziłeś, że nie mogłeś uporać się ze wszystkim, co miałeś do zrobienia?" within "8" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu udało ci się kontrolować stany swojego podenerwowania?" within "9" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu miałeś poczucie panowania nad sytuacją?" within "10" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu złościły cię sprawy, na które nie miałeś wpływu?" within "11" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu zdarzyło ci. się myśleć o rzeczach, które jeszcze musisz wykonać?" within "12" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu byłeś w stanie decydować o tym, na co przeznaczyć swój czas?" within "13" point of list with dropdown selection of "5" options starting from "0"
    And I should see "Jak często w ostatnim miesiącu czułeś, że trudności tak się spiętrzyły, że nie zdołasz im podołać?" within "14" point of list with dropdown selection of "5" options starting from "0"

    And I should see button "Następny" within "#next"
