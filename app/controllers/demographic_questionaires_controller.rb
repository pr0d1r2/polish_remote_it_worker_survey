class DemographicQuestionairesController < InheritedResources::Base

  belongs_to :identity, :finder => :find_by_token, :param => :identity_token

  respond_to :html
  actions :new, :create

  def create
    create! do |success, failure|
      success.html do
        Identity.token_finish!(session_identity_token)
        cookies[:polish_remote_it_worker_survey_identity_token] = nil
        session[:identity_token] = nil
        params[:identity_token] = nil
        redirect_to finish_path
      end
    end
  end

end
