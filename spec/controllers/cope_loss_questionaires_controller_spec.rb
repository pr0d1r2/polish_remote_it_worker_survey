require 'spec_helper'

describe CopeLossQuestionairesController do

  let(:the_model) { CopeLossQuestionaire }

  it_should_behave_like "questionaire_controller"

  describe "#create" do
    before { post :create }
    subject { response }

    it { should redirect_to(new_ssp_questionaire_path) }
  end

end
