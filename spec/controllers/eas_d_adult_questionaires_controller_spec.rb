require 'spec_helper'

describe EasDAdultQuestionairesController do

  let(:the_model) { EasDAdultQuestionaire }

  it_should_behave_like "questionaire_controller"

  describe "#create" do
    before { post :create }
    subject { response }

    it { should redirect_to(new_cope_loss_questionaire_path) }
  end

end
