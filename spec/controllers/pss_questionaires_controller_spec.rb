require 'spec_helper'

describe PssQuestionairesController do

  describe "#new" do
    let(:pss_questionaire) { mock }
    before { PssQuestionaire.stub!(:new => pss_questionaire) }

    describe "response" do
      before { get :new }
      subject { response }

      it { should be_success }

      it { should render_template 'new' }
    end

    describe "assigned pss_questionaire" do
      before { get :new }
      subject { assigns(:pss_questionaire) }

      it { should == pss_questionaire }
    end

    describe "behavior" do
      after { get :new }

      it "should create new PssQuestionaire" do
        PssQuestionaire.should_receive(:new).and_return(pss_questionaire)
      end
    end

    describe "route" do
      subject { { :get => "/pss_questionaires/new" } }

      it { should route_to(:controller => "pss_questionaires", :action => "new") }
    end
  end

end
