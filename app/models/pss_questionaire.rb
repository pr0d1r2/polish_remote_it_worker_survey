# coding: utf-8

class PssQuestionaire < Questionaire

  set_table_name "pss_questionaires"

  HOW_OFTEN = "Jak często w ostatnim miesiącu"
  FIELDS = [
    "#{HOW_OFTEN} wytrącały cię z równowagi jakieś niespodziewane zdarzenia?",
    "#{HOW_OFTEN} czułeś, że nie potrafisz kontrolować przebiegu ważnych dla ciebie spraw?",
    "#{HOW_OFTEN} czułeś się zdenerwowany i zestresowany?",
    "#{HOW_OFTEN} zdołałeś uporać się z denerwującymi kłopotami dnia codziennego?",
    "#{HOW_OFTEN} miałeś przeświadczenie, że poradzisz sobie w ważnymi zmianami, które pojawiły się w twoim życiu?",
    "#{HOW_OFTEN} byłeś pewien, że jesteś w stanie sam pokierować własnymi sprawami?",
    "#{HOW_OFTEN} czułeś, że sprawy układają się po twojej myśli?",
    "#{HOW_OFTEN} stwierdziłeś, że nie mogłeś uporać się ze wszystkim, co miałeś do zrobienia?",
    "#{HOW_OFTEN} udało ci się kontrolować stany swojego podenerwowania?",
    "#{HOW_OFTEN} miałeś poczucie panowania nad sytuacją?",
    "#{HOW_OFTEN} złościły cię sprawy, na które nie miałeś wpływu?",
    "#{HOW_OFTEN} zdarzyło ci. się myśleć o rzeczach, które jeszcze musisz wykonać?",
    "#{HOW_OFTEN} byłeś w stanie decydować o tym, na co przeznaczyć swój czas?",
    "#{HOW_OFTEN} czułeś, że trudności tak się spiętrzyły, że nie zdołasz im podołać?"
  ]

  TITLE = "Ankieta dla polskich pracowników zdalnych z branży IT - Kwestionariusz PSS"

  NAME = "KWESTIONARIUSZ PSS"

  AUTHOR = "Sheldon Cohen"

  DESCRIPTION = "Zawarte w tym kwestionariuszu pytania dotyczą twoich myśli i odczuć z ostatniego miesiąca. W przypadku każdego pytania wskaż, jak często odczuwałeś, czy myślałeś w określony sposób. Chociaż niektóre z pytań są do siebie podobne, to istnieją jednak różnice między nimi. Powinieneś zatem traktować każde z pytań jako niezależne. Udzielaj odpowiedzi szybko. To znaczy, nie usiłuj dokładnie przypomnieć sobie, ile razy odczuwałeś, czy myślałeś w określony sposób, lecz raczej wskaż odpowiedz, która wydaje się w przybliżeniu właściwa. Dla każdego z pytań masz do wyboru pięć możliwych sposobów odpowiedzi: Nigdy, Prawie nigdy, Czasami, Dość często. Bardzo często."

  SELECTIONS = [
    "Nigdy",
    "Prawie nigdy",
    "Czasami",
    "Dość często",
    "Bardzo często"
  ]

  SELECTION_STARTS = 0

end
