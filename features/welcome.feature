Feature: Welcome

  Scenario: Entering page
    When I go to the welcome page
    Then Page should have title "Ankieta dla polskich pracowników zdalnych z branży IT"
    And I should see "Ankieta dla polskich pracowników zdalnych z branży IT" within header
    And I should see "Oto ankieta, która bada satysfakcję pracowników zdalnych z branży IT. Stworzona jest dla potrzeb pracy magisterskiej. Wypełnienie całości zajmie około 10 minut." within paragraph
    And I should see "Kontynuuj" within agreement link
