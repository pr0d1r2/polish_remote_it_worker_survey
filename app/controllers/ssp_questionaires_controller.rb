class SspQuestionairesController < ApplicationController

  def new
    @ssp_questionaire = SspQuestionaire.new
  end

end
