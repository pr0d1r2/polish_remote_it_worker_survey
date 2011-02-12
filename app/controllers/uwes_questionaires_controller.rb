class UwesQuestionairesController < ApplicationController

  def new
    @uwes_questionaire = UwesQuestionaire.new
  end

end
