require 'spec_helper'

describe SspQuestionaire do

  let(:table_name) { "ssp_questionaires" }
  let(:number_of_fields) { 5 }
  it_should_behave_like "questionaire"

  let(:the_class) { SspQuestionaire }
  let(:the_object) { the_class.new }

  describe "AUTHOR" do
    subject { the_class::AUTHOR }

    its(:size) { should > 0 }
  end

  its(:author) { should == the_class::AUTHOR }

  describe "SELECTIONS" do
    subject { the_class::SELECTIONS }

    its(:size) { should == 7 }
  end

  its(:selections) { should == the_class::SELECTIONS }

  describe "#selection_options" do
    subject { the_object.selection_options }

    it { should == [
      [ '1. ' + the_class::SELECTIONS[0], 1 ],
      [ '2. ' + the_class::SELECTIONS[1], 2 ],
      [ '3. ' + the_class::SELECTIONS[2], 3 ],
      [ '4. ' + the_class::SELECTIONS[3], 4 ],
      [ '5. ' + the_class::SELECTIONS[4], 5 ],
      [ '6. ' + the_class::SELECTIONS[5], 6 ],
      [ '7. ' + the_class::SELECTIONS[6], 7 ],
    ] }
  end

end
