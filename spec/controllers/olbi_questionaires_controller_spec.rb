require 'spec_helper'

describe OlbiQuestionairesController do

  describe "#new" do
    let(:olbi_questionaire) { mock }
    before { OlbiQuestionaire.stub!(:new => olbi_questionaire) }

    describe "response" do
      before { get :new }
      subject { response }

      it { should be_success }

      it { should render_template 'new' }
    end

    describe "assigned olbi_questionaire" do
      before { get :new }
      subject { assigns(:olbi_questionaire) }

      it { should == olbi_questionaire }
    end

    describe "behavior" do
      after { get :new }

      it "should create new OlbiQuestionaire" do
        OlbiQuestionaire.should_receive(:new).and_return(olbi_questionaire)
      end
    end

    describe "route" do
      subject { { :get => "/olbi_questionaires/new" } }

      it { should route_to(:controller => "olbi_questionaires", :action => "new") }
    end
  end

end
