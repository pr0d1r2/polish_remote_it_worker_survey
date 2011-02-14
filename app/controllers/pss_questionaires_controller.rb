class PssQuestionairesController < InheritedResources::Base

  belongs_to :identity, :finder => :find_by_token, :param => :identity_token

  respond_to :html
  actions :new, :create

  def create
    create! do |success, failure|
      success.html { redirect_to new_olbi_questionaire_path }
    end
  end

end
