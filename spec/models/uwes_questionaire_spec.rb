require 'spec_helper'

describe UwesQuestionaire do

  let(:table_name) { "uwes_questionaires" }
  let(:number_of_fields) { 17 }
  it_should_behave_like "questionaire"

  let(:the_class) { UwesQuestionaire }
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
      [ '0. ' + the_class::SELECTIONS[0], 0 ],
      [ '1. ' + the_class::SELECTIONS[1], 1 ],
      [ '2. ' + the_class::SELECTIONS[2], 2 ],
      [ '3. ' + the_class::SELECTIONS[3], 3 ],
      [ '4. ' + the_class::SELECTIONS[4], 4 ],
      [ '5. ' + the_class::SELECTIONS[5], 5 ],
      [ '6. ' + the_class::SELECTIONS[6], 6 ],
    ] }
  end

end
