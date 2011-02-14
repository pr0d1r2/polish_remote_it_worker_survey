require 'spec_helper'

describe PssQuestionairesController do

  let(:the_model) { PssQuestionaire }

  it_should_behave_like "questionaire_controller"

  describe "#create" do
    before { post :create }
    subject { response }

    it { should redirect_to(new_olbi_questionaire_path) }
  end

end
