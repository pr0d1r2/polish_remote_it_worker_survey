require 'spec_helper'

describe WelcomeController do

  describe "#index" do
    describe "response" do
      it_should_behave_like "response_from_default_index_action"
    end

    describe "route" do
      subject { { :get => "/welcome" } }

      it { should route_to(:controller => "welcome", :action => "index") }
    end
  end

end
