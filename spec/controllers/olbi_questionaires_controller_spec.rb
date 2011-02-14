require 'spec_helper'

describe OlbiQuestionairesController do

  let(:the_model) { OlbiQuestionaire }

  it_should_behave_like "questionaire_controller"

  describe "#create" do
    before { post :create }
    subject { response }

    it { should redirect_to(new_eas_d_adult_questionaire_path) }
  end

end
