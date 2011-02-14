Feature: Full process

  Scenario: I enter the page and follow thru all questionaires to complete survey
    When I go to the welcome page
    And I follow "Kontynuuj"

    # agreement page
    And I follow "Kontynuuj"

    And I select "1" from field "2"
    And I select "2" from field "3"
    And I select "3" from field "4"
    And I select "4" from field "5"
    And I select "0" from field "6"
    And I select "1" from field "7"
    And I select "2" from field "8"
    And I select "3" from field "9"
    And I select "4" from field "10"
    And I select "0" from field "11"
    And I select "1" from field "12"
    And I select "2" from field "13"
    And I select "3" from field "14"
    And I press "Następny"
    Then I should have created new "pss_questionaire" with following fields
      |1 |9|
      |2 |1|
      |3 |2|
      |4 |3|
      |5 |4|
      |6 |0|
      |7 |1|
      |8 |2|
      |9 |3|
      |10|4|
      |11|0|
      |12|1|
      |13|2|
      |14|3|

    When I select "1" from field "2"
    And I select "2" from field "3"
    And I select "3" from field "4"
    And I select "4" from field "5"
    And I select "1" from field "6"
    And I select "2" from field "7"
    And I select "3" from field "8"
    And I select "4" from field "9"
    And I select "1" from field "10"
    And I select "2" from field "11"
    And I select "3" from field "12"
    And I select "4" from field "13"
    And I select "1" from field "14"
    And I select "2" from field "15"
    And I select "3" from field "16"
    And I press "Następny"
    Then I should have created new "olbi_questionaire" with following fields
      |1 |9|
      |2 |1|
      |3 |2|
      |4 |3|
      |5 |4|
      |6 |1|
      |7 |2|
      |8 |3|
      |9 |4|
      |10|1|
      |11|2|
      |12|3|
      |13|4|
      |14|1|
      |15|2|
      |16|3|

    When I select "1" from field "2"
    And I select "2" from field "3"
    And I select "3" from field "4"
    And I select "4" from field "5"
    And I select "5" from field "6"
    And I select "1" from field "7"
    And I select "2" from field "8"
    And I select "3" from field "9"
    And I select "4" from field "10"
    And I select "5" from field "11"
    And I select "1" from field "12"
    And I select "2" from field "13"
    And I select "3" from field "14"
    And I select "4" from field "15"
    And I select "5" from field "16"
    And I select "1" from field "17"
    And I select "2" from field "18"
    And I select "3" from field "19"
    And I select "4" from field "20"
    And I press "Następny"
    Then I should have created new "eas_d_adult_questionaire" with following fields
      |1 |9|
      |2 |1|
      |3 |2|
      |4 |3|
      |5 |4|
      |6 |5|
      |7 |1|
      |8 |2|
      |9 |3|
      |10|4|
      |11|5|
      |12|1|
      |13|2|
      |14|3|
      |15|4|
      |16|5|
      |17|1|
      |18|2|
      |19|3|
      |20|4|

    When I select "1" from field "2"
    And I select "2" from field "3"
    And I select "3" from field "4"
    And I select "4" from field "5"
    And I select "1" from field "6"
    And I select "2" from field "7"
    And I select "3" from field "8"
    And I select "4" from field "9"
    And I select "1" from field "10"
    And I select "2" from field "11"
    And I select "3" from field "12"
    And I select "4" from field "13"
    And I select "1" from field "14"
    And I select "2" from field "15"
    And I select "3" from field "16"
    And I select "4" from field "17"
    And I select "1" from field "18"
    And I select "2" from field "19"
    And I select "3" from field "20"
    And I select "4" from field "21"
    And I select "1" from field "22"
    And I select "2" from field "23"
    And I select "3" from field "24"
    And I select "4" from field "25"
    And I select "1" from field "26"
    And I select "2" from field "27"
    And I select "3" from field "28"
    And I select "4" from field "29"
    And I select "1" from field "30"
    And I select "2" from field "31"
    And I select "3" from field "32"
    And I select "4" from field "33"
    And I select "1" from field "34"
    And I select "2" from field "35"
    And I select "3" from field "36"
    And I select "4" from field "37"
    And I select "1" from field "38"
    And I select "2" from field "39"
    And I select "3" from field "40"
    And I select "4" from field "41"
    And I select "1" from field "42"
    And I select "2" from field "43"
    And I press "Następny"
    Then I should have created new "cope_loss_questionaire" with following fields
      |1 |9|
      |2 |1|
      |3 |2|
      |4 |3|
      |5 |4|
      |6 |1|
      |7 |2|
      |8 |3|
      |9 |4|
      |10|1|
      |11|2|
      |12|3|
      |13|4|
      |14|1|
      |15|2|
      |16|3|
      |17|4|
      |18|1|
      |19|2|
      |20|3|
      |21|4|
      |22|1|
      |23|2|
      |24|3|
      |25|4|
      |26|1|
      |27|2|
      |28|3|
      |29|4|
      |30|1|
      |31|2|
      |32|3|
      |33|4|
      |34|1|
      |35|2|
      |36|3|
      |37|4|
      |38|1|
      |39|2|
      |40|3|
      |41|4|
      |42|1|
      |43|2|

    When I select "1" from field "2"
    And I select "2" from field "3"
    And I select "3" from field "4"
    And I select "4" from field "5"
    And I press "Następny"
    Then I should have created new "ssp_questionaire" with following fields
      |1 |9|
      |2 |1|
      |3 |2|
      |4 |3|
      |5 |4|

    When I select "1" from field "2"
    And I select "2" from field "3"
    And I select "3" from field "4"
    And I select "4" from field "5"
    And I select "5" from field "6"
    And I select "6" from field "7"
    And I select "1" from field "8"
    And I select "2" from field "9"
    And I select "3" from field "10"
    And I select "4" from field "11"
    And I select "5" from field "12"
    And I select "6" from field "13"
    And I select "1" from field "14"
    And I select "2" from field "15"
    And I select "3" from field "16"
    And I select "4" from field "17"
    And I press "Następny"
    Then I should have created new "uwes_questionaire" with following fields
      |1 |9|
      |2 |1|
      |3 |2|
      |4 |3|
      |5 |4|
      |6 |5|
      |7 |6|
      |8 |1|
      |9 |2|
      |10|3|
      |11|4|
      |12|5|
      |13|6|
      |14|1|
      |15|2|
      |16|3|
      |17|4|

    Then I should have "pss_questionaire" owned by last identity
    Then I should have "olbi_questionaire" owned by last identity
    Then I should have "eas_d_adult_questionaire" owned by last identity
    Then I should have "cope_loss_questionaire" owned by last identity
    Then I should have "ssp_questionaire" owned by last identity
    Then I should have "uwes_questionaire" owned by last identity

