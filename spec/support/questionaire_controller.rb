shared_examples_for "questionaire_controller" do

  let(:the_questionaire) { mock }
  let(:the_object_name) { the_model.name.underscore.to_sym }
  let(:the_controller) { the_object_name.to_s.pluralize }
  let(:route_new) { "/#{the_controller}/new" }

  describe "#new" do
    before { the_model.stub!(:new => the_questionaire) }

    describe "response" do
      before { get :new }
      subject { response }

      it { should be_success }

      it { should render_template 'new' }
    end

    describe "assigned the_questionaire" do
      before { get :new }
      subject { assigns(the_object_name) }

      it { should == the_questionaire }
    end

    describe "behavior" do
      after { get :new }

      it "should create new the_model" do
        the_model.should_receive(:new).and_return(the_questionaire)
      end
    end

    describe "route" do
      subject { { :get => route_new } }

      it { should route_to(:controller => the_controller, :action => "new") }
    end
  end

end
