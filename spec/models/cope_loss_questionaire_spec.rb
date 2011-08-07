require 'spec_helper'

describe CopeLossQuestionaire do

  let(:the_class) { CopeLossQuestionaire }
  let(:table_name) { "cope_loss_questionaires" }
  let(:number_of_fields) { 43 }
  let(:number_of_selections) { 4 }
  let(:selection_starts) { 1 }

  it_should_behave_like "questionaire"

  describe "POSITIVE_FIELDS" do
    it "should not have fields included in NEGATIVE_FIELDS" do
      the_class::POSITIVE_FIELDS.each do |p|
        raise "Positive field '#{p}' included in NEGATIVE_FIELDS" if the_class::NEGATIVE_FIELDS.include?(p)
      end
    end
  end

  describe "NEGATIVE_FIELDS" do
    it "should not have fields included in POSITIVE_FIELDS" do
      the_class::NEGATIVE_FIELDS.each do |n|
        raise "Negative field '#{n}' included in POSITIVE_FIELDS" if the_class::POSITIVE_FIELDS.include?(n)
      end
    end
  end

  describe "EXACT_POSITIVE_FIELDS" do
    it "should be always in POSITIVE_FIELDS" do
      the_class::EXACT_POSITIVE_FIELDS.flatten.each do |n|
        raise "Exact positive field '#{n}' not included in POSITIVE_FIELDS" unless the_class::POSITIVE_FIELDS.include?(n)
      end
    end

    it "should not be in NEGATIVE_FIELDS" do
      the_class::EXACT_POSITIVE_FIELDS.flatten.each do |n|
        raise "Exact positive field '#{n}' included in NEGATIVE_FIELDS" if the_class::NEGATIVE_FIELDS.include?(n)
      end
    end
  end

  describe "EXACT_NEGATIVE_FIELDS" do
    it "should be always in NEGATIVE_FIELDS" do
      the_class::EXACT_NEGATIVE_FIELDS.flatten.each do |n|
        raise "Exact negative field '#{n}' not included in NEGATIVE_FIELDS" unless the_class::NEGATIVE_FIELDS.include?(n)
      end
    end

    it "should not be in POSITIVE_FIELDS" do
      the_class::EXACT_NEGATIVE_FIELDS.flatten.each do |n|
        raise "Exact negative field '#{n}' included in POSITIVE_FIELDS" if the_class::POSITIVE_FIELDS.include?(n)
      end
    end
  end

  describe "SIMILAR_POSITIVE_FIELDS" do
    it "should be always in POSITIVE_FIELDS" do
      the_class::SIMILAR_POSITIVE_FIELDS.flatten.each do |n|
        raise "Similar positive field '#{n}' not included in POSITIVE_FIELDS" unless the_class::POSITIVE_FIELDS.include?(n)
      end
    end

    it "should not be in NEGATIVE_FIELDS" do
      the_class::SIMILAR_POSITIVE_FIELDS.flatten.each do |n|
        raise "Similar positive field '#{n}' included in NEGATIVE_FIELDS" if the_class::NEGATIVE_FIELDS.include?(n)
      end
    end
  end

  describe "SIMILAR_NEGATIVE_FIELDS" do
    it "should be always in NEGATIVE_FIELDS" do
      the_class::SIMILAR_NEGATIVE_FIELDS.flatten.each do |n|
        raise "Similar negative field '#{n}' not included in NEGATIVE_FIELDS" unless the_class::NEGATIVE_FIELDS.include?(n)
      end
    end

    it "should not be in POSITIVE_FIELDS" do
      the_class::SIMILAR_NEGATIVE_FIELDS.flatten.each do |n|
        raise "Similar negative field '#{n}' included in POSITIVE_FIELDS" if the_class::POSITIVE_FIELDS.include?(n)
      end
    end
  end

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
