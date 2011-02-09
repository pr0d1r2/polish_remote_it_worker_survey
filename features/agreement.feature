Feature: Agreement 

  Scenario: Entering page
    When I go to the agreement page
    Then Page should have title "Ankieta dla polskich pracowników zdalnych z branży IT - Deklaracja zgody na udział w badaniu"
    And I should see "Prosimy o uważne zapoznanie się z treścią tego dokumentu dotyczącego prowadzonego przez nas badania oraz o wyrażenie zgody na udział w badaniu." within paragraph

    And I should see "Celem badania jest określenie związku pomiędzy stresem, zaangażowaniem w pracę i satysfakcją zawodową w grupie pracowników zdalnych." in numbered list with header "1. Cel badania"

    And I should see "Badanie ma formę ankiety. Ankieta składa się z zestawu ośmiu kwestionariuszy, które należy samodzielnie wypełnić, po uprzednim zapoznaniu się z instrukcją. Pytania ankiety dotyczą występowania stresujących sytuacji w miejscu pracy, zaangażowania w pracę oraz satysfakcji. Proszę pamiętać, że nie ma dobrych ani złych odpowiedzi, ludzie różnią się między sobą, zatem każdy ma prawo do odmiennych odpowiedzi. Czas wypełnienia kwestionariuszy to około 20 minut." in numbered list with header "2. Przebieg badania"

    And I should see "Badania służą wyłącznie celom naukowym, są anonimowe, a udział w nich jest dobrowolny. Prosimy więc o prawdziwe odpowiedzi na pytania, bo tylko takie są dla nas wartościowe. Ankiety nie będą udostępniane nikomu, poza osobami prowadzącymi badanie. Opracowanie wyników nastąpi jedynie w postaci zbiorczej, bez charakteryzowania poszczególnych osób biorących udział w badaniach." in numbered list with header "3. Anonimowość i dobrowolność"

    And I should see "W razie jakichkolwiek pytań prosimy wysłać e-mail do koordynadora badań na adres TODO." in numbered list with header "4. Pytania"

    And I should see "Oświadczam, iż przeczytałem/am wszystkie powyższe stwierdzenia i dobrowolnie zgadzam się na uczestnictwo w badaniach." by checkbox

    And I should see "Kontynuuj" within new_pss_questionaire link

