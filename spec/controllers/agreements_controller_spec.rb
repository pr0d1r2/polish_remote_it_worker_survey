require 'spec_helper'

describe AgreementsController do

  describe "#show" do
    describe "response" do
      before { get :show }
      subject { response }

      it { should be_success }

      it { should render_template 'show' }
    end

    describe "route" do
      subject { { :get => "/agreement" } }

      it { should route_to(:controller => "agreements", :action => "show") }
    end
  end

end
