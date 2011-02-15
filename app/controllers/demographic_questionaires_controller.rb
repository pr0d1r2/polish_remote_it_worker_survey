class DemographicQuestionairesController < InheritedResources::Base

  belongs_to :identity, :finder => :find_by_token, :param => :identity_token

  respond_to :html
  actions :new, :create

end
