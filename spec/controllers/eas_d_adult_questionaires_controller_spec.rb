require 'spec_helper'

describe EasDAdultQuestionairesController do

  describe "#new" do
    let(:eas_d_adult_questionaire) { mock }
    before { EasDAdultQuestionaire.stub!(:new => eas_d_adult_questionaire) }

    describe "response" do
      before { get :new }
      subject { response }

      it { should be_success }

      it { should render_template 'new' }
    end

    describe "assigned eas_d_adult_questionaire" do
      before { get :new }
      subject { assigns(:eas_d_adult_questionaire) }

      it { should == eas_d_adult_questionaire }
    end

    describe "behavior" do
      after { get :new }

      it "should create new EasDAdultQuestionaire" do
        EasDAdultQuestionaire.should_receive(:new).and_return(eas_d_adult_questionaire)
      end
    end

    describe "route" do
      subject { { :get => "/eas_d_adult_questionaires/new" } }

      it { should route_to(:controller => "eas_d_adult_questionaires", :action => "new") }
    end
  end

end
