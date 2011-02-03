require 'spec_helper'

describe WelcomeController do

  describe "#index" do
    before { get :index }
    subject { response }

    it { should be_success }

    it { should render_template 'index' }
  end

end
