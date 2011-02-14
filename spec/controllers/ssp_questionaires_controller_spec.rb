require 'spec_helper'

describe SspQuestionairesController do

  let(:the_model) { SspQuestionaire }

  it_should_behave_like "questionaire_controller"

  describe "#create" do
    before { post :create }
    subject { response }

    it { should redirect_to(new_uwes_questionaire_path) }
  end

end
