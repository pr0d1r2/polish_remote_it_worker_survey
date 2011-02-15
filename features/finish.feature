Feature: Finish

  Scenario: Entering page
    When I go to the finish page
    Then Page should have title "Ankieta dla polskich pracowników zdalnych z branży IT - Zakończenie ankiety"

    And I should see "Dziękujemy" within header

    And I should see "Możesz znaleźć kod źródłowy tej ankiety na:" within paragraph

    And I should see link "http://github.com/pr0d1r2/polish_remote_it_worker_survey"
