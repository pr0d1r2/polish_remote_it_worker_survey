class Questionaire < ActiveRecord::Base

  def title
    self.class::TITLE
  end

  def name
    self.class::NAME
  end

  def description
    self.class::DESCRIPTION
  end

  def fields
    self.class::FIELDS
  end

  def author
    self.class::AUTHOR
  end

  def selections
    self.class::SELECTIONS
  end

  def selection_starts
    self.class::SELECTION_STARTS
  end

  def selection_options
    selections.collect.with_index do |selection, i|
      [ (i+selection_starts).to_s + ". " + selection, i+selection_starts ]
    end
  end

end
