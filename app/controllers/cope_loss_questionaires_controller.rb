class CopeLossQuestionairesController < InheritedResources::Base

  respond_to :html
  actions :new, :create

  def create
    create! do |success, failure|
      success.html { redirect_to new_ssp_questionaire_path }
    end
  end

end
