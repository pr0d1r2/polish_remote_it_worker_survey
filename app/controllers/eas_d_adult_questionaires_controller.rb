class EasDAdultQuestionairesController < InheritedResources::Base

  respond_to :html
  actions :new, :create

  def create
    create! do |success, failure|
      success.html { redirect_to new_cope_loss_questionaire_path }
    end
  end

end
