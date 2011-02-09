class PssQuestionairesController < ApplicationController

  def new
    @pss_questionaire = PssQuestionaire.new
  end

end
