require 'spec_helper'

describe DemographicQuestionairesController do

  let(:the_model) { DemographicQuestionaire }

  it_should_behave_like "questionaire_controller"

  describe "#create" do
    describe "response" do
      before { post :create }
      subject { response }

      it { should redirect_to(finish_path) }
    end

    describe "behavior" do
      let(:identity) { Identity.create }
      let(:token) { identity.token }

      before { controller.stub!(:session_identity_token => token) }
      after { post :create }

      it "should finish token for identity" do
        Identity.should_receive(:token_finish!).with(token)
      end

      it "should clear token in params" do
        controller.params[:identity_token].should be_nil
      end

      it "should clear token in session" do
        controller.session[:identity_token].should be_nil
      end

      it "should clear token in params" do
        controller.send(:cookies)[:polish_remote_it_worker_survey_identity_token].should be_nil
      end
    end
  end

end
