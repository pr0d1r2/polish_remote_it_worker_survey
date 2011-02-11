require 'spec_helper'

describe PssQuestionaire do

  let(:the_class) { PssQuestionaire }
  let(:number_of_fields) { 14 }
  let(:table_name) { "pss_questionaires" }

  it_should_behave_like "questionaire"

  describe "AUTHOR" do
    subject { the_class::AUTHOR }

    its(:size) { should > 0 }
  end

  its(:author) { should == the_class::AUTHOR }

end
