require 'spec_helper'

describe AgreementController do

  describe "#index" do
    describe "response" do
      it_should_behave_like "response_from_default_index_action"
    end

    describe "route" do
      subject { { :get => "/agreement" } }

      it { should route_to(:controller => "agreement", :action => "index") }
    end
  end

end
