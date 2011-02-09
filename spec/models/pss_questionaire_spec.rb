require 'spec_helper'

describe PssQuestionaire do

  describe "FIELDS" do
    subject { PssQuestionaire::FIELDS }

    its(:size) { should == 14 }
  end

  describe "TITLE" do
    subject { PssQuestionaire::TITLE }

    its(:size) { should > 0 }
  end

  describe "NAME" do
    subject { PssQuestionaire::NAME }

    its(:size) { should > 0 }
  end

  describe "AUTHOR" do
    subject { PssQuestionaire::AUTHOR }

    its(:size) { should > 0 }
  end

  describe "DESCRIPTION" do
    subject { PssQuestionaire::DESCRIPTION }

    its(:size) { should > 0 }
  end

  its(:title) { should == PssQuestionaire::TITLE }

  its(:name) { should == PssQuestionaire::NAME }

  its(:author) { should == PssQuestionaire::AUTHOR }

  its(:description) { should == PssQuestionaire::DESCRIPTION }

  its(:fields) { should == PssQuestionaire::FIELDS }

end
