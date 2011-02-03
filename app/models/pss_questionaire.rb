# coding: utf-8

class PssQuestionaire < ActiveRecord::Base

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

end
