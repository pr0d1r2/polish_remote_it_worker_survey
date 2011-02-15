# coding: utf-8

class DemographicQuestionaire < ActiveRecord::Base

  STARTING_AGE = 10
  ENDING_AGE = 90

  STARTING_CHILDREN_COUNT = 0
  ENDING_CHILDREN_COUNT = 20

  STARTING_YEARS_WORKING = 0
  ENDING_YEARS_WORKING = 50

  STARTING_HOURS_PER_WEEK = 1
  ENDING_HOURS_PER_WEEK = 70

  TITLE = "Ankieta dla polskich pracowników zdalnych z branży IT - Ankieta Demograficzna"
  NAME = "ANKIETA DEMOGRAFICZNA"
  DESCRIPTION = "Proszę o uzupełnienie informacji dotyczących Państwa osoby w podanych pustych miejscach lub zakreślenie kółkiem wybranej opcji."

  AGE_LABEL = "WIEK"
  MALE_LABEL = "PŁEĆ"
  MARRIED_LABEL = "STATUS RODZINNY"
  CHILDREN_COUNT_LABEL = "LICZBA DZIECI"
  FUNCTION_LABEL = "ZAWÓD (PEŁNIONA FUNKCJA)"
  YEARS_WORKING_LABEL = "STAŻ PRACY"
  WORKPLACE_LABEL = "MIEJSCE PRACY"
  HOURS_PER_WEEK_LABEL = "ŚREDNIA LICZBA GODZIN TYGODNIOWO PRZEZNACZANA NA PRACĘ ZAWODOWĄ"

  belongs_to :identity

  def title
    self.class::TITLE
  end

  def name
    self.class::NAME
  end

  def description
    self.class::DESCRIPTION
  end

  def age_options
    starting_age.upto(ending_age).collect do |age|
      [ age, age ]
    end
  end

  def age_label
    self.class::AGE_LABEL
  end

  def male_options
    [ [ 'mężczyzna', true ], [ 'kobieta', false ] ]
  end

  def male_label
    self.class::MALE_LABEL
  end

  def married_options
    [ [ 'w związku małżeńskim', true ], [ 'wolny', false ] ]
  end

  def married_label
    self.class::MARRIED_LABEL
  end

  def children_count_options
    starting_children_count.upto(ending_children_count).collect do |children_count|
      [ children_count, children_count ]
    end
  end

  def children_count_label
    self.class::CHILDREN_COUNT_LABEL
  end

  def function_label
    self.class::FUNCTION_LABEL
  end

  def years_working_options
    starting_years_working.upto(ending_years_working).collect do |years_working|
      [ years_working, years_working ]
    end
  end

  def years_working_label
    self.class::YEARS_WORKING_LABEL
  end

  def workplace_label
    self.class::WORKPLACE_LABEL
  end

  def hours_per_week_options
    starting_hours_per_week.upto(ending_hours_per_week).collect do |hours_per_week|
      [ hours_per_week, hours_per_week ]
    end
  end

  def hours_per_week_label
    self.class::HOURS_PER_WEEK_LABEL
  end

  private

    def starting_age
      self.class::STARTING_AGE
    end

    def ending_age
      self.class::ENDING_AGE
    end

    def starting_children_count
      self.class::STARTING_CHILDREN_COUNT
    end

    def ending_children_count
      self.class::ENDING_CHILDREN_COUNT
    end

    def starting_years_working
      self.class::STARTING_YEARS_WORKING
    end

    def ending_years_working
      self.class::ENDING_YEARS_WORKING
    end

    def starting_hours_per_week
      self.class::STARTING_HOURS_PER_WEEK
    end

    def ending_hours_per_week
      self.class::ENDING_HOURS_PER_WEEK
    end

end
