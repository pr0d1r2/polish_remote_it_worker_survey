require 'spec_helper'

describe Questionaire do

  context "when required constants set" do
    subject do
      unless Object.const_defined?("ExampleQuestionaire")
        class ExampleQuestionaire < Questionaire
          set_table_name "pss_questionaires" # allow to run spec
          TITLE = "title"
          NAME = "name"
          AUTHOR = "author"
          DESCRIPTION = "description"
          FIELDS = "fields"
          SELECTIONS = [ "Option1", "Option2" ]
          SELECTION_STARTS = 1
        end
      end
      ExampleQuestionaire.new
    end

    its(:title) { should == ExampleQuestionaire::TITLE }

    its(:name) { should == ExampleQuestionaire::NAME }

    its(:author) { should == ExampleQuestionaire::AUTHOR }

    its(:description) { should == ExampleQuestionaire::DESCRIPTION }

    its(:fields) { should == ExampleQuestionaire::FIELDS }

    its(:selections) { should == ExampleQuestionaire::SELECTIONS }

    its(:selection_starts) { should == ExampleQuestionaire::SELECTION_STARTS }

    its(:selection_options) { should == [["1. Option1", 1], ["2. Option2", 2]] }
  end

  context "when required constants not set" do
    subject do
      unless Object.const_defined?("BadQuestionaire")
        class BadQuestionaire < Questionaire
          set_table_name "pss_questionaires" # allow to run spec
        end
      end
      BadQuestionaire.new
    end

    it { expect { subject.title }.to raise_error(NameError) }

    it { expect { subject.name }.to raise_error(NameError) }

    it { expect { subject.author }.to raise_error(NameError) }

    it { expect { subject.description }.to raise_error(NameError) }

    it { expect { subject.fields }.to raise_error(NameError) }

    it { expect { subject.selections }.to raise_error(NameError) }

    it { expect { subject.selection_starts }.to raise_error(NameError) }

    it { expect { subject.selection_options }.to raise_error(NameError) }
  end

end
