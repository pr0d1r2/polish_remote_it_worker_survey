shared_examples_for "response_from_default_index_action" do

  before { get :index }
  subject { response }

  it { should be_success }

  it { should render_template 'index' }

end
