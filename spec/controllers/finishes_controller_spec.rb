require 'spec_helper'

describe FinishesController do

  describe "#show" do
    describe "response" do
      before { get :show }
      subject { response }

      it { should be_success }

      it { should render_template 'show' }
    end

    describe "route" do
      subject { { :get => "/finish" } }

      it { should route_to(:controller => "finishes", :action => "show") }
    end
  end

end
