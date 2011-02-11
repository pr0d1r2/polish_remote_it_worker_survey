require 'spec_helper'

describe OlbiQuestionaire do

  describe "FIELDS" do
    subject { OlbiQuestionaire::FIELDS }

    its(:size) { should == 16 }
  end

  describe "TITLE" do
    subject { OlbiQuestionaire::TITLE }

    its(:size) { should > 0 }
  end

  describe "NAME" do
    subject { OlbiQuestionaire::NAME }

    its(:size) { should > 0 }
  end

  describe "DESCRIPTION" do
    subject { OlbiQuestionaire::DESCRIPTION }

    its(:size) { should > 0 }
  end

  describe "class ancestors" do
    subject { OlbiQuestionaire.ancestors }

    it { should include Questionaire }
  end

  describe "class" do
    subject { OlbiQuestionaire }

    its(:table_name) { should =="olbi_questionaires" }
  end

end
