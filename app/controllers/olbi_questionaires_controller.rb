class OlbiQuestionairesController < ApplicationController

  def new
    @olbi_questionaire = OlbiQuestionaire.new
  end

end
