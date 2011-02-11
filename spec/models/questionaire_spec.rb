require 'spec_helper'

describe Questionaire do

  context "when required constants set" do
    subject do
      unless Object.const_defined?("ExampleQuestionaire")
        class ExampleQuestionaire < Questionaire
          set_table_name "pss_questionaires" # allow to run spec
          TITLE = "title"
          NAME = "name"
          DESCRIPTION = "description"
          FIELDS = "fields"
        end
      end
      ExampleQuestionaire.new
    end

    its(:title) { should == ExampleQuestionaire::TITLE }

    its(:name) { should == ExampleQuestionaire::NAME }

    its(:description) { should == ExampleQuestionaire::DESCRIPTION }

    its(:fields) { should == ExampleQuestionaire::FIELDS }
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

    it { expect { subject.description }.to raise_error(NameError) }

    it { expect { subject.fields }.to raise_error(NameError) }
  end

end
