require 'spec_helper'

describe CopeLossQuestionaire do

  let(:the_class) { CopeLossQuestionaire }
  let(:number_of_fields) { 43 }
  let(:table_name) { "cope_loss_questionaires" }

  it_should_behave_like "questionaire"

  describe "AUTHOR" do
    subject { the_class::AUTHOR }

    its(:size) { should > 0 }
  end

  describe "PERMISSION" do
    subject { the_class::PERMISSION }

    its(:size) { should > 0 }
  end

  describe "EXPERIMENTAL" do
    subject { the_class::EXPERIMENTAL }

    its(:size) { should > 0 }
  end

  its(:author) { should == the_class::AUTHOR }

  its(:permission) { should == the_class::PERMISSION }

  its(:experimental) { should == the_class::EXPERIMENTAL }

end
