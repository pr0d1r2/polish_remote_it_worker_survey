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

  its(:title) { should == OlbiQuestionaire::TITLE }

  its(:name) { should == OlbiQuestionaire::NAME }

  its(:description) { should == OlbiQuestionaire::DESCRIPTION }

  its(:fields) { should == OlbiQuestionaire::FIELDS }

end

