Feature: UWES Questionaire

  Scenario: Entering page
    When I go to the new_uwes_questionaire page
    Then Page should have title "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz UWES"

    And I should see "Praca i samopoczucie (Kwestionariusz UWES)" within header

    And I should see "Schaufeli & Bakker (2003)" within header

    And I should see "Poniższe stwierdzenia dotyczą twojego samopoczucia w pracy. Proszę uważnie przeczytać każde stwierdzenie i zdecydować, czy kiedykolwiek czułeś(aś) się w ten sposób w związku ze swoją pracą Jeśli nigdy nie miałeś(aś) takiego odczucia, wybierz cyfrę zero 0 (zero) w pustym miejscu znajdującym się po numerze danego stwierdzenia. Jeśli miałeś(aś) takie odczucie, wskaż jak często czułeś się w ten sposób. Wybierz cyfrę od 1 do 6, wybierając tę, która w najlepszy sposób opisuje częstość twoich odczuć." within paragraph

    And I should see "W pracy czuję, źe rozpiera mnie energia." within "1" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Praca, którą wykonuję jest dla mnie pełna sensu i celowości." within "2" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Czas szybko płynie, kiedy pracuję." within "3" point of list with dropdown selection of "7" options starting from "0"
    And I should see "W pracy czuję się silny(a) i pelen(na) energii." within "4" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Jestem oddany(ą) swojej pracy." within "5" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Kiedy pracuję, zapominam o wszystkim dokoła mnie." within "6" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Moja praca jest dla mnie natchnieniem." within "7" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Kiedy rano wstaję, mam ochotę iść do pracy." within "8" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Czuję się szcześliwy(a), kiedy intensywnie pracuję." within "9" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Jestem dumny(a) z pracy, którą wykonuję." within "10" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Jestem pochłomęty(a) swoją pracą." within "11" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Mogę kontynuować pracą przez bardzo długie odcinki czasu." within "12" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Praca jest dla mnie wyzwaniem." within "13" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Zapominam się kiedy pracuję." within "14" point of list with dropdown selection of "7" options starting from "0"
    And I should see "W pracy jestem odporny(a) psychicznie." within "15" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Trudno mi oderwać się od mojej pracy." within "16" point of list with dropdown selection of "7" options starting from "0"
    And I should see "Pracuję wytrwale, nawet jeśli sprawy nie idą dobrze." within "17" point of list with dropdown selection of "7" options starting from "0"

    And I should see button "Następny" within "#next"
