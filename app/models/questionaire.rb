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

end
