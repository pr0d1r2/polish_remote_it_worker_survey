require 'spec_helper'

describe ApplicationController do

  describe "#cookie_identity_token" do
    let(:identity_token) { mock }
    let(:cookie_identity_token) { mock }
    let(:cookies) { {} }
    before do
      Identity.stub!(:create_and_return_token => identity_token)
      controller.stub!(:cookies => cookies)
    end

    describe "behavoir" do
      after { subject.cookie_identity_token }

      it "should create identity and return its token" do
        Identity.should_receive(:create_and_return_token).and_return(identity_token)
      end
    end

    describe "polish_remote_it_worker_survey_identity_token in cookie" do
      subject do
        controller.cookie_identity_token
        cookies[:polish_remote_it_worker_survey_identity_token]
      end

      it { should == identity_token }
    end

    describe "returns" do
      subject { controller.cookie_identity_token }

      it { should == identity_token }
    end
  end

  describe "#session_identity_token" do
    let(:identity_token) { mock }
    let(:cookie_identity_token) { mock }
    before do
      Identity.stub!(:get_token => identity_token)
      controller.stub!(:cookie_identity_token => cookie_identity_token)
    end

    describe "behavoir" do
      after { subject.session_identity_token }

      it "should get token" do
        Identity.should_receive(:get_token).and_return(identity_token)
      end

      it "should use cookie stored token" do
        subject.should_receive(:cookie_identity_token).and_return(cookie_identity_token)
      end
    end

    describe "identity_token on session" do
      subject do
        controller.session_identity_token
        session[:identity_token]
      end

      it { should == identity_token }
    end

    describe "returns" do
      subject { controller.session_identity_token }

      it { should == identity_token }
    end
  end

  describe "#set_token_param" do
    let(:session_identity_token) { mock }
    let(:params) { {} }
    before do
      controller.stub!(
        :session_identity_token => session_identity_token,
        :params => params
      )
    end

    describe "behavoir" do
      after { subject.set_identity_token_param }

      it "should call #session_identity_token" do
        controller.should_receive(:session_identity_token).and_return(session_identity_token)
      end
    end

    describe "identity_token in params" do
      subject do
        controller.set_identity_token_param
        params[:identity_token]
      end

      it { should == session_identity_token }
    end

    describe "returns" do
      subject { controller.set_identity_token_param }

      it { should == session_identity_token }
    end
  end

end
