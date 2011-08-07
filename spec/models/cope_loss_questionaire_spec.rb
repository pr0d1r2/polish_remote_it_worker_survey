require 'spec_helper'

describe CopeLossQuestionaire do

  let(:the_class) { CopeLossQuestionaire }
  let(:table_name) { "cope_loss_questionaires" }
  let(:number_of_fields) { 43 }
  let(:number_of_selections) { 4 }
  let(:selection_starts) { 1 }

  it_should_behave_like "questionaire"

  describe "PERMISSION" do
    subject { the_class::PERMISSION }

    its(:size) { should > 0 }
  end

  describe "EXPERIMENTAL" do
    subject { the_class::EXPERIMENTAL }

    its(:size) { should > 0 }
  end

  its(:permission) { should == the_class::PERMISSION }

  its(:experimental) { should == the_class::EXPERIMENTAL }

end
