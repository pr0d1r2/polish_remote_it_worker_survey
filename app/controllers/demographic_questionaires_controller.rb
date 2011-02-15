class DemographicQuestionairesController < InheritedResources::Base

  belongs_to :identity, :finder => :find_by_token, :param => :identity_token

  respond_to :html
  actions :new, :create

  def create
    create! do |success, failure|
      success.html { redirect_to finish_path }
    end
  end

end
