class OlbiQuestionairesController < InheritedResources::Base

  respond_to :html
  actions :new, :create

  def create
    create! do |success, failure|
      success.html { redirect_to new_eas_d_adult_questionaire_path }
    end
  end

end
