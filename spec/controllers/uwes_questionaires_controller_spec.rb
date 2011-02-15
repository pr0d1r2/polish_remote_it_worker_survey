require 'spec_helper'

describe UwesQuestionairesController do

  let(:the_model) { UwesQuestionaire }

  it_should_behave_like "questionaire_controller"

  describe "#create" do
    before { post :create }
    subject { response }

    it { should redirect_to(new_demographic_questionaire_path) }
  end

end
