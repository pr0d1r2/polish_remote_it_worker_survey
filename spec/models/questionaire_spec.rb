require 'spec_helper'

describe Questionaire do

  let(:the_class) do
    unless Object.const_defined?("ExampleQuestionaire")
      class ExampleQuestionaire < Questionaire
        set_table_name "pss_questionaires" # allow to run spec
        TITLE = "title"
        NAME = "name"
        AUTHOR = "author"
        DESCRIPTION = "description"
        FIELDS = [ "Field1", "Field2" ],
        SELECTIONS = [ "Option1", "Option2" ]
        SELECTION_STARTS = 1
        attr_accessor :field_1
        attr_accessor :field_2
      end
    end
    ExampleQuestionaire
  end
  let(:the_object) { the_class.new(:identity => Identity.create) }

  context "when required constants set" do
    subject { the_object }

    context "before save" do
      after { subject.save }

      it { subject.should_receive(:correct_empty_fields) }
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

  describe "#correct_empty_fields" do
    before do
      the_object.field_1 = nil
      the_object.field_2 = 1
    end
    subject do
      the_object.send(:correct_empty_fields)
      the_object
    end

    its(:field_1) { should == 9 }

    its(:field_2) { should == 1 }
  end

end
