require 'spec_helper'

describe DemographicQuestionairesController do

  let(:the_model) { DemographicQuestionaire }

  it_should_behave_like "questionaire_controller"

  describe "#create" do
    before { post :create }
    subject { response }

    it { should redirect_to(finish_path) }
  end

end
